# Banking_customer_analytics_pipeline (End-to-End Project)

## Business Context

In the modern banking landscape, customer-centric decision-making is crucial for profitability and long-term retention. Banks handle massive volumes of customer data, which, if analyzed effectively, can help identify high-value clients, reduce risk exposure, personalize offerings, and improve operational efficiency. This project aims to harness customer and transaction data to derive such insights.

---

## Project Objectives

- **Understand Customer Profiles:** Segment customers based on demographic, geographic, and financial behavior indicators.  
- **Perform Financial Product Analysis:** Analyze usage patterns across credit cards, loans, deposits, and other financial instruments.  
- **Identify High-Risk Customers:** Use the Risk Weighting variable to analyze and visualize customer segments with potentially higher default or fraud risks.  
- **Loyalty & Profitability Assessment:** Evaluate the relationship between loyalty classifications and financial engagement.  
- **Support Strategic Decisions:** Enable data-driven marketing, credit allocation, and risk management through dashboards and reports.

---

## Data Description

The dataset includes a comprehensive collection of banking customer records with 25 features, covering:

- **Demographics:** Age, Gender, Nationality, Occupation  
- **Banking Details:** Join Date, Fee Structure, Loyalty Classification  
- **Financial Metrics:** Estimated Income, Savings, Loans, Deposits  
- **Product Holdings:** Credit Cards, Foreign Currency Accounts, Business Lending  
- **Risk Metrics:** Risk Weighting, Properties Owned  

This multidimensional dataset supports both descriptive and inferential analysis.

---

## Tools and Methodologies Used

### Excel
- Used for initial inspection, cleaning, V-lookup for cross validation and enrichment.
- Handled formatting, validation, and ensured the dataset was clean before importing into SQL Server.

### SQL
- Created a dedicated database to store and manage the banking data for the project.
- Inspected the table structure and performed data validation checks after importing from Excel.
- Renamed a column with special characters caused by encoding issues during import, ensuring consistency for analysis.
- Used SQL Server as the central repository to organize and prepare the data for downstream tasks.
- Uncovered high-value clients by analyzing top deposits, segmented customers by loyalty tiers, and evaluated average loan distribution across risk weightings to assess financial engagement and exposure.
- Identified clients with high credit card balances and ranked branches by total deposits to support credit risk management and branch-level performance tracking.
- Enabled data extraction for Python-based analysis and also powered live data connections for Power BI dashboards.

### Python (Jupyter Notebook)
- A live connection was established between Python and the MySQL database using the `mysql-connector-python` package. This allowed direct querying of the `banking_case_pro` database from the Jupyter Notebook, enabling dynamic and up-to-date Exploratory Data Analysis (EDA) on the `customer` table without manual file imports.

**Distribution Analysis:**  
Histograms and boxplots of income, savings, loans to identify trends and outliers.

**Correlation & Relationship Exploration:**  
- Income vs. product ownership (e.g., do higher-income clients use more services?)  
- Loyalty classification vs. deposits (are loyal clients also more profitable?)  
- Risk weight vs. age and demographics

**Data Transformation & Feature Engineering:**  
- Binned income ranges (low/medium/high)  
- Flagged clients with multiple high-risk products  
- Created new metrics like “Total Wealth” (sum of deposits, superannuation, business lending)

**Visualization Tools Used:**  
`pandas`, `matplotlib`, `seaborn` to create:
- Heatmaps  
- Scatter plots  
- Trend lines by client group


### Power BI

**Access the interactive dashboard here:**  
[View Power BI Report](https://app.powerbi.com/view?r=eyJrIjoiN2QyYjEwNGQtOGJlOC00ZjNmLWE2OTktMjE2MTRmNWVlM2Q5IiwidCI6ImM2ZTU0OWIzLTVmNDUtNDAzMi1hYWU5LWQ0MjQ0ZGM1YjJjNCJ9)

- Created a **fully interactive dashboard** connected live to SQL Server (DirectQuery).
- Structured across **four pages**:

### Home – Total clients, loans, deposits, checking/savings/business lending accounts  
![Home Page](https://github.com/Chirudc/banking_customer_analytics_pipeline/blob/main/Banking%20Dashboard%20end%20to%20end%20Project/Power%20BI%20Dashboard/1.png)

### Loan Analysis - Detailed breakdowns of loan amounts by banking relationship, income band, top nationalities, and engagement years 
![Loan Analysis](https://github.com/Chirudc/banking_customer_analytics_pipeline/blob/main/Banking%20Dashboard%20end%20to%20end%20Project/Power%20BI%20Dashboard/2.png)

### Deposit Analysis - Detailed breakdowns of deposit amounts by banking relationship, income band, top nationalities, and Occupations 
![Deposit Analysis](https://github.com/Chirudc/banking_customer_analytics_pipeline/blob/main/Banking%20Dashboard%20end%20to%20end%20Project/Power%20BI%20Dashboard/3.png)

### Summary - Full overview including credit card amounts, foreign currency balances, fees, and engagement metrics  
![Summary Page](https://github.com/Chirudc/banking_customer_analytics_pipeline/blob/main/Banking%20Dashboard%20end%20to%20end%20Project/Power%20BI%20Dashboard/4.png)

- Included dynamic filters for **Joining Year**, **Gender**, **Banking Relationship**, and **Investment Advisor**.
- Delivered user-friendly navigation and clear iconography, enabling executives and analysts to explore key metrics quickly and independently.

---

## Value Delivered

- **Customer Segmentation:** Helped target client-specific marketing strategies  
- **Risk Mitigation:** Identified high-risk profiles for proactive management  
- **Cross-Selling Opportunities:** Uncovered gaps in product adoption  
- **Operational Efficiency:** Delivered real-time performance tracking  
- **Unified Analytics Stack:** From Excel to SQL to Python to Power BI for traceable and reusable data pipelines

---

## Conclusion

This end-to-end banking analytics project demonstrates the synergy of Excel, SQL, Python, and Power BI in building a scalable, data-driven decision-support system. It effectively combines data engineering, statistical analysis, and business intelligence to empower stakeholders with actionable insights for customer growth, risk control, and profitability enhancement.
