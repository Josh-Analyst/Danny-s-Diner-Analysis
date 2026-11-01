# Danny's-Diner-Analysis
SQl Analysis on Danny's Dinner Analysis

### Project Overview
Danny's Diner is a Japanese restaurant established in early 2021 by Danny, who has a passion for Japanese cuisine. The restaurant specialises in three popular menu items: Sushi, Curry, and Ramen.

Despite capturing basic customer transaction data, the restaurant lacks the analytical capabilities to understand its customers' purchasing behaviour, visiting patterns, and menu preferences.

This project uses SQL to analyse Danny's Diner's transactional data and generate actionable business insights that can help improve customer retention, support the loyalty programme, and inform business decisions.

### Business Problem
Danny wants to understand his customers better and make data-driven decisions to improve the restaurant's performance.

However, the available data has not been analysed to reveal important customer behaviour and purchasing patterns.

The analysis focuses on answering key business questions, including:

- How much does each customer spend at the restaurant?

- How frequently do customers visit?

- Which menu items do customers purchase first?

- Which menu items are the most popular?

- What are the individual menu preferences of each customer?
  
The findings will help Danny understand customer preferences, identify loyal customers, and evaluate opportunities to improve the existing customer loyalty programme.

### Project Objectives

The primary objectives of this analysis are to:

1. Analyse customer spending patterns.

2. Identify customer visit frequency and purchasing behaviour.

3. Understand customer preferences across the restaurant's menu.

4. Identify the most popular menu items.

5. Generate customer-level insights to support personalised marketing and loyalty initiatives.

6. Provide actionable recommendations based on the analysis.

### Dataset Description

The analysis uses three relational datasets provided as part of the Danny's Diner SQL Challenge.

### 1. Sales Table

Contains customer transaction records, including the purchase date and menu item purchased.

| Column | Description |
|---|---|
| customer_id | Unique identifier for each customer |
| order_date | Date the customer made a purchase |
| product_id | Identifier of the purchased menu item |

2. Menu Table

Contains information about the restaurant's menu items and their respective prices.

| Column | Description |
|---|---|
| product_id | Unique identifier for each menu item |
| product_name | Name of the menu item |
| price | Price of the menu item |

3. Members Table

Contains information about customers who joined the restaurant's loyalty programme.

| Column | Description |
|---|---|
| customer_id | Unique identifier for each customer |
| join_date | Date the customer joined the loyalty programme |

### Tools and Technologies

- Microsoft SQL Server: Database management and SQL querying.

- SQL Server Management Studio (SSMS): Writing and executing SQL queries.

- GitHub: Project documentation, version control, and sharing results.

### Business Questions and SQL Analysis

The analysis addresses the following five business questions:

1. Customer Spending Analysis

What is the total amount each customer spent at the restaurant?

![Danny's Diner](Danny's%20Dinner%201.png)

2. Customer Visit Frequency

How many days has each customer visited the restaurant?

![Danny's Diner](Danny's%20Dinner%202.png)

3. First Menu Purchase

What was the first item from the menu purchased by each customer?

![Danny's Diner](Danny's%20Dinner%203.png)

4. Most Purchased Menu Item

What is the most purchased item on the menu, and how many times was it purchased by all customers?

![Danny's Diner](Danny's%20Dinner%204.png)

5. Customer Menu Preferences

Which item was the most popular for each customer?

![Danny's Diner](Danny's%20Dinner%205.png)

### SQL Concepts Applied
The project demonstrates practical applications of SQL for relational data analysis, including:

- SELECT statements
- WHERE and ORDER BY
- INNER JOIN
- GROUP BY
- Aggregate functions (SUM, COUNT, MAX)
- Subqueries
- HAVING clauses
- Date functions
- Data aggregation and customer segmentation
- Additional SQL techniques may be incorporated as the analysis progresses.

### Expected Business Value

The analysis is intended to help Danny's Diner:

- Identify high-value customers based on their spending.

- Understand customer engagement and visit frequency.

- Recognise popular menu items and customer preferences.

- Develop more personalised customer loyalty initiatives.

- Make informed decisions about menu offerings and customer retention.

Project Deliverables

The repository contains:

1. SQL scripts used to create and analyse the datasets.

2. Results generated from the business analysis.

### Key findings and business recommendations.

Project documentation explaining the analytical process.

### Conclusion

This project demonstrates how SQL can transform basic transactional records into meaningful business insights.

By analysing customer spending, visit frequency, and menu preferences, Danny's Diner can better understand its customers and make informed decisions to improve customer satisfaction and business performance.

Project Type: SQL Data Analysis

Database: Microsoft SQL Server

Case Study: Danny's Diner – 8 Week SQL Challenge
