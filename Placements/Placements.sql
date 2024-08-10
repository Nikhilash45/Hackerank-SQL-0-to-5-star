Select s.Name From Students s Join Friends f
ON s.ID = f.ID
Join Packages p
ON p.ID = s.ID
Join Packages p2
ON p2.ID = f.Friend_ID
Where p.Salary<p2.Salary
order by p2.Salary

