# E-commerce Product Analytics (SQL + Power BI)

Business intelligence & product analytics project built using **Google BigQuery (SQL)** and **Power BI**.

---

## Dashboard Preview

### Executive Overview
![Executive Overview](Executive_Overview.png)

### Funnel & User Behavior
![Funnel & User Behavior](Funnel_User_Behavior.png)

### Retention & LTV Analysis
![Retention & LTV](Retention_LTV.png)

### Payments & Transactions
![Payments & Transactions](Payments_Transactions.png)

---

## Project Overview

This project analyzes user behavior, monetization, retention, and payment performance in an e-commerce environment.

The objective is to simulate real-world product analytics workflows:

- Behavioral funnel analysis  
- Revenue & monetization metrics  
- Retention modeling  
- Customer Lifetime Value (LTV) segmentation  
- Payment success & error diagnostics  

The project combines SQL-based data modeling with interactive Power BI dashboards.

---

## Dashboard Pages

The report includes 4 analytical sections:

### 1. Executive Overview
- Total Revenue  
- Total Users  
- Purchases  
- Conversion Rate  
- ARPU  
- KPI cards & revenue trends  

### 2. Funnel & User Behavior
- View → Cart → Purchase funnel  
- Drop-off analysis  
- User activity by hour  
- Purchases by weekday  

### 3. Retention & LTV
- Returning users by day  
- Retention curve  
- Revenue per user  
- LTV distribution buckets  

### 4. Payments & Transactions
- Successful vs Failed transactions  
- Error type breakdown  
- Card brand performance  
- Bank-level analysis  

---

## Key Metrics Used

- Total Revenue  
- Conversion Rate  
- ARPU (Average Revenue Per User)  
- Average Time to Purchase  
- Returning Users  
- Average LTV  
- Transaction Success Rate  

---

## Dataset

The dataset contains event-level user interactions and transaction data.

### Main fields:

- `event_time`  
- `event_type` (view, cart, purchase)  
- `user_id`  
- `order_id`  
- `price`  
- `transaction_status`  
- `payment_number`  
- `card_brand`  
- `card_type`  
- `bank_name`  
- `error_type`  
- `currency`  
- `card_country`  

Each row represents a user interaction within the platform.

---

## BigQuery SQL Analysis

All analytical logic was implemented using **BigQuery Standard SQL**.

### Analysis Blocks

1. **Funnel Analysis** – Event distribution & conversion rate  
2. **Revenue Analysis** – Total revenue, ARPU, hourly & weekday patterns  
3. **Time to Purchase** – Average time from first view to purchase  
4. **Retention Analysis** – Returning users by day since first visit  
5. **LTV Analysis** – Revenue per user, average LTV, distribution buckets  
6. **Payment Analysis** – Transaction success rate, error types, bank & card segmentation  

All queries are stored in the `/sql` folder.

---

## Business Insights

Key findings derived from SQL and dashboard analysis:

- Significant drop-off occurs between view and purchase stages.
- Revenue is concentrated among a relatively small group of high-value users.
- Evening hours generate the highest purchase volume.
- Retention declines sharply after the first day.
- Payment failures contribute to conversion loss.
- High LTV users represent a strategic growth opportunity.

---

## Key Product Risks Identified

The analysis highlights structural risks:

- **Funnel Leakage** – High behavioral drop-off before purchase.  
- **Revenue Concentration Risk** – Dependence on a small segment of users.  
- **Low Retention** – Weak repeat engagement after first visit.  
- **Payment Friction** – Transaction failures impacting conversion rate.  

---

## Strategic Recommendations

Based on the observed patterns:

- Optimize checkout experience to reduce payment failures.  
- Implement retargeting strategies for users who viewed but didn’t purchase.  
- Segment high-LTV users for loyalty or upsell programs.  
- Improve onboarding to increase Day 1 retention.  
- Analyze error types to reduce payment friction.  

---

## Repository Contents

- `/sql` – BigQuery SQL queries  
- `Ecommerce_Report.pbix` – Power BI dashboard file  
- Dashboard screenshots  
- Dataset file (if included)  

---

## Tools Used

- Google BigQuery  
- SQL (CTEs, CASE, SAFE_DIVIDE, COUNTIF, TIMESTAMP functions)  
- Power BI  
- Data modeling & KPI design  

---

## Author

Martyn Kovalchuk  
Junior Data / Product Analyst  
