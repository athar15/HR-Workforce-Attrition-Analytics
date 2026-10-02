use hr_analytics;
select * from employee_data;

# HR Overview

# 1 Total employees
select count(*) as total_employee
from employee_data;

# 2 Attrition rate
select round((sum(Attrition)/count(*))*100 ,2 ) as attrition_rate
from employee_data;

# 3 Employees by department
select departmentType, count(*) as total_employee
from employee_data
group by departmenttype
order by total_employee desc;

# 4 Employees by business unit
select businessunit, count(*) as total_employee
from employee_data
group by BusinessUnit
order by total_employee desc;

#  Attrition Analysis

# 5 Attrition by department
select departmentType, round((sum(Attrition)/count(*))*100 ,2 ) as attrition_rate
from employee_data
group by departmenttype
order by attrition_rate desc;

# 6 Attrition by age group
select Age_group, round((sum(Attrition)/count(*))*100 ,2 ) as attrition_rate
from employee_data
group by Age_group
order by attrition_rate desc;

# 7 Attrition by gender
select GenderCode, round((sum(Attrition)/count(*))*100 ,2 ) as attrition_rate
from employee_data
group by genderCode
order by attrition_rate desc;

# 8 Attrition by jobfunction
select JobFunctionDescription, sum(Attrition ) as attrition_rate
from employee_data
group by JobFunctionDescription
order by attrition_rate desc;

#  Employee Engagement (JOIN)

# 9 Average engagement by department
select e.departmenttype, round(avg(eg.engagement_score),2) as avg_engagement
from employee_data e 
join engagement_data eg
using(employee_id)
group by departmenttype
order by avg_engagement desc;

# 10 Satisfaction by department

SELECT 
    e.departmenttype, 
    ROUND(AVG(eg.satisfaction_score), 2) AS avg_satisfaction,
    COUNT(e.employee_id) AS total_employees
FROM employee_data e 
JOIN engagement_data eg USING(employee_id)
GROUP BY departmenttype
ORDER BY avg_satisfaction DESC;

# 11 Engagement vs attrition
select e.Attrition, round(avg(eg.engagement_score),2) as engagement
from employee_data e
join engagement_data eg
using(employee_id)
group by e.Attrition;

# Training Analysis (JOIN)

# 12 Training completion by department
select e.departmentType, 
sum(case when t.training_outcome = 'Completed' then 1 else 0 end) as completed_count,
count(*) as total_training,
round(sum(case when t.training_outcome = 'Completed' then 1 else 0 end) *100 /count(*),2) as completion_percentage
from employee_data e
join training_data t
using(employee_id)
group by e.departmentType;

# 13 Average training hours
# 14 Does training improve engagement?
select t.training_outcome, round(avg(eg.engagement_score),2) as avg_engagement
from training_data t
join engagement_data eg
using(employee_id)
group by t.training_outcome;
select * from employee_data;
select * from engagement_data;
select * from training_data;

#  Management Insights

# 14 Top 5 departments needing attention
# 15 High-performing but low-engagement employees

# 16 Employees with no completed training
select e.EmployeeName, e.DepartmentType, training_outcome
from employee_data e
join training_data t
using(employee_id)
where training_outcome !='Completed'