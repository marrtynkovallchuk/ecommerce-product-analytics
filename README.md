# E-commerce Product Analytics (SQL + Power BI)

Business intelligence & product analytics project built using **Google BigQuery (SQL)** and **Power BI**.

---

## Dashboard Preview

###  Overview
![Overview](/images/Overview.png)

### Conversion Funnel
![FConversion_Funnel](/images/Conversion_Funnel.png)

### Sales by Time
![Sales_by_Time](/images/Sales_by_Time.png)

### Brand Performance
![Brand Performance](/images/Brand_Perfomance.png)

---

## Project Overview

This project demonstrates real-world product analytics workflows by combining **SQL-based data analysis** with **interactive Power BI dashboards**.

Main objectives:

- Analyze user behavior and funnel drop-offs  
- Track revenue, orders, and average order value (AOV)  
- Measure conversion rates at different funnel stages  
- Explore product and brand performance  
- Visualize sales patterns over time  

---

## Dashboard Pages

The Power BI report consists of **4 pages**, reflecting key product analytics insights:

### 1️⃣ Overview
- Total Revenue, Total Orders, Average Order Value (AOV)  
- Total Users & Overall Conversion Rate  
- Event distribution: Views, Carts, Purchases  
- Conversion rates: View → Cart, Cart → Purchase, View → Purchase  
- Brand and Date tables for slicing  

### 2️⃣ Conversion Funnel
- Visual representation of the funnel: View → Cart → Purchase  
- Drop-off rates at each stage  
- Helps identify leakage points and optimize user journey  

### 3️⃣ Sales by Time
- Line charts and bar charts showing:  
  - Purchases & views by hour  
  - Revenue and purchases by weekday  

### 4️⃣ Brand Performance
- Top brands by revenue and purchases  
- Comparison of views vs purchases per brand  
- Identifies high-performing and underperforming products  

---

## Key Metrics

- **Total Revenue** – Sum of all purchase prices  
- **Orders** – Count of purchase events  
- **Average Order Value (AOV)** – Revenue / Orders  
- **Users** – Unique user count  
- **Conversion Rates** – View→Cart, Cart→Purchase, View→Purchase  
- **Events per User / Session** – User engagement metrics  
- **Cart Abandonment Rate** – Users who added to cart but didn’t purchase  
- **Average Session Duration** – Time spent per session  

---

## Dataset

The dataset contains **event-level user interactions** for an e-commerce platform.

### Main fields:

- `event_time` – timestamp of the event  
- `event_type` – `view`, `cart`, `purchase`  
- `user_id` – unique user identifier  
- `user_session` – session ID  
- `product_id`  
- `category_id`, `category_code`  
- `brand`  
- `price`  
- Additional payment fields (if present)  

---

## BigQuery SQL Analysis

All analysis was performed using **BigQuery Standard SQL**.  

### Analysis Blocks

1. **Dataset Overview** – Row counts, unique users, events by type  
2. **Funnel Analysis** – View → Cart → Purchase conversions  
3. **Revenue Metrics** – Total revenue, AOV, ARPU  
4. **Time Analysis** – Purchases by hour & weekday, session metrics  
5. **Brand Analysis** – Top brands by revenue, views, purchases, conversion  
6. **Retention & LTV** – Returning users, user lifetime value distribution  
7. **Cart Abandonment** – Users who added to cart but did not purchase  

All SQL queries are stored in the `/sql` folder.

---

## Business Insights

- Highest drop-off occurs between **View → Cart** stage  
- Conversion rates vary significantly by brand  
- Peak purchase hours occur in the **evening**  
- Users with high LTV represent a **strategic revenue segment**  
- Some brands have high views but low purchases, indicating opportunity  

---

## Repository Contents

- `/sql` – BigQuery SQL queries  
- `Ecommerce_Report.pbix` – Power BI report file  
- Dashboard screenshots (`images/` folder)  
- Dataset file (optional or link to Kaggle)  

---

## Tools Used

- Google BigQuery  
- SQL (CTEs, CASE, COUNTIF, SAFE_DIVIDE, TIMESTAMP functions)  
- Power BI  
- Data modeling & KPI design  

---

## Author

Martyn Kovalchuk  
Junior Data / Product Analyst  
