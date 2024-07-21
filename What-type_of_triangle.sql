select 
Case
when a+b<=c or b+c<=a or c+a<=b then "Not A Triangle" 
When a =b And b=c and a=c then "Equilateral"
when a=b or b=c or a=c then "Isosceles"
when a<>b and b<>c and a<>c then "Scalene"
end 
 from TRIANGLES;
