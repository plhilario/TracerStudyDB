DROP TEMPORARY TABLE IF EXISTS Observed_Frequencies;
DROP TEMPORARY TABLE IF EXISTS Expected_Frequencies;
DROP TEMPORARY TABLE IF EXISTS Chi_Square_Values;

-- Significance Level: 5%
-- Degrees of Freedom: 96
-- Critical Value: 124.342

-- Step 1: Calculate the observed frequencies
CREATE TEMPORARY TABLE Observed_Frequencies AS
SELECT 
    SHSStrand,
    Degree,
    COUNT(*) AS Observed_Frequency
FROM 
    tracer_study
WHERE
    SHSStrand IS NOT NULL AND Degree IS NOT NULL
GROUP BY 
    SHSStrand, Degree;

-- Step 2: Calculate the expected frequencies (using subquery)
CREATE TEMPORARY TABLE Expected_Frequencies AS
SELECT 
    Observed.SHSStrand,
    Observed.Degree,
    (Observed.Observed_Frequency * Expected.Expected_Frequency) AS Expected_Frequency
FROM (
    SELECT 
        SHSStrand,
        Degree,
        COUNT(*) AS Observed_Frequency
    FROM 
        tracer_study
    WHERE
        SHSStrand IS NOT NULL AND Degree IS NOT NULL
    GROUP BY 
        SHSStrand, Degree
) AS Observed
JOIN (
    -- Subquery to calculate expected frequencies
    SELECT 
        SHSStrand,
        Degree,
        (SUM(Observed_Frequency) / (SELECT SUM(Observed_Frequency) FROM (
            SELECT 
                SHSStrand,
                Degree,
                COUNT(*) AS Observed_Frequency
            FROM 
                tracer_study
            WHERE
                SHSStrand IS NOT NULL AND Degree IS NOT NULL
            GROUP BY 
                SHSStrand, Degree
        ) AS Observed)) AS Expected_Frequency
    FROM (
        SELECT 
            SHSStrand,
            Degree,
            COUNT(*) AS Observed_Frequency
        FROM 
            tracer_study
        WHERE
            SHSStrand IS NOT NULL AND Degree IS NOT NULL
        GROUP BY 
            SHSStrand, Degree
    ) AS Observed
    GROUP BY 
        SHSStrand, Degree
) AS Expected ON Observed.SHSStrand = Expected.SHSStrand AND Observed.Degree = Expected.Degree;

-- Step 3: Compute the chi-square statistic
CREATE TEMPORARY TABLE Chi_Square_Values AS
SELECT 
    Observed.SHSStrand,
    Observed.Degree,
    POWER((Observed.Observed_Frequency - Expected.Expected_Frequency), 2) / Expected.Expected_Frequency AS Chi_Square_Value
FROM 
    Observed_Frequencies AS Observed
JOIN 
    Expected_Frequencies AS Expected ON Observed.SHSStrand = Expected.SHSStrand AND Observed.Degree = Expected.Degree;
    
-- Step 4: Sum the chi-square values
SELECT SUM(Chi_Square_Value) AS Overall_Chi_Square_Statistic
FROM Chi_Square_Values;


-- Step 5: Determine the degrees of freedom
SELECT (COUNT(DISTINCT SHSStrand) - 1) * (COUNT(DISTINCT Degree) - 1) AS Degrees_of_Freedom
FROM Observed_Frequencies;

-- Step 6: Compare the chi-square statistic to the critical value
SELECT
    CASE
        WHEN chi_square_statistic > 124.342 THEN 'Reject null hypothesis'
        ELSE 'Fail to reject null hypothesis'
    END AS conclusion
FROM
    (SELECT SUM((o.observed_frequency - e.expected_frequency) * (o.observed_frequency - e.expected_frequency) / e.expected_frequency) AS chi_square_statistic
     FROM observed_frequencies o
     JOIN expected_frequencies e ON o.degree = e.degree) AS chi_square_value;