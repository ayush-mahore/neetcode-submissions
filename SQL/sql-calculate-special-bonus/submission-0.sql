Select  employee_id, 
        CASE
            WHEN employee_id%2 = 1 AND name not like 'M%' THEN SALARY
            ELSE 0
        END AS Bonus 
FROM employees
ORDER BY employee_id;

