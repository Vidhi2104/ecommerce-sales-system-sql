-- Total Revenue by Category
SELECT C.CategoryName,
       SUM(OD.Quantity * OD.UnitPrice) AS TotalRevenue
FROM OrderDetails OD
JOIN Products P ON OD.ProductID = P.ProductID
JOIN Categories C ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName;

-- Top 5 Selling Products
SELECT TOP 5 P.ProductName,
             SUM(OD.Quantity) AS UnitsSold
FROM OrderDetails OD
JOIN Products P ON OD.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY UnitsSold DESC;
