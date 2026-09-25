DROP DATABASE IF EXISTS ManufacturingAnalysis;

CREATE DATABASE ManufacturingAnalysis;

USE ManufacturingAnalysis;

CREATE TABLE manufacturing_production_data (
    Date DATE,
    Shift VARCHAR(10),
    Machine VARCHAR(20),
    Product VARCHAR(50),
    Production_Capacity INT,
    Actual_Production INT,
    Downtime_Hours DECIMAL(10,2),
    Breakdown_Count INT,
    Maintenance_Hours DECIMAL(10,2),
    Defect_Quantity INT,
    Operators INT,
    Raw_Material_Quality VARCHAR(20)
);

DROP TABLE manufacturing_production_data;


SELECT COUNT(*) AS Total_Records
FROM manufacturing_production_analysis_cleaned_data;

SELECT COUNT(*) AS Total_Records
FROM `manufacturing_production_analysis_cleaned _data`;

SELECT *
FROM `manufacturing_production_analysis_cleaned _data`
LIMIT 5;

# Which machine has the highest total downtime ?................ 
SELECT
    Machine,
    SUM(Downtime_Hours) AS Total_Downtime
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Machine
ORDER BY Total_Downtime DESC;

### .....Total breakdowns by machine......
SELECT
    Machine,
    SUM(Breakdown_Count) AS Total_Breakdowns
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Machine
ORDER BY Total_Breakdowns DESC;

## Business insight

## STR-02 has the highest number of breakdowns: 284
# STR-02 → 392.32 hrs downtime
# STR-02 → 284 breakdowns

 ## Business insght --  So STR-02 has both high downtime and the highet breakdown frequency. That's a stronger signal that this machine deserves investigation......

## Q3 — Total Maintenance Hours............##
SELECT
    Machine,
    SUM(Maintenance_Hours) AS Total_Maintenance_Hours
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Machine
ORDER BY Total_Maintenance_Hours DESC;

## Business insight
## STR-02 has the highest total maintenance time: 352.83 hours

##  Q4 — Average Maintenance Time per Breakdown............
SELECT
    Machine,
    ROUND(
        SUM(Maintenance_Hours) / NULLIF(SUM(Breakdown_Count), 0),
        2
    ) AS Avg_Maintenance_Per_Breakdown
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Machine
ORDER BY Avg_Maintenance_Per_Breakdown DESC;

##  Business insight
## This gives us a different picture:
## STR-02 → highest total downtime, breakdowns, and maintenance hours.
## GAL-02 → each breakdown takes the longest average time to resolve (1.46 h).
SELECT
    Machine,
    SUM(Actual_Production) AS Total_Production
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Machine
ORDER BY Total_Production DESC;


## Q6 — Capacity Utilization ## (Actual Production ÷ Production Capacity × 100)
SELECT
    Machine,
    SUM(Actual_Production) / SUM(Production_Capacity) * 100 AS Utilization
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Machine;


## Q7 — Defect Rate
SELECT
    Machine,
    SUM(Defect_Quantity) / SUM(Actual_Production) * 100 AS Defect_Rate
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Machine;

### Business insight
# GAL-02 has the highest defect rate: 2.29%.
# Now we have some useful findings:
# STR-02: highest downtime + highest breakdowns + highest maintenance hours
# GAL-02: highest average maintenance time + highest defect rate
# WD-01: highest production
# WD-02: highest capacity utilization

##### ----Q8 — Production by Shift----- 
SELECT
    Shift,
    SUM(Actual_Production) AS Total_Production
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Shift;

##--- Q9 — Downtime by Shift---
SELECT
    Shift,
    SUM(Downtime_Hours) AS Total_Downtime
FROM `manufacturing_production_analysis_cleaned _data`
GROUP BY Shift;

# we're done with the main KPI analysis. ✅
# We've covered:
# Breakdowns by machine ✅
# Maintenance hours ✅
# Average maintenance per breakdown ✅
# Production by machine ✅
# Capacity utilization ✅
# Defect rate ✅
# Production by shift ✅
# Downtime by shift ✅




