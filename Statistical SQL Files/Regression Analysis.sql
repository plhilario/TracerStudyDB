-- Step 1: Calculate the F-ratio
SELECT 
    MSB / MSW AS F_ratio
FROM 
    (
        -- Subquery to calculate MSB (Mean Square Between)
        SELECT 
            SSB / DFB AS MSB
        FROM 
            (
                -- Subquery to calculate SSB (Sum of Squares Between)
                SELECT 
                    SUM(squared_diff) AS SSB
                FROM 
                    (
                        -- Subquery to calculate the squared differences between group means and the overall mean
                        SELECT 
                            POW((mean_age - overall_mean_age), 2) AS squared_diff
                        FROM 
                            (
                                -- Subquery to calculate the mean Age for each combination of SHSStrand and Degree
                                SELECT 
                                    SHSStrand,
                                    Degree,
                                    AVG(Age) AS mean_age
                                FROM 
                                    tracer_study
                                WHERE 
                                    Age IS NOT NULL
                                GROUP BY 
                                    SHSStrand, Degree
                            ) AS group_means
                        CROSS JOIN 
                            (
                                -- Subquery to calculate the overall mean Age
                                SELECT 
                                    AVG(Age) AS overall_mean_age
                                FROM 
                                    tracer_study
                                WHERE 
                                    Age IS NOT NULL
                            ) AS overall_mean
                    ) AS squared_diffs
            ) AS SSB,
        (
            -- Subquery to calculate DFB (Degrees of Freedom Between)
            SELECT 
                COUNT(DISTINCT CONCAT(SHSStrand, Degree)) - 1 AS DFB
            FROM 
                tracer_study
            WHERE 
                SHSStrand IS NOT NULL OR Degree IS NOT NULL
        ) AS DFB
    ) AS MSB,
    (
        -- Subquery to calculate MSW (Mean Square Within)
        SELECT 
            SSW / DFW AS MSW
        FROM 
            (
                -- Subquery to calculate SSW (Sum of Squares Within)
                SELECT 
                    SUM(squared_diff) AS SSW
                FROM 
                    (
                        -- Subquery to calculate the squared differences between individual Age values and their group mean
                        SELECT 
                            POW((Age - mean_age), 2) AS squared_diff
                        FROM 
                            tracer_study
                        WHERE 
                            Age IS NOT NULL
                    ) AS squared_diffs
            ) AS SSW,
        (
            -- Subquery to calculate DFW (Degrees of Freedom Within)
            SELECT 
                COUNT(*) - COUNT(DISTINCT SHSStrand) - COUNT(DISTINCT Degree) + COUNT(DISTINCT SHSStrand * Degree) AS DFW
            FROM 
                tracer_study
        ) AS DFW
    ) AS MSW;

-- Step 2: Determine the significance level (α) and find the critical F-value
-- You can use statistical software or an F-distribution table to find the critical F-value
-- Then compare the calculated F-ratio with the critical F-value to determine statistical significance
