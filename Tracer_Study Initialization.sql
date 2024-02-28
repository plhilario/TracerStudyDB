CREATE TABLE tracer_study (
    Name VARCHAR(255),
    Age INT,
    SHSStrand VARCHAR(50),
    Graduation_Year INT,
    Educational_Status VARCHAR(50),
    College VARCHAR(100),
    Degree VARCHAR(100),
    Salary DECIMAL(10, 2), -- Assuming salary is in decimal format (e.g., 12345.67)
    CollegeGPA DECIMAL(3, 2), -- Assuming GPA is in decimal format (e.g., 3.45)
    Job_Search_Duration INT, -- Assuming job search duration is in months
    Work_Hours INT -- Within a week
); ENGINE = InnoDB;

INSERT INTO tracer_study (Name, Age, SHSStrand, Graduation_Year, Educational_Status, College, Degree, Salary, CollegeGPA, Job_Search_Duration, Work_Hours)
VALUES
    ('Andrew Taylor', 19, 'STEM', 2020, 'Employed', 'Company P', NULL, 46000.00, 3.8, 2, 45),
    ('Olivia Brown', 18, 'ABM', 2021, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Ethan Clark', 20, 'HUMSS', 2019, 'Employed', 'Company Q', NULL, 38000.00, 3.65, 4, 38),
    ('Isabella Hall', 19, 'STEM', 2020, 'Further Education', 'University D', 'Biology', NULL, 3.9, NULL, NULL),
    ('James Martinez', 18, 'ABM', 2021, 'Employed', 'Company R', NULL, 42000.00, 3.7, 3, 42),
    ('Sophia Young', 20, 'HUMSS', 2019, 'Employed', 'Company S', NULL, 36000.00, 3.75, 5, 37),
    ('William Hernandez', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Mia Lopez', 18, 'ABM', 2021, 'Employed', 'Company T', NULL, 43000.00, 3.55, 2, 40),
    ('Alexander Gonzalez', 20, 'HUMSS', 2019, 'Further Education', 'College E', 'Psychology', NULL, 3.8, NULL, NULL),
    ('Charlotte Perez', 19, 'STEM', 2020, 'Employed', 'Company U', NULL, 47000.00, 3.95, 3, 42),
    ('Benjamin Turner', 18, 'ABM', 2021, 'Employed', 'Company V', NULL, 40000.00, 3.65, 4, 38),
    ('Amelia Moore', 20, 'HUMSS', 2019, 'Employed', 'Company W', NULL, 35000.00, 3.7, 5, 37),
    ('Daniel Ramirez', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Abigail Watson', 18, 'ABM', 2021, 'Employed', 'Company X', NULL, 41000.00, 3.6, 2, 40),
    ('Elijah Brooks', 20, 'HUMSS', 2019, 'Further Education', 'College Y', 'English Literature', NULL, 3.85, NULL, NULL),
    ('Harper Sanders', 19, 'STEM', 2020, 'Employed', 'Company Z', NULL, 48000.00, 4.0, 3, 42),
    ('Ava Reed', 18, 'ABM', 2021, 'Employed', 'Company AA', NULL, 39000.00, 3.7, 4, 38),
    ('Logan Cook', 20, 'HUMSS', 2019, 'Employed', 'Company BB', NULL, 37000.00, 3.75, 5, 37),
    ('Lucas Price', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Sophie Coleman', 18, 'ABM', 2021, 'Employed', 'Company CC', NULL, 42000.00, 3.65, 2, 40),
    ('Jackson Rivera', 20, 'HUMSS', 2019, 'Further Education', 'College DD', 'History', NULL, 3.75, NULL, NULL),
    ('Liam Morgan', 19, 'STEM', 2020, 'Employed', 'Company EE', NULL, 49000.00, 4.0, 3, 42),
    ('Luna Cooper', 18, 'ABM', 2021, 'Employed', 'Company FF', NULL, 41000.00, 3.7, 4, 38),
    ('Layla Richardson', 20, 'HUMSS', 2019, 'Employed', 'Company GG', NULL, 38000.00, 3.8, 5, 37),
    ('Noah Howard', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Emma Bailey', 18, 'ABM', 2021, 'Employed', 'Company HH', NULL, 43000.00, 3.55, 2, 40),
    ('Aiden Nelson', 20, 'HUMSS', 2019, 'Further Education', 'College II', 'Sociology', NULL, 3.8, NULL, NULL),
    ('Madison Cooper', 19, 'STEM', 2020, 'Employed', 'Company JJ', NULL, 50000.00, 4.0, 3, 42),
    ('Chloe Carter', 18, 'ABM', 2021, 'Employed', 'Company KK', NULL, 42000.00, 3.65, 4, 38),
    ('Carter Ward', 20, 'HUMSS', 2019, 'Employed', 'Company LL', NULL, 39000.00, 3.75, 5, 37),
    ('Evelyn Diaz', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Gabriel Powell', 18, 'ABM', 2021, 'Employed', 'Company MM', NULL, 43000.00, 3.6, 2, 40),
    ('Avery Barnes', 20, 'HUMSS', 2019, 'Further Education', 'College NN', 'Philosophy', NULL, 3.85, NULL, NULL),
    ('Scarlett Allen', 19, 'STEM', 2020, 'Employed', 'Company OO', NULL, 51000.00, 4.0, 3, 42),
    ('Leo Gonzalez', 18, 'ABM', 2021, 'Employed', 'Company PP', NULL, 43000.00, 3.7, 4, 38),
    ('Ella Wright', 20, 'HUMSS', 2019, 'Employed', 'Company QQ', NULL, 40000.00, 3.7, 5, 37),
    ('Hudson Torres', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Aria King', 18, 'ABM', 2021, 'Employed', 'Company RR', NULL, 44000.00, 3.55, 2, 40),
    ('Lincoln Foster', 20, 'HUMSS', 2019, 'Further Education', 'College SS', 'Political Science', NULL, 3.8, NULL, NULL),
    ('Hazel Gonzales', 19, 'STEM', 2020, 'Employed', 'Company TT', NULL, 52000.00, 4.0, 3, 42),
    ('Mateo Brooks', 18, 'ABM', 2021, 'Employed', 'Company UU', NULL, 44000.00, 3.7, 4, 38),
    ('Penelope Hayes', 20, 'HUMSS', 2019, 'Employed', 'Company VV', NULL, 41000.00, 3.75, 5, 37),
    ('Zoey Cox', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Michael Peterson', 18, 'ABM', 2021, 'Employed', 'Company WW', NULL, 45000.00, 3.6, 2, 40),
    ('Stella Ramirez', 20, 'HUMSS', 2019, 'Further Education', 'College XX', 'Economics', NULL, 3.85, NULL, NULL),
    ('Samantha Ward', 19, 'STEM', 2020, 'Employed', 'Company YY', NULL, 53000.00, 4.0, 3, 42),
    ('Nolan Russell', 18, 'ABM', 2021, 'Employed', 'Company ZZ', NULL, 45000.00, 3.7, 4, 38),
    ('Lucy Bell', 20, 'HUMSS', 2019, 'Employed', 'Company AAA', NULL, 42000.00, 3.7, 5, 37),
    ('Gabriel Powell', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Natalie Reed', 18, 'ABM', 2021, 'Employed', 'Company BBB', NULL, 46000.00, 3.55, 2, 40),
    ('Mason Cox', 20, 'HUMSS', 2019, 'Further Education', 'College CCC', 'Social Work', NULL, 3.8, NULL, NULL),
    ('Sofia Foster', 19, 'STEM', 2020, 'Employed', 'Company DDD', NULL, 54000.00, 4.0, 3, 42),
    ('Eliana Scott', 18, 'ABM', 2021, 'Employed', 'Company EEE', NULL, 46000.00, 3.7, 4, 38),
    ('Liam Watson', 20, 'HUMSS', 2019, 'Employed', 'Company FFF', NULL, 43000.00, 3.75, 5, 37),
    ('Eva Murphy', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Levi Bell', 18, 'ABM', 2021, 'Employed', 'Company GGG', NULL, 47000.00, 3.6, 2, 40),
    ('Julian Hughes', 20, 'HUMSS', 2019, 'Further Education', 'College HHH', 'Anthropology', NULL, 3.85, NULL, NULL),
    ('Aubrey Gray', 19, 'STEM', 2020, 'Employed', 'Company III', NULL, 55000.00, 4.0, 3, 42),
    ('Adrian Bell', 18, 'ABM', 2021, 'Employed', 'Company JJJ', NULL, 47000.00, 3.7, 4, 38),
    ('Aurora Richardson', 20, 'HUMSS', 2019, 'Employed', 'Company KKK', NULL, 44000.00, 3.75, 5, 37),
    ('Harper Howard', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Eleanor Baker', 18, 'ABM', 2021, 'Employed', 'Company LLL', NULL, 48000.00, 3.55, 2, 40),
    ('Sawyer Scott', 20, 'HUMSS', 2019, 'Further Education', 'College MMM', 'Communication', NULL, 3.8, NULL, NULL),
    ('Nova Nelson', 19, 'STEM', 2020, 'Employed', 'Company NNN', NULL, 56000.00, 4.0, 3, 42),
    ('Grayson Green', 18, 'ABM', 2021, 'Employed', 'Company OOO', NULL, 48000.00, 3.7, 4, 38),
    ('Ruby Peterson', 20, 'HUMSS', 2019, 'Employed', 'Company PPP', NULL, 45000.00, 3.75, 5, 37),
    ('Daniel Diaz', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Liliana Ward', 18, 'ABM', 2021, 'Employed', 'Company QQQ', NULL, 49000.00, 3.6, 2, 40),
    ('Josiah Clark', 20, 'HUMSS', 2019, 'Further Education', 'College RRR', 'Public Administration', NULL, 3.85, NULL, NULL),
    ('Penelope Hayes', 19, 'STEM', 2020, 'Employed', 'Company SSS', NULL, 57000.00, 4.0, 3, 42),
    ('Jaxson Baker', 18, 'ABM', 2021, 'Employed', 'Company TTT', NULL, 49000.00, 3.7, 4, 38),
    ('Makayla Adams', 20, 'HUMSS', 2019, 'Employed', 'Company UUU', NULL, 46000.00, 3.75, 5, 37),
    ('Lucas Ward', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Aria Nelson', 18, 'ABM', 2021, 'Employed', 'Company VVV', NULL, 50000.00, 3.55, 2, 40),
    ('Xavier King', 20, 'HUMSS', 2019, 'Further Education', 'College WWW', 'International Relations', NULL, 3.8, NULL, NULL),
    ('Camila Hayes', 19, 'STEM', 2020, 'Employed', 'Company XXX', NULL, 58000.00, 4.0, 3, 42),
    ('Dominic King', 18, 'ABM', 2021, 'Employed', 'Company YYY', NULL, 50000.00, 3.7, 4, 38),
    ('Elena Ramirez', 20, 'HUMSS', 2019, 'Employed', 'Company ZZZ', NULL, 47000.00, 3.75, 5, 37),
    ('Nathan Ward', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Violet Wright', 18, 'ABM', 2021, 'Employed', 'Company AAAA', NULL, 51000.00, 3.6, 2, 40),
    ('Aaron Hughes', 20, 'HUMSS', 2019, 'Further Education', 'College BBBB', 'Education', NULL, 3.85, NULL, NULL),
    ('Julia Sanders', 19, 'STEM', 2020, 'Employed', 'Company CCCC', NULL, 59000.00, 4.0, 3, 42),
    ('Elias Howard', 18, 'ABM', 2021, 'Employed', 'Company DDDD', NULL, 51000.00, 3.7, 4, 38),
    ('Raelynn Perez', 20, 'HUMSS', 2019, 'Employed', 'Company EEEE', NULL, 48000.00, 3.75, 5, 37),
    ('Avery Scott', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Josephine Allen', 18, 'ABM', 2021, 'Employed', 'Company FFFF', NULL, 52000.00, 3.55, 2, 40),
    ('Tristan Flores', 20, 'HUMSS', 2019, 'Further Education', 'College GGGG', 'Criminal Justice', NULL, 3.8, NULL, NULL),
    ('Hannah Ramirez', 19, 'STEM', 2020, 'Employed', 'Company HHHH', NULL, 60000.00, 4.0, 3, 42),
    ('Nicholas Bell', 18, 'ABM', 2021, 'Employed', 'Company IIII', NULL, 52000.00, 3.7, 4, 38),
    ('Leah Barnes', 20, 'HUMSS', 2019, 'Employed', 'Company JJJJ', NULL, 49000.00, 3.75, 5, 37);

INSERT INTO tracer_study (name, age, shsstrand, graduation_year, educational_status, college, degree, salary, collegegpa, job_search_duration, work_hours) VALUES
    ('Oliver Baker', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Evelyn Cox', 18, 'ABM', 2021, 'Employed', 'Company KKKK', NULL, 53000.00, 3.6, 2, 40),
    ('Jackson Powell', 20, 'HUMSS', 2019, 'Further Education', 'College LLLL', 'Psychology', NULL, 3.85, NULL, NULL),
    ('Madelyn Reed', 19, 'STEM', 2020, 'Employed', 'Company MMMM', NULL, 61000.00, 4.0, 3, 42),
    ('Leo Richardson', 18, 'ABM', 2021, 'Employed', 'Company NNNN', NULL, 53000.00, 3.7, 4, 38),
    ('Isabella Perez', 20, 'HUMSS', 2019, 'Employed', 'Company OOOO', NULL, 50000.00, 3.75, 5, 37),
    ('Jackie Ward', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Emmett King', 18, 'ABM', 2021, 'Employed', 'Company PPPP', NULL, 54000.00, 3.55, 2, 40),
    ('Luna Bell', 20, 'HUMSS', 2019, 'Further Education', 'College QQQQ', 'History', NULL, 3.8, NULL, NULL),
    ('Ryder Flores', 19, 'STEM', 2020, 'Employed', 'Company RRRR', NULL, 62000.00, 4.0, 3, 42),
    ('Sarah Hughes', 18, 'ABM', 2021, 'Employed', 'Company SSSS', NULL, 54000.00, 3.7, 4, 38),
    ('Eli Nelson', 20, 'HUMSS', 2019, 'Employed', 'Company TTTT', NULL, 51000.00, 3.75, 5, 37),
    ('Ellie Scott', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Brody Allen', 18, 'ABM', 2021, 'Employed', 'Company UUUU', NULL, 55000.00, 3.6, 2, 40),
    ('Paisley Clark', 20, 'HUMSS', 2019, 'Further Education', 'College VVVV', 'Sociology', NULL, 3.85, NULL, NULL),
    ('Blake Sanders', 19, 'STEM', 2020, 'Employed', 'Company WWWW', NULL, 63000.00, 4.0, 3, 42),
    ('Lucas Howard', 18, 'ABM', 2021, 'Employed', 'Company XXXX', NULL, 55000.00, 3.7, 4, 38),
    ('Sophie Perez', 20, 'HUMSS', 2019, 'Employed', 'Company YYYY', NULL, 52000.00, 3.75, 5, 37),
    ('Jaxon Ward', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Maya Wright', 18, 'ABM', 2021, 'Employed', 'Company ZZZZ', NULL, 56000.00, 3.55, 2, 40),
    ('Cole Hughes', 20, 'HUMSS', 2019, 'Further Education', 'College AAAA', 'Philosophy', NULL, 3.8, NULL, NULL),
    ('Hailey Barnes', 19, 'STEM', 2020, 'Employed', 'Company BBBB', NULL, 64000.00, 4.0, 3, 42),
    ('Ezra Scott', 18, 'ABM', 2021, 'Employed', 'Company CCCC', NULL, 56000.00, 3.7, 4, 38),
    ('Ivy Ramirez', 20, 'HUMSS', 2019, 'Employed', 'Company DDDD', NULL, 53000.00, 3.75, 5, 37),
    ('Hunter Ward', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Gabriella Wright', 18, 'ABM', 2021, 'Employed', 'Company EEEE', NULL, 57000.00, 3.6, 2, 40),
    ('Austin Hughes', 20, 'HUMSS', 2019, 'Further Education', 'College FFFF', 'Linguistics', NULL, 3.85, NULL, NULL),
    ('Elena Perez', 19, 'STEM', 2020, 'Employed', 'Company GGGG', NULL, 65000.00, 4.0, 3, 42),
    ('Bentley Bell', 18, 'ABM', 2021, 'Employed', 'Company HHHH', NULL, 57000.00, 3.7, 4, 38),
    ('Nevaeh Diaz', 20, 'HUMSS', 2019, 'Employed', 'Company IIII', NULL, 54000.00, 3.75, 5, 37),
    ('Santiago Ward', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Isla Wright', 18, 'ABM', 2021, 'Employed', 'Company JJJJ', NULL, 58000.00, 3.55, 2, 40),
    ('Damian Hughes', 20, 'HUMSS', 2019, 'Further Education', 'College KKKK', 'Literature', NULL, 3.8, NULL, NULL),
    ('Lyla Scott', 19, 'STEM', 2020, 'Employed', 'Company LLLL', NULL, 66000.00, 4.0, 3, 42),
    ('Jesse Perez', 18, 'ABM', 2021, 'Employed', 'Company MMMM', NULL, 58000.00, 3.7, 4, 38),
    ('Kai Ward', 20, 'HUMSS', 2019, 'Employed', 'Company NNNN', NULL, 55000.00, 3.75, 5, 37),
    ('Jade Diaz', 19, 'STEM', 2020, 'Unemployed', NULL, NULL, NULL, NULL, NULL, NULL),
    ('Emerson Wright', 18, 'ABM', 2021, 'Employed', 'Company OOOO', NULL, 59000.00, 3.6, 2, 40),
    ('Emilia Hughes', 20, 'HUMSS', 2019, 'Further Education', 'College PPPP', 'Communication', NULL, 3.85, NULL, NULL),
    ('Oscar Scott', 19, 'STEM', 2020, 'Employed', 'Company QQQQ', NULL, 67000.00, 4.0, 3, 42),
    ('Clara Perez', 18, 'ABM', 2021, 'Employed', 'Company RRRR', NULL, 59000.00, 3.7, 4, 38),
    ('Silas Ward', 20, 'HUMSS', 2019, 'Employed', 'Company SSSS', NULL, 56000.00, 3.75, 5, 37);

-- Disable safe updates
SET SQL_SAFE_UPDATES = 0;

-- Update degree column with random degrees for existing sample data
UPDATE tracer_study
SET Degree = CASE 
                WHEN Name LIKE 'John%' THEN 'Computer Science'
                WHEN Name LIKE 'Jane%' THEN 'Business Administration'
                WHEN Name LIKE 'Michael%' THEN NULL
                WHEN Name LIKE 'Sarah%' THEN 'Engineering'
                WHEN Name LIKE 'David%' THEN 'Finance'
                WHEN Name LIKE 'Emily%' THEN 'Psychology'
                WHEN Name LIKE 'Maria%' THEN NULL
                WHEN Name LIKE 'Daniel%' THEN 'Marketing'
                WHEN Name LIKE 'Jessica%' THEN 'Social Work'
                WHEN Name LIKE 'Gabriel%' THEN 'Biology'
                WHEN Name LIKE 'Madelyn%' THEN 'Communications'
                WHEN Name LIKE 'Adrian%' THEN 'History'
                WHEN Name LIKE 'Skylar%' THEN 'Chemistry'
                WHEN Name LIKE 'Kaylee%' THEN 'Economics'
                WHEN Name LIKE 'Lincoln%' THEN 'Sociology'
                WHEN Name LIKE 'Charlie%' THEN 'Mathematics'
                WHEN Name LIKE 'Bella%' THEN 'English'
                WHEN Name LIKE 'Christopher%' THEN 'Physics'
                WHEN Name LIKE 'Mateo%' THEN 'Art'
                WHEN Name LIKE 'Madison%' THEN 'Anthropology'
                WHEN Name LIKE 'Levi%' THEN 'Geology'
                WHEN Name LIKE 'Peyton%' THEN 'Philosophy'
                WHEN Name LIKE 'Hailey%' THEN 'Nursing'
                WHEN Name LIKE 'Wyatt%' THEN 'Political Science'
                WHEN Name LIKE 'Cameron%' THEN 'Public Health'
                WHEN Name LIKE 'Gabriella%' THEN 'Foreign Language'
                WHEN Name LIKE 'Dominic%' THEN 'Drama'
                WHEN Name LIKE 'Evelyn%' THEN 'Environmental Science'
                WHEN Name LIKE 'Austin%' THEN 'Statistics'
                WHEN Name LIKE 'Chloe%' THEN 'Criminal Justice'
                WHEN Name LIKE 'Sofia%' THEN 'Music'
                WHEN Name LIKE 'Owen%' THEN 'Religious Studies'
                WHEN Name LIKE 'Stella%' THEN 'Business Analytics'
                WHEN Name LIKE 'Aiden%' THEN 'Humanities'
                WHEN Name LIKE 'Hannah%' THEN 'Digital Media'
                WHEN Name LIKE 'Miles%' THEN 'Architecture'
                WHEN Name LIKE 'Violet%' THEN 'Health Sciences'
                WHEN Name LIKE 'Brooklyn%' THEN 'Journalism'
                WHEN Name LIKE 'Hunter%' THEN 'Public Relations'
                WHEN Name LIKE 'Eva%' THEN 'Information Technology'
                WHEN Name LIKE 'Samantha%' THEN 'Psychiatry'
                WHEN Name LIKE 'Nathan%' THEN 'Dentistry'
                WHEN Name LIKE 'Makayla%' THEN 'Veterinary Medicine'
                WHEN Name LIKE 'Adam%' THEN 'Nutrition'
                WHEN Name LIKE 'Eleanor%' THEN 'Physical Therapy'
                WHEN Name LIKE 'Zachary%' THEN 'Optometry'
                WHEN Name LIKE 'Lily%' THEN 'Forensic Science'
                WHEN Name LIKE 'Jackson%' THEN 'Biomedical Engineering'
                WHEN Name LIKE 'David%' THEN 'Microbiology'
                WHEN Name LIKE 'Aria%' THEN 'Kinesiology'
                WHEN Name LIKE 'Christopher%' THEN 'Biochemistry'
                WHEN Name LIKE 'Juliana%' THEN 'Industrial Engineering'
                WHEN Name LIKE 'Jaxon%' THEN 'Neuroscience'
                WHEN Name LIKE 'Alexa%' THEN 'Agriculture'
                WHEN Name LIKE 'Leah%' THEN 'Mathematical Biology'
                WHEN Name LIKE 'Henry%' THEN 'Computer Engineering'
                WHEN Name LIKE 'Julian%' THEN 'Educational Psychology'
                WHEN Name LIKE 'Gabrielle%' THEN 'Digital Marketing'
                WHEN Name LIKE 'Addison%' THEN 'Biotechnology'
                WHEN Name LIKE 'Natalie%' THEN 'Hospitality Management'
                WHEN Name LIKE 'Tyler%' THEN 'Information Systems'
                WHEN Name LIKE 'Autumn%' THEN 'Industrial Design'
                WHEN Name LIKE 'Brody%' THEN 'Fashion Design'
                WHEN Name LIKE 'Molly%' THEN 'Urban Design'
                WHEN Name LIKE 'Destiny%' THEN 'Graphic Design'
                WHEN Name LIKE 'Ian%' THEN 'Interior Design'
                WHEN Name LIKE 'Colton%' THEN 'Game Design'
                WHEN Name LIKE 'Katherine%' THEN 'Software Engineering'
                WHEN Name LIKE 'Serenity%' THEN 'Mechanical Engineering'
                WHEN Name LIKE 'Elias%' THEN 'Electrical Engineering'
                WHEN Name LIKE 'Ivy%' THEN 'Civil Engineering'
                WHEN Name LIKE 'Joel%' THEN 'Chemical Engineering'
                WHEN Name LIKE 'Piper%' THEN 'Environmental Engineering'
                WHEN Name LIKE 'Naomi%' THEN 'Petroleum Engineering'
                WHEN Name LIKE 'Ezra%' THEN 'Industrial Engineering'
                WHEN Name LIKE 'Elena%' THEN 'Materials Engineering'
                WHEN Name LIKE 'Maxwell%' THEN 'Systems Engineering'
                WHEN Name LIKE 'Valeria%' THEN 'Nuclear Engineering'
                WHEN Name LIKE 'Maverick%' THEN 'Geological Engineering'
                WHEN Name LIKE 'Isabel%' THEN 'Aerospace Engineering'
                WHEN Name LIKE 'Brielle%' THEN 'Ocean Engineering'
                WHEN Name LIKE 'Bentley%' THEN 'Construction Engineering'
                WHEN Name LIKE 'Kylie%' THEN 'Mechatronics Engineering'
                WHEN Name LIKE 'Xavier%' THEN 'Biomedical Engineering'
                WHEN Name LIKE 'Aurora%' THEN 'Robotics Engineering'
                WHEN Name LIKE 'Lucas%' THEN 'Renewable Energy Engineering'
                WHEN Name LIKE 'Nova%' THEN 'Telecommunications Engineering'
                WHEN Name LIKE 'Genesis%' THEN 'Water Resources Engineering'
                WHEN Name LIKE 'Elianna%' THEN 'Fire Protection Engineering'
                WHEN Name LIKE 'Silas%' THEN 'Safety Engineering'
                WHEN Name LIKE 'Freya%' THEN 'Marine Engineering'
                WHEN Name LIKE 'Matias%' THEN 'Structural Engineering'
                WHEN Name LIKE 'Annabelle%' THEN 'Transportation Engineering'
                WHEN Name LIKE 'Kinsley%' THEN 'Geotechnical Engineering'
                WHEN Name LIKE 'Morgan%' THEN 'Engineering Management'
                WHEN Name LIKE 'Axel%' THEN 'Industrial Management'
                WHEN Name LIKE 'Adeline%' THEN 'Engineering Physics'
                WHEN Name LIKE 'Theodore%' THEN 'Operations Research'
                WHEN Name LIKE 'Isla%' THEN 'Systems Engineering'
                WHEN Name LIKE 'Adalynn%' THEN 'Engineering Mathematics'
                WHEN Name LIKE 'Finn%' THEN 'Biomedical Sciences'
                WHEN Name LIKE 'Ezekiel%' THEN 'Biological Sciences'
                WHEN Name LIKE 'Camilla%' THEN 'Health Sciences'
                WHEN Name LIKE 'Bennett%' THEN 'Life Sciences'
                WHEN Name LIKE 'Leighton%' THEN 'Physical Sciences'
                WHEN Name LIKE 'Emerson%' THEN 'Earth Sciences'
                WHEN Name LIKE 'Adelaide%' THEN 'Space Sciences'
                WHEN Name LIKE 'Margot%' THEN 'Environmental Sciences'
                WHEN Name LIKE 'Paxton%' THEN 'Chemical Sciences'
                WHEN Name LIKE 'Sawyer%' THEN 'Mathematical Sciences'
                WHEN Name LIKE 'Genevieve%' THEN 'Computer Sciences'
                WHEN Name LIKE 'Iker%' THEN 'Information Sciences'
                WHEN Name LIKE 'June%' THEN 'Data Sciences'
                WHEN Name LIKE 'Harley%' THEN 'Social Sciences'
                WHEN Name LIKE 'Nash%' THEN 'Behavioral Sciences'
                WHEN Name LIKE 'Willa%' THEN 'Cognitive Sciences'
                WHEN Name LIKE 'Lennon%' THEN 'Human Sciences'
                WHEN Name LIKE 'Oakley%' THEN 'Applied Sciences'
                ELSE NULL
            END;

-- Update the college options for the remaining records to include all universities
UPDATE tracer_study
SET College = CASE 
    WHEN College IS NULL THEN
        CASE 
            WHEN RAND() < 0.0625 THEN 'University of the Philippines'
            WHEN RAND() < 0.125 THEN 'Ateneo de Manila University'
            WHEN RAND() < 0.1875 THEN 'De La Salle University Manila'
            WHEN RAND() < 0.25 THEN 'University of Santo Tomas'
            WHEN RAND() < 0.3125 THEN 'Mapúa University'
            WHEN RAND() < 0.375 THEN 'Far Eastern University'
            WHEN RAND() < 0.4375 THEN 'University of the East'
            WHEN RAND() < 0.5 THEN 'Adamson University'
            WHEN RAND() < 0.5625 THEN 'Lyceum of the Philippines University'
            WHEN RAND() < 0.625 THEN 'San Beda University'
            WHEN RAND() < 0.6875 THEN 'Colegio de San Juan de Letran'
            WHEN RAND() < 0.75 THEN 'Adamson University'
            WHEN RAND() < 0.8125 THEN 'Lyceum of the Philippines University'
            WHEN RAND() < 0.875 THEN 'San Beda University'
            ELSE 'Colegio de San Juan de Letran'
        END
END;

-- Update the existing sample data to enroll graduates with a college GPA higher than 5.0 into specified Philippine universities
UPDATE tracer_study
SET College = CASE
    WHEN CollegeGPA > 5.0 THEN
        CASE 
            WHEN RAND() < 0.2 THEN 'University of the Philippines'
            WHEN RAND() < 0.4 THEN 'Ateneo de Manila University'
            WHEN RAND() < 0.6 THEN 'De La Salle University Manila'
            WHEN RAND() < 0.8 THEN 'University of Santo Tomas'
            ELSE 'Mapúa University'
        END
    ELSE College
END;

-- Enable safe updates
SET SQL_SAFE_UPDATES = 1;