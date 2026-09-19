# Uber Ride Revenue & Operations Optimization

## 📌 Project Overview

A business analytics project focused on understanding Uber ride revenue, cancellations, ride-type performance, city-level trends, and peak-period operations.

The project combines **Excel, SQL, Power BI, and Generative AI** to transform ride-level data into actionable operational insights.

---

## 🎯 Business Problem

The objective was to understand:

- How many rides are completed versus cancelled?
- What is the overall cancellation rate?
- Which ride types generate the most revenue?
- Which cities have the highest ride volume?
- When does demand peak?
- Which customer/operational areas require attention?
- How can the business improve ride completion and revenue performance?

---

## 🛠️ Tools & Technologies

- **Excel** — Data preparation and analysis
- **PostgreSQL / SQL** — Business analysis and KPI calculations
- **Power BI** — Interactive dashboard and visualization
- **GenAI** — Insight generation and business recommendations

---

## 📊 Key Performance Indicators

| KPI | Result |
|---|---:|
| Total rides | 10,001 |
| Completed rides | 9,034 |
| Cancelled by rider | 584 |
| Cancelled by driver | 383 |
| Total cancellations | 967 |
| Completion rate | **90.33%** |
| Average fare | **$14.56** |

---

## 🚕 Ride-Type Analysis

The analysis covered:

- UberX
- UberXL
- Black
- Comfort
- Green
- Pool

### Ride Volume

| Ride Type | Rides |
|---|---:|
| UberX | 1,713 |
| XL | 1,701 |
| Pool | 1,686 |
| Green | 1,656 |
| Black | 1,637 |
| Comfort | 1,606 |

### Black Ride Performance

Black rides had:

- **1,637 rides**
- Average fare: **$18.78**
- Revenue: approximately **$30,750**

This indicates a higher-value revenue opportunity within the Black ride category.

---

## 🌎 City-Level Analysis

Total ride volume by city:

| City | Rides |
|---|---:|
| Toronto | 14,340 |
| Los Angeles | 14,310 |
| Chicago | 13,914 |

The analysis also examined cancellation rates across cities.

### Highest observed cancellation rates

- Denver: **11.24%**
- New York: **10.56%**
- Austin: **10.40%**

---

## ⏰ Peak vs Non-Peak Analysis

| Period | Rides |
|---|---:|
| Peak | 3,340 |
| Non-Peak | 6,660 |

Peak-period performance was analyzed to understand demand concentration and operational requirements.

---

## ❌ Cancellation Analysis

Total cancellations:

**967 rides**

Breakdown:

- Rider cancellations: **584**
- Driver cancellations: **383**

This means rider cancellations represented the larger share of observed cancellations.

The analysis was used to identify operational areas where cancellation reduction could potentially improve completed rides and revenue.

---

## 🤖 GenAI-Assisted Analysis

Generative AI was used as an analytical copilot after the underlying metrics were calculated and validated.

GenAI helped with:

- Generating business hypotheses
- Interpreting operational patterns
- Identifying potential business problems
- Developing recommendations
- Translating analytical findings into management-level insights

The numerical analysis remained based on validated Excel, SQL, and Power BI results.

---

## 💡 Key Business Insights

### 1. Strong overall ride completion

The dataset showed a **90.33% completion rate**, indicating that most recorded rides were successfully completed.

### 2. Cancellations remain an operational opportunity

There were **967 cancelled rides**, creating an opportunity to investigate the causes of rider and driver cancellations.

### 3. Premium rides have higher fare value

Black rides generated an average fare of **$18.78**, higher than the overall average fare of **$14.56**.

### 4. Cancellation rates vary by city

Denver, New York, and Austin showed relatively high observed cancellation rates, suggesting that city-level operational factors should be investigated separately.

### 5. Demand is concentrated outside the defined peak period

The dataset recorded **6,660 non-peak rides versus 3,340 peak rides**, providing a basis for comparing operational performance across periods.

---

## 🎯 Business Recommendations

1. **Investigate cancellation drivers**
   - Separate rider and driver cancellation causes.
   - Identify whether specific cities, ride types, or periods have recurring cancellation patterns.

2. **Improve high-cancellation locations**
   - Review operational conditions in cities with higher observed cancellation rates.
   - Test targeted interventions rather than applying the same strategy across all cities.

3. **Protect premium ride performance**
   - Monitor Black ride demand, fares, and completion rates.
   - Identify opportunities to increase premium ride utilization.

4. **Use demand patterns for resource planning**
   - Compare driver availability and cancellation rates between peak and non-peak periods.
   - Adjust operational resources based on observed demand.

---

## 📈 Project Outcome

This project demonstrates an end-to-end business analytics workflow:

**Excel → SQL → Power BI → GenAI → Business Insights → Recommendations**

The objective was not simply to create a dashboard, but to use multiple analytical tools to understand the operational problem and translate data into business actions.

---

## 👨‍💻 Skills Demonstrated

`Excel` `SQL` `PostgreSQL` `Power BI` `GenAI` `Data Analysis` `KPI Analysis` `Business Analysis` `Data Visualization` `Operational Analysis`
