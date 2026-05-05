# HR-Analytics-SQL-Project

# Objective
This project analyzes employee data using SQL to understand workforce trends, employee attrition, salary distribution, and departmental performance.

# Tools Used
MySQL
SQL
GitHub

# Dataset
IBM HR Analytics Employee Attrition Dataset

# Source: Kaggle

# Business Questions
Total employee count
Attrition analysis
Department-wise employee distribution
Salary analysis
Employee experience trends

# Key Insights
- Sales department has higher attrition.
- Employees working overtime are more likely to leave.
- Research & Development has highest employee count.
- Higher salaries are seen in managerial roles.

## Sample SQL Query

```sql
SELECT Department,
       COUNT(*) AS attrition_count
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Department;
```

```sql
 SELECT Department,
        COUNT(*) AS Attrition_count 
FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY Department;
```

## Project Screenshots
# ![Attrition Analysis]<img width="1227" height="362" alt="attrition_rate" src="https://github.com/user-attachments/assets/6e2f8506-c4c3-4350-89ba-b53c3a32893d" />



# ![Overtime Attrition]<img width="657" height="445" alt="department_attrition" src="https://github.com/user-attachments/assets/a73486df-d9ed-4be0-bf87-ee0702d5669f" />



# ![Top salary Analysis]<img width="861" height="607" alt="top_salary_analysis" src="https://github.com/user-attachments/assets/8251e52f-ee50-4b8a-a4d1-aec580f76dc5" />


# Conclusion
This project demonstrates SQL skills including filtering, aggregation, grouping, sorting, and analytical querying for HR data analysis.
