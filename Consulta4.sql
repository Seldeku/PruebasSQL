SELECT
E.emp_no AS "ID EMPLEADO",
E.first_name AS Nombre,
E.last_name AS Apellido,
E.birth_date AS "Fecha Cumpleaños",
E.hire_date AS "Fecha Contratacion",
E.gender AS Genero,
E.birth_date AS "Fecha Cumpleaños",
D.dept_name AS "Nombre Departamento",
T.title AS "Cargo Actual",
S.salary AS Sañario
FROM employees E
JOIN dept_manager DM ON E.emp_no=DM.emp_no
JOIN departments D ON DM.dept_no = D.dept_no
JOIN titles T ON E.emp_no=T.emp_no
JOIN salaries S ON E.emp_no=S.emp_no
GROUP BY E.emp_no
ORDER BY E.emp_no 