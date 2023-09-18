SELECT emp_no AS "ID Empleado", 
first_name	AS Nombre, 
last_name as Apellido, 
hire_date AS "Fecha Contratacion"
FROM employees 
WHERE gender LIKE 'F' AND YEAR(hire_date) >= 2000

