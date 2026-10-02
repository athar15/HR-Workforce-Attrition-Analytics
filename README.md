# HR Workforce & Attrition Analytics

## About the Project

This project is about analyzing employee data to understand workforce trends, employee attrition, engagement, and training.

I worked with multiple HR datasets and used Python for data cleaning and initial analysis, MySQL for storing the cleaned data and performing business-related SQL analysis, and Power BI for building an HR analytics dashboard.

The main purpose of the project is to understand where employee attrition is high, how employee engagement differs, and where HR may need to focus on employee training and retention.

## Business Problem

Employee attrition is an important issue for HR teams because frequent employee turnover can affect workforce stability and increase hiring and training requirements.

Through this project, I wanted to answer questions such as:

- How many employees are there?
- What is the overall attrition rate?
- Which departments have higher attrition?
- Which age groups have higher attrition?
- Is employee engagement different between employees who stayed and those who left?
- How does training relate to employee engagement?
- Which departments have lower training completion?

## Dataset

The dataset contains four main HR-related datasets:

- Employee Data
- Employee Engagement Survey Data
- Recruitment Data
- Training and Development Data

The dataset used for this project is a synthetic HR dataset from Kaggle.

## Project Workflow

I followed the following process:

**Raw Data → Python Cleaning & EDA → MySQL → SQL Analysis → Power BI**

### 1. Python

I used Python and pandas to:

- Check the structure of the datasets
- Check missing values and duplicates
- Clean and prepare the data
- Convert date columns into the correct format
- Create useful columns such as Age and Age Group
- Perform initial exploratory data analysis
- Understand important patterns in the data

### 2. MySQL

After cleaning the datasets, I loaded them into MySQL.

I created the `hr_analytics` database and performed SQL analysis to answer different HR business questions.

Some of the analysis included:

- Employee count by department
- Attrition rate
- Department-wise attrition
- Gender-wise attrition
- Employee engagement analysis
- Training completion analysis
- Training duration by department
- Engagement and training-related analysis
<!--
### 3. Power BI

I connected Power BI with the MySQL database and started building an HR analytics dashboard.

The dashboard includes KPIs such as:

- Total Employees
- Total Attrition
- Attrition Rate
- Average Engagement Score
- Training Completion Rate

The dashboard is being designed around the main HR questions rather than just showing individual statistics.
-->
## Tools Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- MySQL
- SQL
- Power BI
- DAX
- Jupyter Notebook

## Project Structure

```text
HR-Workforce-Attrition-Analytics/
│
├── 01 Python/
│   ├── HR_Analytics_EDA.ipynb
│   └── HR_Analytics_Performance.ipynb
│
├── 02 Data/
│   ├── raw_data/
│   └── cleaned_data/
│
├── 03 SQL/
│   └── HR_Business_Analysis.sql
│
├── 
│
└── README.md
```

## What I Learned
Through this project, I got practical experience in working with multiple related datasets and taking a project from raw data to business analysis.
I also learned how to:
- Clean and prepare HR data using Python
- Work with multiple tables
- Write SQL queries based on business questions
- Connect MySQL with Power BI
- Create DAX measures
  
- Design a dashboard around business problems
- Present data in a way that can be useful for HR decision-making

## Current Status
The Python data cleaning, EDA, MySQL analysis, and initial Power BI dashboard work have been completed.
I will continue improving the Power BI dashboard by adding more business-focused visuals and insights.
