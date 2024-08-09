WITH CTE_1 AS (SELECT Start_Date from Projects Where Start_Date Not in (Select End_Date from Projects )),
        CTE_2 AS (SELECT Start_Date , Rank() over(Order by Start_Date asc) as rn FROM CTE_1 ),
        CTE_3 AS (SELECT End_Date from Projects Where End_Date Not in (Select Start_Date from Projects )),
        CTE_4 AS (SELECT End_Date , Rank() over(Order by End_Date asc) as rn FROM CTE_3 )
Select CTE_2.Start_Date , CTE_4.End_Date from CTE_2 inner join CTE_4 on CTE_2.rn=CTE_4.rn
Order by DATEDIFF(CTE_2.Start_Date,CTE_4.End_Date) desc , CTE_2.Start_Date asc
