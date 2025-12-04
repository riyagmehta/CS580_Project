-- =========================================================
-- CS580 Project - Problem 6
-- Run the 3-line join using the dataset generated in Problem 5
-- =========================================================

SET GLOBAL local_infile = 1;

-- Create and use database
CREATE DATABASE IF NOT EXISTS cs580_project;
USE cs580_project;

-- Drop old tables
DROP TABLE IF EXISTS R1;
DROP TABLE IF EXISTS R2;
DROP TABLE IF EXISTS R3;

-- Create schema
CREATE TABLE R1 (
    A1 INT,
    A2 INT
);

CREATE TABLE R2 (
    A2 INT,
    A3 INT
);

CREATE TABLE R3 (
    A1 INT,
    A3 INT
);

-- =========================================================
-- UPDATE THIS PATH ONLY ↓↓↓
-- This should point to the folder where R1_p5.csv, R2_p5.csv, R3_p5.csv exist
-- =========================================================
-- Example:
-- C:/Users/Pradnya/Downloads/CS580Git/CS580_PROJECT/
-- =========================================================

LOAD DATA LOCAL INFILE 'C:/Users/Pradnya/Downloads/CS580Git/CS580_PROJECT/R1_p5.csv'
INTO TABLE R1
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'C:/Users/Pradnya/Downloads/CS580Git/CS580_PROJECT/R2_p5.csv'
INTO TABLE R2
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'C:/Users/Pradnya/Downloads/CS580Git/CS580_PROJECT/R3_p5.csv'
INTO TABLE R3
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

-- =========================================================
-- 3-LINE JOIN QUERY: q(A1, A2, A3)
-- =========================================================

SELECT *
FROM R1
JOIN R2 ON R1.A2 = R2.A2
JOIN R3 ON R1.A1 = R3.A1 AND R2.A3 = R3.A3;

-- Count output size
SELECT COUNT(*) AS Result_Size
FROM R1
JOIN R2 ON R1.A2 = R2.A2
JOIN R3 ON R1.A1 = R3.A1 AND R2.A3 = R3.A3;

-- =========================================================
-- END OF Problem 6
-- =========================================================
