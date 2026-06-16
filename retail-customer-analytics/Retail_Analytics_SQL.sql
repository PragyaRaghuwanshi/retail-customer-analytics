CREATE SCHEMA retail_data;

/*
====================================================
CAPSTONE PROJECT: RETAIL ANALYTICS
====================================================

Student Name : Pragya Raghuwanshi
Institute    : IIT Guwahati & Simplilearn
Project      : Retail Analytics
Tool Used    : MySQL Workbench
Database     : retail_data
Table Name   : marketing_campaign

Project Objective:
Analyze customer demographics, purchasing behavior,
and campaign responses to identify insights that can
improve marketing effectiveness and customer engagement.

====================================================
*/

-- TASK 1 Calculate Total Number of Customer Encounters
SELECT COUNT(*) AS Total_Customers
FROM marketing_campaign;

-- TASK 2 Identify Top Purchased Products
SELECT
SUM(MntWines) AS Wines,
SUM(MntFruits) AS Fruits,
SUM(MntMeatProducts) AS Meat,
SUM(MntFishProducts) AS Fish,
SUM(MntSweetProducts) AS Sweet,
SUM(MntGoldProds) AS Gold
FROM marketing_campaign;

-- TASK 3 Count Response Values
SELECT Response,
COUNT(*) AS Response_Count
FROM marketing_campaign
GROUP BY Response;

-- TASK 4 Education Distribution
SELECT Education,
COUNT(*) AS Customer_Count
FROM marketing_campaign
GROUP BY Education;

-- TASK 5 Marital Status Distribution
SELECT Marital_Status,
COUNT(*) AS Customer_Count
FROM marketing_campaign
GROUP BY Marital_Status;

-- TASK 6 Average Income of Customers
SELECT AVG(Income) AS Average_Income
FROM marketing_campaign;

-- TASK 7 Promotions Accepted in Each Campaign
SELECT
SUM(AcceptedCmp1) AS Campaign1,
SUM(AcceptedCmp2) AS Campaign2,
SUM(AcceptedCmp3) AS Campaign3,
SUM(AcceptedCmp4) AS Campaign4,
SUM(AcceptedCmp5) AS Campaign5
FROM marketing_campaign;

-- TASK 8 Distribution of Responses to Last Campaign
SELECT Response,
COUNT(*) AS Customer_Count
FROM marketing_campaign
GROUP BY Response;

-- TASK 9 Average Number of Children and Teenagers
SELECT
AVG(Kidhome) AS Avg_Children,
AVG(Teenhome) AS Avg_Teenagers
FROM marketing_campaign;

-- TASK 10 Verify Existing Age Column
SELECT Age
FROM marketing_campaign
LIMIT 10;

-- TASK 11 Create Age_Group Column
ALTER TABLE marketing_campaign
ADD Age_Group VARCHAR(20);

UPDATE marketing_campaign
SET Age_Group =
CASE
    WHEN Age BETWEEN 18 AND 25 THEN '18-25'
    WHEN Age BETWEEN 26 AND 35 THEN '26-35'
    WHEN Age BETWEEN 36 AND 45 THEN '36-45'
    WHEN Age BETWEEN 46 AND 55 THEN '46-55'
    ELSE '56+'
END;

SELECT Age, Age_Group
FROM marketing_campaign
LIMIT 10;

-- TASK 12 Average Website Visits by Age Group
SELECT
    Age_Group,
    AVG(NumWebVisitsMonth) AS Avg_Web_Visits
FROM marketing_campaign
GROUP BY Age_Group
ORDER BY Age_Group; 


/*
====================================================
PROJECT CONCLUSION
====================================================

The Retail Analytics project was successfully completed
using MySQL Workbench. Customer demographics,
purchasing behavior, campaign responses, income
patterns, education levels, marital status distribution,
and age-based segmentation were analyzed.

Key findings indicate that wine products generated the
highest spending, most customers did not respond to
marketing campaigns, and the customer base was largely
concentrated in older age groups. Age segmentation and
website visit analysis provided valuable insights into
customer engagement behavior.

This project demonstrates how SQL can be used to
transform raw customer data into actionable business
insights and support data-driven decision making.

====================================================
END OF PROJECT
====================================================
*/




                                   
                                   
                                   
                                   
                                  








































