SELECT EMPLOYEE_UIN.UIN, EMPLOYEE.NAME
FROM EMPLOYEE_UIN
JOIN EMPLOYEE
ON EMPLOYEE_UIN.ID = EMPLOYEE.ID
WHERE EMPLOYEE.AGE < 25
ORDER BY EMPLOYEE.NAME, EMPLOYEE.ID;
