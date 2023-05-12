SELECT emp.employeeId, 
emp.firstName, 
emp.lastName,
count(*) as NumberofSales
FROM sales sls
INNER JOIN employee emp
    ON  sls.employeeId = emp.employeeId
WHERE sls.soldDate >= date('now','start of year')
GROUP BY emp.employeeId, emp.firstName, emp.lastName
HAVING NumberofSales > 5