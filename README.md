# Manufacturing Production, Downtime & Maintenance Analysis

## Project Overview

This project analyzes manufacturing production, machine downtime, maintenance activities, capacity utilization, and product quality.

The goal is to identify machines and operational areas that may be affecting production performance and to provide data-driven recommendations for management.

## Business Problem

Production management wants to understand why production performance is affected by machine downtime and maintenance issues.

Key questions addressed:

- Which machine has the highest downtime?
- Which machine has the most breakdowns?
- Which machine requires the most maintenance?
- Which machine has the lowest capacity utilization?
- Which machine has the highest defect rate?
- Which shift has the highest production?
- Is downtime associated with lower production?

## Tools Used

- Python
- Pandas
- NumPy
- Matplotlib
- SQL (MySQL)
- Microsoft Excel

## Key KPIs

- Total Production
- Total Downtime
- Total Breakdowns
- Total Maintenance Hours
- Capacity Utilization
- Defect Rate
- Average Maintenance Time per Breakdown

## Key Insights

1. STR-02 has the highest downtime and the highest number of breakdowns, making it an important machine for maintenance investigation.

2. STR-02 also has the highest total maintenance hours, indicating a significant maintenance burden.

3. GAL-02 has the highest average maintenance time per breakdown at approximately 1.46 hours.

4. GAL-02 has the lowest capacity utilization at approximately 83.7%.

5. GAL-02 has the highest defect rate at approximately 2.29%, making it an important area for quality investigation.

6. WD-01 has the highest total production at approximately 57,767 units.

7. Shift B has the highest production and the lowest total downtime among the three shifts.

8. Python analysis showed a moderate negative relationship between downtime and actual production (correlation approximately -0.56). This indicates that higher downtime tends to be associated with lower production in this dataset. Correlation does not prove causation.

## Recommendations

- Prioritize STR-02 for preventive maintenance and breakdown analysis.
- Investigate the reasons for longer repair times on GAL-02.
- Investigate GAL-02 operating and quality conditions because of its higher defect rate and lower utilization.
- Review the practices associated with Shift B's production and downtime performance.
- Monitor downtime, breakdowns, utilization, maintenance hours, and defect rate regularly using KPI reporting.

## Project Structure

Data/
    Manufacturing_Production_Analysis_cleaned.csv

Python/
    Manufacturing_Production_Analysis.ipynb

Excel/
    Manufacturing_Production_Analysis.xlsx

SQL/
    Manufacturing_Production_Analysis.sql

## Note

The dataset used in this project is synthetic/sample manufacturing data created for learning and portfolio purposes. It does not represent actual company production data.