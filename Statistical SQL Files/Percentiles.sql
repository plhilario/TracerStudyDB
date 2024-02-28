-- SELECT CEIL(COUNT(*) * 0.75) 
-- FROM tracer_study 
-- WHERE salary IS NOT NULL 
-- ORDER BY salary 
-- LIMIT 1;

SELECT salary FROM tracer_study WHERE salary IS NOT NULL ORDER BY salary LIMIT 1 OFFSET 24;
SELECT salary FROM tracer_study WHERE salary IS NOT NULL ORDER BY salary LIMIT 1 OFFSET 48;
SELECT salary FROM tracer_study WHERE salary IS NOT NULL ORDER BY salary LIMIT 1 OFFSET 72;

-- SELECT CEIL(COUNT(*) * 0.75) 
-- FROM tracer_study 
-- WHERE CollegeGPA IS NOT NULL 
-- ORDER BY CollegeGPA 
-- LIMIT 1;

SELECT CollegeGPA FROM tracer_study WHERE CollegeGPA IS NOT NULL ORDER BY CollegeGPA LIMIT 1 OFFSET 30;
SELECT CollegeGPA FROM tracer_study WHERE CollegeGPA IS NOT NULL ORDER BY CollegeGPA LIMIT 1 OFFSET 60;
SELECT CollegeGPA FROM tracer_study WHERE CollegeGPA IS NOT NULL ORDER BY CollegeGPA LIMIT 1 OFFSET 90;