INSERT INTO Customers VALUES
(1, 'Rahul', 'Delhi', '2023-01-10'),
(2, 'Aman', 'Mumbai', '2023-02-15'),
(3, 'Priya', 'Bangalore', '2023-03-20');

INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 60000),
(102, 'Phone', 'Electronics', 20000),
(103, 'Shoes', 'Fashion', 3000);

INSERT INTO Orders VALUES
(1001, 1, '2023-06-01', 'Delivered'),
(1002, 2, '2023-06-05', 'Cancelled'),
(1003, 1, '2023-07-01', 'Delivered');

INSERT INTO Order_Items VALUES
(1, 1001, 101, 1, 60000),
(2, 1002, 102, 1, 20000),
(3, 1003, 103, 2, 6000);

INSERT INTO Payments VALUES
(1, 1001, 'UPI', '2023-06-01', 60000),
(2, 1002, 'COD', '2023-06-05', 20000),
(3, 1003, 'Card', '2023-07-01', 6000);