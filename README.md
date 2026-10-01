# Customer_behaviour_Analysis
Data Analysis  Project showcasing customer behaviour analysis using Python, SQL and Power BI
# Customer Behaviour Analysis

## Project Overview
An end-to-end data analytics project focused on analyzing customer purchasing patterns and shopping behaviour. The workflow covers data ingestion and cleaning in Python, relational database querying using Microsoft SQL Server, interactive dashboard design in Power BI, detailed reporting, and executive deck creation via Gamma AI.

---

## Repository Structure
* `customer_shopping_behavior.csv` – Raw dataset containing transaction and customer details.
* `Customer_shopping_behaviour.sql` – SQL scripts for database creation, aggregate analysis, and business queries.
* `Customer_shopping_behaviour.pbix` – Power BI report file with interactive visuals and KPI cards.
* `README.md` – Project documentation[cite: 1].

---

## Tools & Technologies
* **Python**: Pandas, NumPy, Matplotlib, Seaborn (Data Loading, Cleaning, & EDA)
* **SQL Server**: T-SQL, Joins, Aggregations, Grouping (Database Querying & Insights)
* **Power BI**: DAX, Data Modeling, Dashboard Design, Interactivity
* **Gamma AI**: AI-assisted Presentation Deck Generation
* **Git & GitHub**: Version Control & Project Hosting

---

## Project Execution Steps

### 1. Data Ingestion & Exploratory Data Analysis (Python)
* Loaded `customer_shopping_behavior.csv` into Jupyter Notebook / VS Code using Pandas[cite: 1].
* Inspected data types, checked for missing values, and treated duplicates.
* Performed summary statistics and distribution checks across key numerical and categorical features.

### 2. SQL Server Analytics
* Created a dedicated database and imported the cleaned customer dataset.
* Executed T-SQL queries to extract key metrics:
  * Customer demographics and purchase frequency.
  * Top-performing product categories and revenue contribution.
  * Payment method distributions and promotional discounts usage.

### 3. Power BI Dashboard Development
* Connected Power BI to the dataset/SQL database.
* Modeled data relationships and established calculated fields using DAX.
* Designed an intuitive interactive dashboard highlighting key performance metrics (KPIs), category breakdowns, and customer segmentation visuals.

### 4. Reporting & Presentation
* Synthesized key business insights into a structured final report.
* Built a polished executive presentation using Gamma AI to showcase findings to stakeholders.

---

## Key Insights & Results
* **Customer Distribution**: Identified high-value customer segments driving revenue.
* **Category Performance**: Pinpointed top revenue-generating categories and cross-selling opportunities.
* **Payment Preferences**: Evaluated popular payment options to assist checkout optimization.

---

## How to Run the Project

1. **Python / EDA**:
   ```bash
   pip install pandas numpy matplotlib seaborn
