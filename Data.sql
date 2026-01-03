
-- Project: SQL Business Insights Project
-- File: data.sql
-- Description: Insert sample data for analysis


-- ----------------------------
-- Insert data into customers

INSERT INTO customers VALUES
(1, 'Amit', 'West', 'Consumer'),
(2, 'Riya', 'East', 'Corporate'),
(3, 'Karan', 'South', 'Home Office'),
(4, 'Neha', 'North', 'Consumer'),
(5, 'Rahul', 'West', 'Corporate'),
(6, 'Sneha', 'East', 'Consumer'),
(7, 'Arjun', 'South', 'Corporate');


-- Insert data into products
INSERT INTO products VALUES
(101, 'Laptop', 'Technology'),
(102, 'Chair', 'Furniture'),
(103, 'Printer', 'Technology'),
(104, 'Table', 'Furniture'),
(105, 'Phone', 'Technology'),
(106, 'Headphones', 'Technology'),
(107, 'Bookcase', 'Furniture');


-- Insert data into orders

INSERT INTO orders VALUES
(1001, 1, 101, '2024-01-10', 2, 90000, 15000),
(1002, 2, 103, '2024-01-15', 1, 25000, 4000),
(1003, 3, 102, '2024-02-05', 4, 20000, 3000),
(1004, 1, 104, '2024-02-18', 1, 12000, 2000),
(1005, 4, 101, '2024-03-01', 1, 45000, 7000),
(1006, 5, 105, '2024-03-12', 3, 60000, 10000),
(1007, 1, 105, '2024-03-20', 1, 20000, 3000),
(1008, 6, 106, '2024-04-02', 2, 15000, 2500),
(1009, 7, 107, '2024-04-10', 1, 18000, 3500);
