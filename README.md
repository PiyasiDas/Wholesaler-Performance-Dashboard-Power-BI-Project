# 📊 Wholesaler Performance Dashboard – Power BI Project

## 🔍 Overview
The **Wholesaler Performance Dashboard** is a Power BI solution developed to analyze and track the performance of wholesalers based on key metrics such as sales, compensation, and bonus eligibility. This project is designed for decision-makers in the **BFSI domain** who need real-time, interactive insights into sales performance across regions and business channels.

---

## 🎯 Objectives

- Monitor individual wholesaler performance
- Visualize trends in sales vs. compensation
- Identify top-performing wholesalers
- Enable detailed monthly drill-through analysis
- Provide interactive filtering by region, line of business, and wholesaler

---

## 🗂️ Data Sources

This dashboard is powered by data from the following tables:

- `Wholesalers` – Contains wholesaler details such as name, region, and line of business
- `SalesTransactions` – Records sales transaction data (amounts, channels)
- `Compensation` – Includes compensation amounts and bonus eligibility status

---

## 🛠️ Features

- ✅ **Wholesaler Summary Table**: View Total Sales, Total Compensation, Region, and Bonus Eligibility
- 📊 **Top 10 Wholesalers**: Bar chart sorted by Total Sales
- 🔁 **Sales vs. Compensation Scatter Plot**: Visual correlation with trendline
- 🌍 **Heatmap**: Sales by Region and Channel using matrix visual
- 🔎 **Drill-through**: Monthly breakdown of sales and compensation for each wholesaler
- 🎛️ **Interactive Slicers**: Filter data by Region, Wholesaler, and Line of Business
- 🧹 **Data Cleanup**: Removed duplicates, handled nulls, standardized fields using Power Query
- ⚙️ **DAX Measures**: Created calculated KPIs for accurate reporting
- 🔄 **Report Automation**: Configured data refresh in Power BI Service

---

## 🧰 Tools & Technologies

- Microsoft Power BI
- DAX (Data Analysis Expressions)
- Power Query
- SQL Server (simulated backend)
- Power BI Service (for sharing and refresh automation)

---

## 📈 Outcome

This dashboard helps business users:
- Gain visibility into wholesaler productivity
- Understand sales and compensation trends
- Make faster, data-driven decisions
- Explore performance metrics through a clean and interactive interface

