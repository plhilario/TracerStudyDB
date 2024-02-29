-- Simple Linear Regression Analysis for GPA and Salary
-- Calculate the regression coefficients
SELECT
    n,
    sum_independent_variable,
    sum_dependent_variable,
    sum_product,
    sum_squared_independent_variable,
    -- Calculate the slope (beta)
    (n * sum_product - sum_independent_variable * sum_dependent_variable) / (n * sum_squared_independent_variable - sum_independent_variable * sum_independent_variable) AS slope,
    -- Calculate the intercept (alpha)
    (sum_dependent_variable * sum_squared_independent_variable - sum_independent_variable * sum_product) / (n * sum_squared_independent_variable - sum_independent_variable * sum_independent_variable) AS intercept
FROM (
    SELECT
        COUNT(*) AS n,
        SUM(CollegeGPA) AS sum_independent_variable,
        SUM(Salary) AS sum_dependent_variable,
        SUM(CollegeGPA * Salary) AS sum_product,
        SUM(CollegeGPA * CollegeGPA) AS sum_squared_independent_variable
	FROM
		Tracer_Study
	WHERE
		CollegeGPA IS NOT NULL AND Salary IS NOT NULL
) AS summation_values;


-- Multiple Regression ([Graduation_Year, Age] & Salary)
-- Step 1: Calculate the coefficients (slope) and intercept (alpha)
SELECT
    (n * sum_product_gy_salary - sum_graduation_year * sum_dependent_variable) / (n * sum_squared_graduation_year - sum_graduation_year * sum_graduation_year) AS beta_graduation_year,
    (n * sum_product_age_salary - sum_age * sum_dependent_variable) / (n * sum_squared_age - sum_age * sum_age) AS beta_age,
    (sum_dependent_variable - ((n * sum_product_gy_salary - sum_graduation_year * sum_dependent_variable) / (n * sum_squared_graduation_year - sum_graduation_year * sum_graduation_year)) * sum_graduation_year
     - ((n * sum_product_age_salary - sum_age * sum_dependent_variable) / (n * sum_squared_age - sum_age * sum_age)) * sum_age) / n AS alpha
FROM
    (
    SELECT
        COUNT(*) AS n,
        SUM(Graduation_Year) AS sum_graduation_year,
        SUM(Age) AS sum_age,
        SUM(Salary) AS sum_dependent_variable,
        SUM(Graduation_Year * Salary) AS sum_product_gy_salary,
        SUM(Age * Salary) AS sum_product_age_salary,
        SUM(Graduation_Year * Graduation_Year) AS sum_squared_graduation_year,
        SUM(Age * Age) AS sum_squared_age
    FROM
        Tracer_study
    ) AS summations;