-- Sample data for Customers, Products, Orders
INSERT INTO Customers VALUES
(1, 'Vidhi Mehta', 'vidhi@example.com', '9876543210', 'Mumbai'),
(2, 'Ankit Patel', 'ankit@example.com', '9988776655', 'Ahmedabad');

INSERT INTO Categories VALUES
(1, 'Electronics', 'Gadgets and devices'),
(2, 'Books', 'Literature and educational material');

INSERT INTO Products VALUES
(101, 'Smartphone', 1, 20000, 50),
(102, 'Headphones', 1, 2000, 100),
(201, 'Novel - Fiction', 2, 500, 75);

INSERT INTO Orders VALUES
(1001, 1, '2025-06-01', 22500),
(1002, 2, '2025-06-02', 500);

INSERT INTO OrderDetails VALUES
(1, 1001, 101, 1, 20000),
(2, 1001, 102, 1, 2000),
(3, 1002, 201, 1, 500);
