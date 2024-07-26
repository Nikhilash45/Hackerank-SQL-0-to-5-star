SELECT MAX(Salary * months) , Count(Salary) 
FROM Employee 
Where Salary in (SELECT Salary From Employee where Salary * months in
               (Select MAX(Salary * months) FROM Employee ))
