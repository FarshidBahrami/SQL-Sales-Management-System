-- Create Employee Table
-- Create Employee Table
CREATE TABLE Employee (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

-- Create Product Table
CREATE TABLE Product (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT
);

-- Create Sales Table
CREATE TABLE Sales (
    sale_id SERIAL PRIMARY KEY,
    employee_id INT,
    product_id INT,
    sale_date DATE,
    quantity INT,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

INSERT INTO Employee (first_name, last_name, position, salary, hire_date) VALUES
('John', 'Doe', 'Manager', 55000, '2022-01-15'),
('Jane', 'Smith', 'Sales Associate', 35000, '2023-03-10'),
('Alice', 'Johnson', 'Cashier', 28000, '2021-07-05'),
('Bob', 'Brown', 'Sales Associate', 36000, '2022-08-25'),
('Eve', 'Davis', 'Supervisor', 45000, '2021-10-30'),
('Charlie', 'Miller', 'Sales Associate', 34000, '2023-02-20'),
('Diana', 'Garcia', 'Cashier', 29000, '2020-11-11');

INSERT INTO Product (product_name, category, price, stock_quantity) VALUES
('Laptop', 'Electronics', 1200.00, 15),
('Smartphone', 'Electronics', 800.00, 25),
('Headphones', 'Electronics', 150.00, 50),
('Desk Chair', 'Furniture', 200.00, 10),
('Office Desk', 'Furniture', 350.00, 5),
('Coffee Maker', 'Appliances', 100.00, 30),
('Blender', 'Appliances', 70.00, 40),
('T-shirt', 'Clothing', 20.00, 100),
('Jeans', 'Clothing', 50.00, 60),
('Sneakers', 'Footwear', 90.00, 20);

INSERT INTO Sales (employee_id, product_id, sale_date, quantity, total_amount) VALUES
(1, 2, '2024-01-15', 3, 2400.00),
(2, 5, '2024-01-16', 1, 350.00),
(3, 4, '2024-01-17', 2, 400.00),
(4, 7, '2024-01-18', 5, 350.00),
(5, 1, '2024-01-19', 1, 1200.00),
(6, 9, '2024-01-20', 10, 500.00),
(7, 10, '2024-01-21', 2, 180.00),
(1, 6, '2024-01-22', 3, 300.00),
(2, 8, '2024-01-23', 7, 140.00),
(3, 3, '2024-01-24', 4, 600.00),
(4, 2, '2024-01-25', 2, 1600.00),
(5, 1, '2024-01-26', 1, 1200.00),
(6, 10, '2024-01-27', 3, 270.00),
(7, 9, '2024-01-28', 5, 250.00),
(1, 7, '2024-01-29', 2, 140.00),
(2, 8, '2024-01-30', 6, 120.00),
(3, 6, '2024-01-31', 8, 800.00),
(4, 5, '2024-02-01', 1, 350.00),
(5, 4, '2024-02-02', 2, 400.00),
(6, 3, '2024-02-03', 3, 450.00),
(7, 2, '2024-02-04', 1, 800.00),
(1, 1, '2024-02-05', 2, 2400.00),
(2, 9, '2024-02-06', 8, 400.00),
(3, 10, '2024-02-07', 4, 360.00),
(4, 7, '2024-02-08', 2, 140.00),
(5, 8, '2024-02-09', 7, 140.00),
(6, 6, '2024-02-10', 9, 900.00),
(7, 5, '2024-02-11', 1, 350.00),
(1, 4, '2024-02-12', 2, 400.00),
(2, 3, '2024-02-13', 5, 750.00),
(3, 2, '2024-02-14', 3, 2400.00),
(4, 1, '2024-02-15', 1, 1200.00),
(5, 10, '2024-02-16', 2, 180.00),
(6, 9, '2024-02-17', 7, 350.00),
(7, 8, '2024-02-18', 6, 120.00),
(1, 7, '2024-02-19', 4, 280.00),
(2, 6, '2024-02-20', 10, 1000.00),
(3, 5, '2024-02-21', 3, 1050.00),
(4, 4, '2024-02-22', 5, 1000.00),
(5, 3, '2024-02-23', 7, 1050.00),
(6, 2, '2024-02-24', 2, 1600.00),
(7, 1, '2024-02-25', 2, 2400.00),
(1, 9, '2024-02-26', 5, 250.00),
(2, 8, '2024-02-27', 8, 160.00),
(3, 7, '2024-02-28', 9, 630.00);
