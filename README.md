# Myntra Product Catalog Analysis: End-to-End Data Analytics Project

## 📌 Project Overview

This project focuses on analyzing Myntra product catalog data using data analytics, SQL, Excel, machine learning, and data visualization.

The project aims to transform raw product data into meaningful business insights by exploring product pricing, discounts, customer ratings, brand performance, and product categories.

The repository is organized into multiple parts, with each part focusing on a different stage of the data analytics workflow.

## 🎯 Project Objectives

- Clean and preprocess the raw product catalog dataset.
- Perform Exploratory Data Analysis (EDA) to identify patterns and trends.
- Analyze product data using SQL to answer business-related questions.
- Explore product pricing, discounts, ratings, and brand performance.
- Apply machine learning techniques to suitable product-related prediction tasks.
- Perform additional analysis using Microsoft Excel.
- Develop an interactive Power BI dashboard.
- Combine the different stages into an end-to-end data analytics project.

## 🗂️ Project Roadmap

| Part | Project Stage | Status |
|---|---|---|
| Part 1 | Exploratory Data Analysis (EDA) | ✅ Completed |
| Part 2 | SQL Analysis | ✅ Completed |
| Part 3 | Machine Learning | 🔜 Upcoming |
| Part 4 | Excel Analysis | 🔜 Upcoming |
| Part 5 | Power BI Dashboard | 🔜 Upcoming |

## 📊 Part 1: Exploratory Data Analysis (EDA)

### Problem Statement

E-commerce platforms offer products across multiple brands and categories with different prices, discounts, and customer ratings. Analyzing this information can help identify pricing patterns, popular brands, product category trends, and customer rating distributions.

This part explores Myntra product catalog data to understand these patterns and derive meaningful business insights.

### Data Cleaning and Preprocessing

The dataset was prepared for analysis by checking data quality and handling relevant issues found during the cleaning process.

The workflow includes:

- Checking missing values and duplicate records.
- Examining and correcting data types where necessary.
- Identifying inconsistencies in the dataset.
- Analyzing numerical and categorical variables.
- Preparing the dataset for exploratory analysis.

### Exploratory Data Analysis

The analysis includes:

- Distribution of product ratings.
- Distribution of product prices and maximum retail prices (MRP).
- Analysis of discount percentages.
- Identification of top brands by product count.
- Comparison of selling prices and MRP.
- Analysis of ratings and rating counts.
- Comparison of product pricing patterns across gender categories.
- Identification of brands with high average ratings.

### Key Findings

- Discounts are commonly concentrated around the 30–40% range.
- Products with similar discount percentages can have different selling prices.
- Selling price and MRP comparisons reveal differences in product pricing.
- Men’s and women’s products show broadly similar patterns in some price comparisons.
- Rating counts show a right-skewed distribution, with a smaller number of products receiving substantially more ratings.
- Average ratings vary across brands.

### Business Insights

- Comparing MRP, selling price, and discount percentages can help evaluate product pricing strategies.
- Brand-level analysis can help identify brands with strong customer ratings.
- Rating counts provide additional context when interpreting average ratings.
- Category and gender comparisons can help identify differences in product pricing patterns.

## 🗄️ Part 2: SQL Analysis

### Problem Statement

SQL provides a structured way to analyze product catalog data and answer business questions. This part uses MySQL to explore product categories, brands, pricing, discounts, and customer ratings.

### Objectives

- Load the prepared product dataset into a MySQL database.
- Analyze product counts across brands and categories.
- Calculate average, minimum, and maximum product prices.
- Classify products into price segments using `CASE WHEN`.
- Compare brand and category performance.
- Use filtering, grouping, sorting, and aggregate functions.
- Apply subqueries and window functions to answer analytical questions.
- Generate useful insights from SQL query results.

### SQL Skills Practised

- `SELECT`, `WHERE`, and `DISTINCT`
- `ORDER BY` and `LIMIT`
- Aggregate functions such as `COUNT()`, `AVG()`, `MIN()`, and `MAX()`
- `GROUP BY` and `HAVING`
- `CASE WHEN` statements
- Subqueries
- Joins, where required
- Common Table Expressions (CTEs), where applicable
- Window functions, where applicable

### Business Questions

The SQL analysis can explore questions such as:

- Which brands have the highest number of products?
- Which product categories have the highest average prices?
- How are products distributed across price segments?
- Which brands have the highest average customer ratings?
- How do selling prices vary across categories?
- Which products have the highest discount percentages?
- How do customer ratings vary across brands and categories?

*The final questions and findings should match the SQL queries actually implemented in the project.*

## 🛠️ Technology Stack

- **Programming Language:** Python
- **Data Manipulation:** Pandas, NumPy
- **Data Visualization:** Matplotlib, Seaborn
- **Database:** MySQL
- **SQL Environment:** MySQL Workbench
- **Development Environment:** Jupyter Notebook
- **Additional Tools:** Microsoft Excel and Power BI (planned)

## 📁 Project Structure

```text
myntra-product-catalog-analysis/
│
├── README.md
├── requirements.txt
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── Part-1-EDA/
│   ├── README.md
│   ├── Myntra_EDA_Project.ipynb
│   └── Myntra_EDA_Project.pptx
│
├── Part-2-SQL/
│   ├── README.md
│   ├── Myntra_SQL_Project.sql
│   └── Myntra_SQL_Project.pptx
│
├── Part-3-Machine-Learning/
│
├── Part-4-Excel/
│
└── Part-5-Power-BI/
```

*The filenames above are suggested examples. Adjust them to match the actual files you upload. Empty folders will not appear on GitHub until they contain files.*

## 🚀 How to Run the Project

### Part 1: EDA

1. Clone or download this repository.
2. Install the required Python libraries:

   ```bash
   pip install pandas numpy matplotlib seaborn jupyter
   ```

3. Open Jupyter Notebook:

   ```bash
   jupyter notebook
   ```

4. Navigate to `Part-1-EDA`.
5. Open the EDA notebook and run the cells.

### Part 2: SQL Analysis

1. Install MySQL and MySQL Workbench.
2. Open the SQL script inside `Part-2-SQL`.
3. Create or select the appropriate database.
4. Import the prepared product dataset into the corresponding table.
5. Execute the SQL queries.
6. Review the query results and compare them with the documented findings.

*The exact database name, table name, import steps, and SQL filename should match your actual script.*

## 🔮 Future Enhancements

- Complete and document the SQL analysis.
- Apply suitable machine learning techniques to product data.
- Expand the analysis using Excel.
- Develop an interactive Power BI dashboard.
- Combine findings from each stage into a comprehensive project report.
- Improve project documentation with query outputs, charts, and business recommendations.

## 👩‍💻 Author

**Krunali Pujari**

- GitHub: [Krunali23](https://github.com/Krunali23)
- LinkedIn: [Krunali Pujari](https://www.linkedin.com/in/krunali-pujari-ab6355343/)

---

⭐ If you find this project useful, feel free to explore the repository and follow its progress as additional stages are completed.
