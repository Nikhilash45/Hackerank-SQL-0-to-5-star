SELECT 
    CASE
    WHEN p is null THEN CONCAT(N , " Root") 
    WHEN N IN (SELECT DISTINCT P FROM BST) THEN CONCAT(N, ' Inner')
    else CONCAT(N, ' Leaf') end
FROM BST
order by N;
