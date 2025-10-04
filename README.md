# customer_lifetime_value_sql
SQL-based analysis of Customer Lifetime Value using product sales data.
# Customer Lifetime Value (CLV) Analysis in SQL

This project is my deep dive into understanding how businesses measure the long-term value of their customers — using nothing but SQL and a structured financial formula.

I wanted to go beyond just writing queries. I wanted to connect data with strategy, and explore how metrics like purchase frequency and customer lifespan translate into real business decisions.

---

## What I set out to do

- Calculate **Customer Lifetime Value (CLV)** using SQL  
- Apply a business formula that combines revenue, behavior, and assumptions  
- Practice reproducible analysis and clear communication of results

---

## Metrics I worked with

- **Total Customers** — how many unique buyers we have  
- **Total Transactions** — how often they purchase  
- **Total Revenue** — what they spend  
- **Average Purchase Value** — revenue per transaction  
- **Average Purchase Frequency** — transactions per customer  
- **Average Customer Lifespan** — time between first and last purchase  
- **Gross Margin** — assumed at 60%
- **Customer Acquisition Cost (CAC)** — assumed at 100  

---

## The CLV Formula
-CLV = (Average Purchase Value × Purchase Frequency × Gross Margin × Customer Lifespan) − CAC

My final result: **68,744.39**

This number represents the estimated net value a typical customer brings over their lifecycle — a strong signal of high-margin, high-ticket relationships.

---

## What I learned

- How to translate business logic into SQL  
- How to interpret financial metrics from raw data  
- How to build analysis pipelines that are clear and reproducible  
- How to communicate results with confidence and context

---

## What’s inside

- `clv_analysis.sql` — my full SQL script  
- `README.md` — this overview  
- Optional: screenshots or sample outputs (coming soon)

---

## Let’s connect

If you’ve worked on CLV, financial modeling, or SQL analytics, I’d love to learn from your approach. Feedback is welcome — and collaboration is always exciting.



 
