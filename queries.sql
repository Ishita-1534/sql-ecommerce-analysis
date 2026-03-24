-- Total Revenue
SELECT SUM(amount) AS total_revenue FROM Payments;

-- Top Customers
SELECT c.name, SUM(p.amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Payments p ON o.order_id = p.order_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- Monthly Sales
SELECT DATE_FORMAT(payment_date, '%Y-%m') AS month,
       SUM(amount) AS revenue
FROM Payments
GROUP BY month;

-- Best Products
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_name;

-- Window Function
SELECT product_id,
       SUM(total_price),
       RANK() OVER (ORDER BY SUM(total_price) DESC)
FROM Order_Items
GROUP BY product_id;