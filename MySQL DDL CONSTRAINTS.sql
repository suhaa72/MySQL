CREATE DATABASE Sales;

USE Sales;

CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,  -- Primary Key constraint
    Customer_name VARCHAR(255) NOT NULL,  -- Not Null constraint
    Product_Category VARCHAR(100) NOT NULL,  -- Not Null constraint
    Ordered_item VARCHAR(255) NOT NULL,  -- Not Null constraint
    Contact_No VARCHAR(15) UNIQUE NOT NULL  -- Unique and Not Null constraints
);

ALTER TABLE Orders
ADD order_quantity INT;


RENAME TABLE Orders TO sales_orders;

INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity)
VALUES
(1, 'Alice Smith', 'Electronics', 'Laptop', '555-1234', 2),
(2, 'Bob Johnson', 'Books', 'Programming Book', '555-5678', 1),
(3, 'Charlie Brown', 'Furniture', 'Office Chair', '555-8765', 4),
(4, 'David Wilson', 'Clothing', 'T-Shirt', '555-4321', 3),
(5, 'Eve Adams', 'Groceries', 'Apple', '555-1122', 5),
(6, 'Frank Harris', 'Toys', 'Lego Set', '555-9988', 1),
(7, 'Grace Lee', 'Furniture', 'Sofa', '555-4433', 2),
(8, 'Hank Scott', 'Electronics', 'Smartphone', '555-5544', 1),
(9, 'Ivy Moore', 'Clothing', 'Jeans', '555-6677', 2),
(10, 'Jack Taylor', 'Groceries', 'Milk', '555-7788', 10);


SELECT Customer_name, Ordered_item
FROM sales_orders;


UPDATE sales_orders
SET Ordered_item = 'Sweatshirt'
WHERE Order_Id = 4;

DROP TABLE sales_orders;

