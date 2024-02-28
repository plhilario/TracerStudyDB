DROP TEMPORARY TABLE IF EXISTS Observed_Frequencies;
DROP TEMPORARY TABLE IF EXISTS Expected_Frequencies;
DROP TEMPORARY TABLE IF EXISTS Chi_Square_Values;

-- Significance Level: 5%
-- Degrees of Freedom: 9
-- Critical Value: 16.919

-- Step 1: Calculate the observed frequencies
CREATE TEMPORARY TABLE Observed_Frequencies AS
SELECT 
    College,
    Educational_Status,
    COUNT(*) AS Observed_Frequency
FROM 
    tracer_study
WHERE
    College IS NOT NULL AND Educational_Status IS NOT NULL AND CollegeGPA IS NOT NULL
GROUP BY 
    College, Educational_Status;

-- Step 2: Calculate the expected frequencies (using subquery)
CREATE TEMPORARY TABLE Expected_Frequencies AS
SELECT 
    Observed.College,
    Observed.Educational_Status,
    (Observed.Observed_Frequency * Expected.Expected_Frequency) AS Expected_Frequency
FROM (
    SELECT 
        College,
        Educational_Status,
        COUNT(*) AS Observed_Frequency
    FROM 
        tracer_study
    WHERE
        College IS NOT NULL AND Educational_Status IS NOT NULL AND CollegeGPA IS NOT NULL
    GROUP BY 
        College, Educational_Status
) AS Observed
JOIN (
    -- Subquery to calculate expected frequencies
    SELECT 
        College,
        Educational_Status,
        (SUM(Observed_Frequency) / (SELECT SUM(Observed_Frequency) FROM (
            SELECT 
                College,
                Educational_Status,
                COUNT(*) AS Observed_Frequency
            FROM 
                tracer_study
            WHERE
                College IS NOT NULL AND Educational_Status IS NOT NULL AND CollegeGPA IS NOT NULL
            GROUP BY 
                College, Educational_Status
        ) AS Observed)) AS Expected_Frequency
    FROM (
        SELECT 
            College,
            Educational_Status,
            COUNT(*) AS Observed_Frequency
        FROM 
            tracer_study
        WHERE
            College IS NOT NULL AND Educational_Status IS NOT NULL AND CollegeGPA IS NOT NULL
        GROUP BY 
            College, Educational_Status
    ) AS Observed
    GROUP BY 
        College, Educational_Status
) AS Expected ON Observed.College = Expected.College AND Observed.Educational_Status = Expected.Educational_Status;

-- Step 3: Compute the chi-square statistic
CREATE TEMPORARY TABLE Chi_Square_Values AS
SELECT 
    Observed.College,
    Observed.Educational_Status,
    POWER((Observed.Observed_Frequency - Expected.Expected_Frequency), 2) / Expected.Expected_Frequency AS Chi_Square_Value
FROM 
    Observed_Frequencies AS Observed
JOIN 
    Expected_Frequencies AS Expected ON Observed.College = Expected.College AND Observed.Educational_Status = Expected.Educational_Status;
    
-- Step 4: Sum the chi-square values
SELECT SUM(Chi_Square_Value) AS Overall_Chi_Square_Statistic
FROM Chi_Square_Values;


-- Step 5: Determine the degrees of freedom
SELECT (COUNT(DISTINCT College) - 1) * (COUNT(DISTINCT Educational_Status) - 1) AS Degrees_of_Freedom
FROM Observed_Frequencies;

-- Step 6: Compare the chi-square statistic to the critical value
SELECT
    CASE
        WHEN chi_square_statistic > 16.919 THEN 'Reject null hypothesis'
        ELSE 'Fail to reject null hypothesis'
    END AS conclusion
FROM
    (SELECT SUM((o.observed_frequency - e.expected_frequency) * (o.observed_frequency - e.expected_frequency) / e.expected_frequency) AS chi_square_statistic
     FROM observed_frequencies o
     JOIN expected_frequencies e ON o.College = e.College) AS chi_square_value;