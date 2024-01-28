# Data Analytics in Power BI Report

This repository contains a Power BI project aimed at providing actionable insights for informed decision-making through data analytics. The project involves importing and transforming data from various sources to create visualisations and reports.

## Overview

The project utilises Power BI to analyse and visualise data, enabling stakeholders to make informed decisions based on insights derived from the data. The report covers multiple aspects of a business operation, including sales, product performance, customer behaviour, and geographical analysis.

## Milestones

### Milestone 1 & 2: Setting up Development Environment

For Mac or Linux user without native access to Power BI, follow these steps to set up a Windows Virtual Machine (VM) on Azure:

- **Create an Azure Account:** Create an Azure account and set up a free account if necessary.
- **Provision a Windows VM:** Provision a Windows VM (size D2s_v3) on Azure, utilising the £200 free credit from the Azure free trial.
- **Connect to Azure VM:** Connect to the Azure VM using Remote Desktop Protocol (RDP).
- **Install Power BI Desktop:** Download and install Power BI Desktop for Windows from the official Microsoft website.
- **Transform Data:** Connect to the Azure database and transform tables using Power BI Query Editor.

### Milestone 3: Establishing Data Model

Created relationships between tables to form a star schema model, ensuring correct settings and activating relationships as necessary. Additionally, created a separate table named "Measures Table" in the data model view using Power Query Editor.

### Milestone 4, 5, 6, 7, 8, 9: Creating Report Pages

Design various report pages to visualise insights:

#### Customer Detail Page

- **Card Visuals:** Display distinct customers and revenue per customer.
- **Line Chart:** Visualise weekly distinct customers.
- **Donut Chart:** Illustrate the number of customers by country.
- **Top Customer Visual:** Highlight top customers based on specific criteria.

#### Executive Summary Page

- **Card Visuals:** Provide total revenue, total profit, and total orders.
- **Graph:** Present revenue against time.
- **Bar Chart:** Showcase orders against category.
- **KPI Visuals:** Display key performance indicators.
- **Table:** List top 10 products.

#### Product Detail Page

- **Gauge Visuals:** Show selected product categories' revenue, profit, and number of orders against quarterly targets.
- **Area Chart:** Display relative revenue performance of each category over time.
- **Table:** List top 10 products by revenue.
- **Scatter Graph:** Show quantity ordered against profit per item for products in the current context.

#### Stores Map Page

- **Map Visual:** Illustrate the most profitable stores.

#### Cross Filtering and Navigation Page

- **Page for Cross-Filtering:** Implement cross-filtering and navigation within the report.

### Milestone 10: Creating Metrics for External Users

Connect to the Azure database via SQL in Visual Studio Code to query the database and create metrics for users outside the company.

Answered 5 questions from project milsetone using SQL querys

Examples:

```sql
-- How many staff are there in all of the UK stores? 

SELECT SUM(staff_numbers) AS total_staff_uk
FROM dim_store
WHERE country_code = 'GB';
```
```sql
-- Which German store type had the highest revenue for 2022? 

SELECT store_type AS german_store_type,
       SUM(sale_price) AS total_revenue
FROM forquerying2
WHERE country = 'Germany'  
      AND EXTRACT(YEAR FROM dates::timestamp) = 2022  
GROUP BY store_type
ORDER BY total_revenue DESC
LIMIT 1;

```


## Usage

1. **Clone the Repository:** Clone the repository to your local machine.
2. **Open Power BI Project:** Open the Power BI project file (.pbix) using Power BI Desktop.
3. **Explore Reports:** Explore the different report pages and interact with the visuals to gain insights.
4. **Customise the Report:** Customise the report as needed for specific business requirements.

## Contributors

- Phoebe M

## License

This project is licensed under the MIT License.


