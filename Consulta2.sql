SELECT
E.emp_no AS "ID EMPLEADO",
E.first_name AS Nombre,
E.last_name AS Apellido,
max(S.salary) AS "Mayor Salario"
FROM employees E
JOIN salaries S oN E.emp_no=S.emp_no
GROUP BY E.emp_no