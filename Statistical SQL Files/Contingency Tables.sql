SELECT
	SHSstrand,
		COUNT(CASE WHEN salary >= 0 AND salary < 20000 THEN 1 END) AS salary_0_20k,
		COUNT(CASE WHEN salary >= 20000 AND salary < 40000 THEN 1 END) AS salary_20k_40k,
		COUNT(CASE WHEN salary >= 40000 AND salary < 60000 THEN 1 END) AS salary_40k_60k,
		COUNT(CASE WHEN salary >= 60000 AND salary < 80000 THEN 1 END) AS salary_60k_80k,
		COUNT(CASE WHEN salary >= 80000 THEN 1 END) AS salary_above_80k
FROM
	tracer_study
WHERE
	salary IS NOT NULL
GROUP BY
	SHSstrand;

-- Summary Statistics for Comparing GPAs and SHSStrands
SELECT 
    SHSStrand,
    COUNT(collegeGPA) AS Total_Count,
    AVG(collegeGPA) AS Average_GPA,
    MIN(collegeGPA) AS Min_GPA,
    MAX(collegeGPA) AS Max_GPA,
    STDDEV(collegeGPA) AS Std_Dev_GPA
FROM 
    tracer_study
WHERE 
    collegeGPA IS NOT NULL
GROUP BY 
    SHSStrand;