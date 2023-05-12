SELECT emp.employeeId, emp.firstName, emp.lastName, count(*) as NumofCarsSold
FROM sales sls
INNER JOIN employee emp
    ON  sls.employeeId = emp.employeeId
GROUP BY emp.employeeId, emp.firstName, emp.lastName
ORDER BY NumofCarsSold DESC;