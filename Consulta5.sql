SELECT
E.emp_no AS "ID EMPLEADO",
E.first_name AS Nombre,
E.last_name AS Apellido,
E.birth_date AS "Fecha Cumpleaños",
E.hire_date AS "Fecha Contratacion",
D.dept_name AS "Nombre Departamento",
T.title AS "Cargo Actual",
S.salary AS Salario
FROM employees E
JOIN titles T ON E.emp_no=T.emp_no
JOIN dept_emp DE ON E.emp_no=DE.emp_no
JOIN departments D ON DE.dept_no=D.dept_no
JOIN salaries S ON E.emp_no=S.emp_no
WHERE S.from_date
GROUP BY E.emp_no