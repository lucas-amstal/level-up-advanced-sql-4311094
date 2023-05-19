Select emp.firstName, emp.lastName,mdl.model,sls.salesId
FROM sales sls
INNER JOIN employee emp
   ON sls.employeeId = emp.employeeId
INNER JOIN inventory inv
   ON inv.inventoryId = sls.inventoryId
INNER JOIN model mdl
   ON mdl.modelId = inv.modelId