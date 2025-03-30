create database banking_case_pro;

use banking_case_pro;

show tables;

select * from customer;

ALTER TABLE customer
RENAME COLUMN `ï»¿Client ID` TO `Client ID`;

SELECT `Client ID`, Name, `Bank Deposits`
FROM customer
ORDER BY `Bank Deposits` DESC
LIMIT 5;

SELECT `Risk Weighting`, 
       ROUND(AVG(`Bank Loans`), 2) AS Avg_Loan
FROM customer
GROUP BY `Risk Weighting`
ORDER BY `Risk Weighting`;

SELECT `Loyalty Classification`, COUNT(*) AS Client_Count
FROM customer
GROUP BY `Loyalty Classification`
ORDER BY Client_Count DESC;


SELECT `Client ID`, Name, `Credit Card Balance`
FROM customer
WHERE `Credit Card Balance` > 50000
ORDER BY `Credit Card Balance` DESC;


SELECT `BRId`, 
       ROUND(SUM(`Bank Deposits`), 2) AS Total_Deposits
FROM customer
GROUP BY `BRId`
ORDER BY Total_Deposits DESC;
