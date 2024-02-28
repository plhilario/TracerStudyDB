-- Summary Statistics for Correlation of GPAs and Salaries
SELECT 
    (SUM((collegeGPA - avg_collegeGPA) * (salary - avg_salary)) / 
    (COUNT(*) * STDDEV(collegeGPA) * STDDEV(salary))) AS Correlation
FROM 
    tracer_study
CROSS JOIN 
    (SELECT AVG(collegeGPA) AS avg_collegeGPA, AVG(salary) AS avg_salary FROM tracer_study WHERE collegeGPA IS NOT NULL AND salary IS NOT NULL) AS avg_values
WHERE 
    collegeGPA IS NOT NULL AND salary IS NOT NULL;

-- Correlation of Age & Salaries
SELECT 
    (SUM((age - avg_age) * (salary - avg_salary)) / 
    (COUNT(*) * STDDEV(age) * STDDEV(salary))) AS Correlation
FROM 
    tracer_study
CROSS JOIN 
    (SELECT AVG(age) AS avg_age, AVG(salary) AS avg_salary FROM tracer_study WHERE age IS NOT NULL AND salary IS NOT NULL) AS avg_values
WHERE 
    age IS NOT NULL AND salary IS NOT NULL;

-- Correlation of GraduationYear & CollegeGPA
SELECT 
    (SUM((graduation_year - avg_graduation_year) * (collegeGPA - avg_collegeGPA)) / 
    (COUNT(*) * STDDEV(graduation_year) * STDDEV(collegeGPA))) AS Correlation
FROM 
    tracer_study
CROSS JOIN 
    (SELECT AVG(graduation_year) AS avg_graduation_year, AVG(collegeGPA) AS avg_collegeGPA FROM tracer_study WHERE graduation_year IS NOT NULL AND collegeGPA IS NOT NULL) AS avg_values
WHERE 
    graduation_year IS NOT NULL AND collegeGPA IS NOT NULL;