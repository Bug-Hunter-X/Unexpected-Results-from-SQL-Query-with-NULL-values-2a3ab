```sql
SELECT * FROM employees WHERE department_id = 10 AND (salary > 100000 OR salary IS NULL);
```
This revised query uses `OR salary IS NULL` to include rows where `salary` is `NULL`. The `IS NULL` operator explicitly checks for `NULL` values.  Alternatively, the `COALESCE` function can replace `NULL` values with a default value before the comparison:

```sql
SELECT * FROM employees WHERE department_id = 10 AND COALESCE(salary, 0) > 100000;
```
This version replaces `NULL` salaries with 0.  Choose the approach that best suits your data and requirements.  If `NULL` salaries have special meaning, you would prefer the `IS NULL` approach.