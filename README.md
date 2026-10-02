
# IBM HR Analytics: Employee Attrition & Retention Strategy

I built this project to analyze why employees leave a company and what HR can do to keep them. Using Microsoft excel, SQL and Python, I explored a dataset of 1,470 employees to find the biggest drivers of employee turnover and suggested simple, actionable solutions.

---

## Executive Summary

Employee attrition directly impacts organizational stability, talent pipelines, and operating overhead. This project investigates key demographic, financial, and workplace factors driving employee turnover using exploratory data analysis in Python.

### Key Findings.
* **Overall Attrition:** About **16.1%** of total employees left the company.
* **Overtime Impact:** Employees who work overtime leave at a much higher rate **(30.5%)** compared to those who don't **(10.4%)**.
*  **Highest Risk Role:** **Sales Representatives** have the highest turnover rate at 39.8% , driven by competitive market pressure and early-tenure turnover.

---

### Analytical Workflow
1. **Data Ingestion & Integrity Checks:** Standardized schema, handled missing records, and filtered relevant parameters.
2. **Aggregation & Crosstabs:** Utilized `pd.crosstab()` and group summaries to analyze relative rates vs. absolute counts across roles and demographics.
3. **Exploratory Data Analysis:** Built clean, communicative  plots to surface proportions, continuous variable differences, and tenure trends.

---

## Visual Insights

| Overview Rate | Workload Impact | Role Vulnerability |
| :---: | :---: | :---: |
| Baseline Attrition Rate | Attrition Rate by OverTime | High-Risk Job Roles |

---

## Business Recommendations

  1.  **Improve Early Onboarding:**
      Set up 30-60-90 day check-ins during the 3-month probation period to catch early dissatisfaction before new hires quit.
  2.   **Control Overtime:**
      Set strict monthly caps on overtime hours and audit heavy workloads to reduce employee burnout.
  3.  **Review Sales Rep Pay:**
     Sales Reps quit the most. Replacing them takes around 6 months of training and hurts client deals, so reviewing base pay and bonuses is essential.

---


