SELECT emp.employeeId, 
emp.firstName, 
emp.lastName,
salesId,
Max(salesAmount) as MostExpensiveCar,
Min(salesAmount) as LeastExpensiveCar,
soldDate
FROM sales sls
INNER JOIN employee emp
    ON  sls.employeeId = emp.employeeId
WHERE sls.soldDate >= date('now','start of year')
GROUP BY emp.employeeId, emp.firstName, emp.lastName