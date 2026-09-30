# Manufacturing Production, Downtime & Maintenance Analysis

## 📌 Project Overview

This project analyzes manufacturing production performance, machine downtime, breakdowns, maintenance activities, capacity utilization, and product quality.

The objective is to identify operational areas that may be affecting production performance and provide data-driven insights that can support maintenance, production, and quality improvement decisions.

The project uses a synthetic manufacturing dataset created for learning and portfolio purposes.

---

## 🎯 Business Problem

Manufacturing management wants to understand how machine downtime, breakdowns, maintenance activities, and quality issues affect overall production performance.

### Key Business Questions

* Which machine has the highest downtime?
* Which machine has the most breakdowns?
* Which machine requires the most maintenance?
* Which machine has the lowest capacity utilization?
* Which machine has the highest defect rate?
* Which shift has the highest production?
* Is higher downtime associated with lower production?
* Which machines should be prioritized for maintenance and quality investigation?

---

## 📊 Dataset

The dataset contains approximately **720 manufacturing production records** covering:

* **6 Machines**
* **3 Shifts**
* **4 Products**
* Production capacity and actual production
* Downtime hours
* Breakdown count
* Maintenance hours
* Defect quantity
* Operator count
* Raw material quality

### Main Dataset Columns

| Column               | Description                           |
| -------------------- | ------------------------------------- |
| Date                 | Production date                       |
| Shift                | A, B, or C                            |
| Machine              | Manufacturing machine                 |
| Product              | Manufactured product                  |
| Production_Capacity  | Planned/available production capacity |
| Actual_Production    | Actual production achieved            |
| Downtime_Hours       | Machine downtime                      |
| Breakdown_Count      | Number of breakdowns                  |
| Maintenance_Hours    | Maintenance time                      |
| Defect_Quantity      | Quantity of defective output          |
| Operators            | Number of operators                   |
| Raw_Material_Quality | Raw material quality category         |

---

## 🛠️ Tools & Technologies

* **Python**

  * Pandas
  * NumPy
  * Matplotlib
* **SQL**

  * MySQL
* **Microsoft Excel**
* **Power BI**
* **Git & GitHub**

---

## 📈 Key KPIs

The analysis focuses on the following manufacturing KPIs:

* Total Production
* Total Downtime
* Total Breakdowns
* Total Maintenance Hours
* Capacity Utilization
* Defect Rate
* Average Maintenance Time per Breakdown

### KPI Formulas

**Capacity Utilization**

`Actual Production ÷ Production Capacity × 100`

**Defect Rate**

`Total Defect Quantity ÷ Total Actual Production × 100`

**Average Maintenance Time per Breakdown**

`Total Maintenance Hours ÷ Total Breakdown Count`

---

## 🔍 Key Insights

### Machine Performance

1. **STR-02** recorded the highest total downtime at approximately **395.5 hours**.

2. **STR-02** also recorded the highest number of breakdowns with **290 breakdowns**.

3. **STR-02** had the highest total maintenance hours at approximately **356.1 hours**, indicating a significant maintenance workload.

4. **GAL-02** had the highest average maintenance time per breakdown at approximately **1.46 hours per breakdown**.

5. **GAL-02** recorded the lowest capacity utilization among the machines at approximately **83.7%**.

6. **WD-01** recorded the highest total actual production at approximately **57,767 units**.

### Quality Performance

7. **GAL-02** recorded the highest defect rate at approximately **2.29%**, making it an important area for further quality investigation.

### Downtime & Production Relationship

8. Python analysis showed a **moderate negative correlation of approximately -0.56 between downtime and actual production**.

This indicates that, within this dataset, higher downtime tends to be associated with lower actual production.

> Correlation indicates an association and does not by itself prove that downtime directly causes lower production.

### Shift Performance

9. **Shift B** recorded the highest production and the lowest total downtime among the three shifts.

---

## 💡 Recommendations

Based on the analysis:

* Prioritize **STR-02** for preventive maintenance and detailed breakdown/root-cause analysis.
* Investigate the reasons for longer repair times associated with **GAL-02**.
* Investigate **GAL-02** operating and quality conditions due to its combination of lower utilization and higher defect rate.
* Review the operating practices associated with **Shift B** to understand factors contributing to its production and downtime performance.
* Establish regular KPI monitoring for downtime, breakdowns, maintenance hours, utilization, production, and defect rate.
* Use trend analysis and root-cause investigation before making operational changes.

---

## 📊 Power BI Dashboard

The project includes an interactive Power BI dashboard for monitoring manufacturing production, downtime, maintenance, utilization, and quality KPIs.

**Dashboard file:**

`Power BI/Manufacturing_Production_Maintenance_Dashboard.pbix`

---

## 📁 Project Structure

```text
Manufacturing_Production_Analysis/
│
├── Data/
│   ├── manufacturing_production_data.csv
│   └── manufacturing_production_data.xlsx
│
├── PYTHON/
│   └── Manufacturing_Production_Analysis.ipynb
│
├── EXCEL/
│   └── Manufacturing_Production_Analysis.xlsx
│
├── SQL/
│   └── Manufacturing_Production_Analysis.sql
│
├── Power BI/
│   └── Manufacturing_Production_Maintenance_Dashboard.pbix
│
└── README.md
```

---

## 🔄 Analysis Workflow

```text
Raw Manufacturing Data
        ↓
Data Cleaning & Preparation
        ↓
Exploratory Data Analysis
        ↓
Python / Pandas Analysis
        ↓
SQL Analysis
        ↓
Excel KPI Analysis
        ↓
Power BI Dashboard
        ↓
Business Insights & Recommendations
```

---

## 📚 Skills Demonstrated

This project demonstrates practical experience with:

* Data Cleaning
* Exploratory Data Analysis
* Python & Pandas
* SQL Querying
* Excel Analysis
* KPI Development
* Data Visualization
* Power BI Dashboard Development
* Manufacturing Analytics
* Maintenance Analytics
* Production Performance Analysis
* Quality Analysis
* Business Insight Generation

---

## ⚠️ Disclaimer

The dataset used in this project is **synthetic/sample manufacturing data created for learning and portfolio purposes**.

It does not represent actual production data from any company.
