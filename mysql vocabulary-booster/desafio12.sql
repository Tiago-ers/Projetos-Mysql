SELECT CONCAT_WS(' ', A.FIRST_NAME, A.LAST_NAME) AS 'Nome completo funcionário 1',
A.SALARY AS 'Salário funcionário 1', A.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT_WS(' ', B.FIRST_NAME, B.LAST_NAME) AS 'Nome completo funcionário 2',
B.SALARY AS 'Salário funcionário 2', B.PHONE_NUMBER AS 'Telefone funcionário 2' FROM employees AS A
INNER JOIN employees AS B ON A.JOB_ID = B.JOB_ID 
AND A.EMPLOYEE_ID <> B.EMPLOYEE_ID
ORDER BY CONCAT_WS(' ', A.FIRST_NAME, A.LAST_NAME), CONCAT_WS(' ', B.FIRST_NAME, B.LAST_NAME);
