# 💊 Real-Time Pharmacy Inventory Management System

> *End-to-End Data Analytics Project | MySQL + Excel | 2020–2025*

---

## 📋 Project Overview

This project builds a complete real-time inventory management solution
for a pharmacy organisation. Using MySQL for data storage and analysis,
and Microsoft Excel for KPI reporting and modelling, the project
transforms raw pharmacy data into actionable business intelligence.

---

## 🎯 Business Problem

Pharmacies face critical operational challenges:
- No real-time visibility into stock levels
- Expired stock accumulation causing financial loss
- No data-driven reorder decisions
- Unknown supplier performance gaps

---

## 📊 Dataset

| Table            | Records | Description                        |
|------------------|---------|------------------------------------|
| medicines        | 50      | Medicine master catalogue          |
| suppliers        | 10      | Supplier master data               |
| inventory        | 100     | Batch-level stock records          |
| sales            | 500     | Sales transactions 2020–2025       |
| purchase_orders  | 200     | Procurement history                |

---

## 🗄️ SQL Analysis — 8 Core Queries

| Query | Name                    | Purpose                              |
|-------|-------------------------|--------------------------------------|
| Q1    | Current Stock Status    | Real-time batch-level stock flags    |
| Q2    | Reorder Alert           | Medicines needing immediate reorder  |
| Q3    | Expiry Alert (90 days)  | Financial risk from near-expiry stock|
| Q4    | Inventory Turnover      | Fast vs slow moving medicines        |
| Q5    | Monthly Sales Trend     | Revenue trend 2020–2025              |
| Q6    | ABC Classification      | Pareto revenue analysis (A/B/C)      |
| Q7    | Supplier Performance    | Fulfillment rate and delay scorecard |
| Q8    | Stockout Frequency      | Chronic vs occasional stockouts      |

---

## 📈 Excel Analysis — 6 Sheets

| Sheet               | Purpose                                      |
|---------------------|----------------------------------------------|
| Raw_Data            | 100-row exported dataset from MySQL          |
| KPI_Summary         | 8 live formula-driven KPI cards              |
| ABC_Analysis        | Medicine classification by revenue           |
| EOQ_Calculator      | Optimal order quantity per medicine          |
| Pivot_Tables        | 5 interactive pivot tables with slicers      |
| Expiry_Stockout     | Colour-coded alert tracker                   |

---

## 🔍 Key Findings

- *Rs 5,91,208* — Total current stock value
- *71 batches* already expired — critical FIFO failure identified
- *15 batches* expiring within 90 days — urgent action required
- *~10 medicines (Class A)* generate *70% of total revenue*
- Most medicines are *over-ordered* vs EOQ recommendation
- Supplier fulfillment rates vary from *60% to 95%* after query fix

---

## 🛠️ Tools Used

![MySQL](https://img.shields.io/badge/MySQL-8.0-blue)
![Excel](https://img.shields.io/badge/Excel-2019%2F365-green)

- *MySQL 8.0* — Database design, 8 SQL queries, master view
- *Microsoft Excel* — KPIs, ABC analysis, EOQ, pivot tables

---


## 👤 Author

*[Balam Singh Rautela]*
Aspiring Data Analyst | MySQL | Excel | Power BI
[]
