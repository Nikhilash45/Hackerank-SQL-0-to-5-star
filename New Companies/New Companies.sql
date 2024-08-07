SELECT 
    Company.company_code,
    Company.founder,
    COUNT(DISTINCT Lead_Manager.lead_manager_code) AS total_lead_managers,
    COUNT(DISTINCT Senior_Manager.senior_manager_code) AS total_senior_managers,
    COUNT(DISTINCT Manager.manager_code) AS total_managers,
    COUNT(DISTINCT Employee.employee_code) AS total_employees
FROM 
    Company
LEFT JOIN 
    Lead_Manager ON Company.company_code = Lead_Manager.company_code
LEFT JOIN 
    Senior_Manager ON Lead_Manager.lead_manager_code = Senior_Manager.lead_manager_code AND Company.company_code = Senior_Manager.company_code
LEFT JOIN 
    Manager ON Senior_Manager.senior_manager_code = Manager.senior_manager_code AND Company.company_code = Manager.company_code
LEFT JOIN 
    Employee ON Manager.manager_code = Employee.manager_code AND Company.company_code = Employee.company_code
GROUP BY 
    Company.company_code, 
    Company.founder
ORDER BY 
    Company.company_code;

/*select Company.company_code , Company.founder , Sum(Lead_Manager.lead_manager_code), sum(Senior_Manager.senior_manager_code), sum(Manager.manager_code), sum(Employee.employee_code) 
From Company  join Lead_Manager
on Company.company_code=Lead_Manager.company_code 
Join Senior_Manager
on Lead_Manager.company_code=Senior_Manager.company_code
Join manager_code 
on Senior_Manager.company_code=Manager.company_code
Join Employee 
On Manager.company_code = Employee.company_code
group by Company.company_code , Company.founder
ORDER BY 
    Company.company_code;
