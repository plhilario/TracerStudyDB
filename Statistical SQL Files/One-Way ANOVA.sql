-- Step 1: Calculate the mean college GPA
SELECT AVG(CollegeGPA) AS mean_collegegpa
FROM tracer_study
WHERE CollegeGPA IS NOT NULL;

-- Step 2: Calculate the mean College GPA for each degree group
SELECT
    Degree,
    AVG(CollegeGPA) AS mean,
    COUNT(*) AS count
FROM
    tracer_study
WHERE
    CollegeGPA IS NOT NULL AND Degree IS NOT NULL
GROUP BY
    Degree;

-- Step 3: Calculate the sum of squares total (SST)
SELECT 
    SUM((CollegeGPA - mean_collegegpa.mean_collegegpa) * (CollegeGPA - mean_collegegpa.mean_collegegpa)) AS SST
FROM 
    tracer_study, (SELECT AVG(CollegeGPA) AS mean_collegegpa FROM tracer_study) AS mean_collegegpa;

-- Step 4: Join the group means with the overall mean and calculate the squared differences
SELECT
    m.Degree,
    POW((m.group_mean_collegeGPA - o.overall_mean_collegeGPA), 2) AS squared_diff
FROM
    (SELECT
        Degree,
        AVG(CollegeGPA) AS group_mean_collegeGPA
    FROM
        tracer_study
    WHERE
        CollegeGPA IS NOT NULL AND Degree IS NOT NULL
    GROUP BY
        Degree) AS m
CROSS JOIN
    (SELECT AVG(CollegeGPA) AS overall_mean_collegeGPA FROM tracer_study WHERE CollegeGPA IS NOT NULL) AS o;

-- Join the squared differences with the counts and perform the multiplication
SELECT
    sq.Degree,
    sq.squared_diff * c.count_per_group AS multiplied_value
FROM
    (SELECT
        m.Degree,
        POW((m.group_mean_collegeGPA - o.overall_mean_collegeGPA), 2) AS squared_diff
    FROM
        (SELECT
            Degree,
            AVG(CollegeGPA) AS group_mean_collegeGPA
        FROM
            tracer_study
        WHERE
            CollegeGPA IS NOT NULL
        GROUP BY
            Degree) AS m
    CROSS JOIN
        (SELECT AVG(CollegeGPA) AS overall_mean_collegeGPA FROM tracer_study WHERE CollegeGPA IS NOT NULL) AS o) AS sq
JOIN
    (SELECT
        Degree,
        COUNT(*) AS count_per_group
    FROM
        tracer_study
    WHERE
        CollegeGPA IS NOT NULL
    GROUP BY
        Degree) AS c
ON
    sq.Degree = c.Degree;

-- Summation of Group Products
SELECT SUM(multiplied_value) AS sum_of_products
FROM (
    SELECT 
        Degree,
        SUM(squared_diff * count_per_group) AS multiplied_value
    FROM (
        SELECT 
            m.Degree,
            POW((m.group_mean_collegeGPA - o.overall_mean_collegeGPA), 2) AS squared_diff,
            c.count_per_group
        FROM (
            SELECT 
                Degree,
                AVG(CollegeGPA) AS group_mean_collegeGPA
            FROM 
                tracer_study
            WHERE 
                CollegeGPA IS NOT NULL
            GROUP BY 
                Degree
        ) AS m
        CROSS JOIN (
            SELECT AVG(CollegeGPA) AS overall_mean_collegeGPA 
            FROM tracer_study 
            WHERE CollegeGPA IS NOT NULL
        ) AS o
        JOIN (
            SELECT 
                Degree,
                COUNT(*) AS count_per_group
            FROM 
                tracer_study
            WHERE 
                CollegeGPA IS NOT NULL
            GROUP BY 
                Degree
        ) AS c ON m.Degree = c.Degree
    ) AS sq
    GROUP BY 
        Degree
) AS result;