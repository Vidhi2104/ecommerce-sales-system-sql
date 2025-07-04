-- Stored Procedure: Total Orders Today
CREATE PROCEDURE GetTodaysOrders
AS
BEGIN
    SELECT * FROM Orders WHERE OrderDate = CAST(GETDATE() AS DATE);
END;

-- Stored Procedure: Get Customer Orders
CREATE PROCEDURE GetCustomerOrders @CustomerID INT
AS
BEGIN
    SELECT O.OrderID, O.OrderDate, OD.ProductID, OD.Quantity, OD.UnitPrice
    FROM Orders O
    JOIN OrderDetails OD ON O.OrderID = OD.OrderID
    WHERE O.CustomerID = @CustomerID;
END;
