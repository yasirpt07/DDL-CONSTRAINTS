CREATE DATABASE Sales;

USE Sales;

-- Create the "Orders" table
CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY,
    Customer_name VARCHAR(100) NOT NULL,  
    Product_Category VARCHAR(50),
    Ordered_item VARCHAR(100) NOT NULL,
    Contact_No VARCHAR(15) UNIQUE NOT NULL
);

desc orders;

-- adding new column Order_quantity
ALTER TABLE Orders
ADD order_quantity INT;


-- Rename the "Orders" table to "sales_orders"
ALTER TABLE Orders
RENAME TO sales_orders;

INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity) VALUES
(1, 'Alice Johnson', 'Electronics', 'Laptop', '1234567890', 1),
(2, 'Bob Smith', 'Furniture', 'Office Chair', '0987654321', 2),
(3, 'Charlie Brown', 'Groceries', 'Apple', '1231231234', 10),
(4, 'David Wilson', 'Clothing', 'T-shirt', '9876543210', 3),
(5, 'Eve Adams', 'Footwear', 'Sneakers', '4567891230', 1),
(6, 'Frank White', 'Electronics', 'Smartphone', '3216549870', 1),
(7, 'Grace Lee', 'Home Decor', 'Wall Art', '7890123456', 2),
(8, 'Hannah King', 'Books', 'Novel', '6543219876', 5),
(9, 'Ian Taylor', 'Stationery', 'Notebook', '4561237890', 3),
(10, 'Jane Wright', 'Groceries', 'Milk', '1239876540', 6);

select * from sales_orders;

-- Retrieve customer_name and Ordered_item from the "sales_orders" table
SELECT Customer_name, Ordered_item
FROM sales_orders;

-- Updating the Ordered_item for order_id = 1
UPDATE sales_orders
SET Ordered_item = 'Tablet'
WHERE Order_Id = 1;

select * from sales_orders;

-- Delete the "sales_orders" table from the database
DROP TABLE sales_orders;

