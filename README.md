
# IBM HR Analytics: Employee Attrition & Retention Strategy

A data-driven exploratory analysis identifying key drivers behind employee turnover within a 1,470-employee workforce, accompanied by strategic, executive-level HR recommendations.

---

## Executive Summary

Employee attrition directly impacts organizational stability, talent pipelines, and operating overhead. This project investigates key demographic, financial, and workplace factors driving employee turnover using exploratory data analysis in Python.

### Key Findings
* **Overall Attrition Rate:** The organization maintains a **16.1%** baseline attrition rate across 1,470 employees.
* **Workload Drivers:** Employees working **OverTime** suffer an attrition rate exceeding **30%**, compared to ~10% for non-overtime staff.
* **Role Vulnerability:** **Sales Representatives** experience the highest attrition by percentage (~39.8%), driven by competitive market pressure and early-tenure turnover.
* **Compensation Gap:** Departing employees earn an average of **$4,800/month**, compared to **$6,800/month** for retained staff—a $2,000 monthly compensation deficit.
* **Tenure Risk Window:** Attrition heavily peaks within **Year 1** of tenure (59 total departures) before dropping substantially after Year 5.

---


### Analytical Workflow
1. **Data Ingestion & Integrity Checks:** Standardized schema, handled missing records, and filtered relevant parameters.
2. **Aggregation & Crosstabs:** Utilized `pd.crosstab()` and group summaries to analyze relative rates vs. absolute counts across roles and demographics.
3. **Exploratory Data Analysis:** Built clean, communicative Matplotlib plots to surface proportions, continuous variable differences, and tenure trends.

---

## Visual Insights

| Overview Rate | Workload Impact | Role Vulnerability |
| :---: | :---: | :---: |
| Baseline Attrition Rate | Attrition Rate by OverTime | High-Risk Job Roles |

---

## Business Recommendations

1. **Structured Early-Tenure Retention (0–1 Year):**
   * Implement a formal 30-60-90 day onboarding framework with dedicated mentorship to catch early friction before Year 1 departures.
2. **Workload Auditing & OverTime Caps:**
   * Introduce workload auditing and enforce strict monthly overtime caps to mitigate acute burnout risks.
3. **Sales Representative Compensation Overhaul:**
   * Re-evaluate base salary and commission structures for Sales Representatives to align with market benchmarks, mitigating the high cost of replacing sales talent (~6 months onboarding overhead).

---


