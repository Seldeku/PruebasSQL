SELECT
E.emp_no AS "ID EMPLEADO",
E.first_name AS Nombre,
E.last_name AS Apellido,
AVG(S.salary)
FROM employees E
JOIN salaries S ON E.emp_no=S.emp_no
WHERE E.emp_no = 10056