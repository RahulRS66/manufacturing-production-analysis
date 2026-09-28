-- =========================================================
-- Manufacturing Production, Downtime & Maintenance Analysis
-- SQL Analysis
-- =========================================================

USE ManufacturingAnalysis;


-- =========================================================
-- Data Validation
-- =========================================================

-- Check total number of records
SELECT COUNT(*) AS Total_Records
FROM `manufacturing_production_analysis_cleaned _data`;


-- Preview the dataset
SELECT *
FROM `manufacturing_production_analysis_cleaned _data`
LIMIT 5;


-- =========================================================
-- KPI Analysis by Machine
-- =========================================================

-- Q1: Which machine has the highest total downtime?
SELECT
    Machine,
    SUM(Downtime_Hours) AS Total_Downtime
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Machine
ORDER BY Total_Downtime DESC;


-- Q2: Which machine has the highest number of breakdowns?
SELECT
    Machine,
    SUM(Breakdown_Count) AS Total_Breakdowns
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Machine
ORDER BY Total_Breakdowns DESC;


-- Q3: Which machine has the highest total maintenance hours?
SELECT
    Machine,
    SUM(Maintenance_Hours) AS Total_Maintenance_Hours
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Machine
ORDER BY Total_Maintenance_Hours DESC;


-- Q4: What is the average maintenance time per breakdown?
SELECT
    Machine,
    ROUND(
        SUM(Maintenance_Hours) / NULLIF(SUM(Breakdown_Count), 0),
        2
    ) AS Avg_Maintenance_Per_Breakdown
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Machine
ORDER BY Avg_Maintenance_Per_Breakdown DESC;


-- Q5: Which machine has the highest total production?
SELECT
    Machine,
    SUM(Actual_Production) AS Total_Production
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Machine
ORDER BY Total_Production DESC;


-- Q6: What is the capacity utilization of each machine?
SELECT
    Machine,
    ROUND(
        SUM(Actual_Production) / SUM(Production_Capacity) * 100,
        2
    ) AS Capacity_Utilization
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Machine
ORDER BY Capacity_Utilization DESC;


-- Q7: What is the defect rate of each machine?
SELECT
    Machine,
    ROUND(
        SUM(Defect_Quantity) / SUM(Actual_Production) * 100,
        2
    ) AS Defect_Rate
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Machine
ORDER BY Defect_Rate DESC;


-- =========================================================
-- Shift Analysis
-- =========================================================

-- Q8: Which shift has the highest production?
SELECT
    Shift,
    SUM(Actual_Production) AS Total_Production
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Shift
ORDER BY Total_Production DESC;


-- Q9: Which shift has the highest downtime?
SELECT
    Shift,
    SUM(Downtime_Hours) AS Total_Downtime
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Shift
ORDER BY Total_Downtime DESC;


-- =========================================================
-- End of Analysis
-- =========================================================