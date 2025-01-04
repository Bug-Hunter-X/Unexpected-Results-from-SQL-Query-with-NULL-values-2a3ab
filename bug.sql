```sql
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
```
This query might seem correct but can lead to unexpected results if the `salary` column allows `NULL` values.  Rows where `salary` is `NULL` will be excluded from the results even if they belong to department 10. This is because `NULL` is not considered greater than 100000 in SQL.