USE hr_analytics;

SELECT * FROM hr_data
LIMIT 10;

ALTER TABLE hr_data
CHANGE COLUMN `ï»¿Age` Age INT;

DESCRIBE hr_data;

SELECT * FROM hr_data
LIMIT 10;