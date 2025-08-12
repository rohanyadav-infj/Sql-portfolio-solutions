-- Inventory/Product Management System

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(8,2),
    stock INT
);

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE purchases (
    purchase_id INT PRIMARY KEY,
    product_id INT,
    supplier_id INT,
    quantity INT,
    purchase_date DATE,
    FOREIGN KEY(product_id) REFERENCES products(product_id),
    FOREIGN KEY(supplier_id) REFERENCES suppliers(supplier_id)
);

-- Sample data
INSERT INTO products VALUES (1, 'Pen', 10.5, 250), (2, 'Notebook', 55.0, 120);

INSERT INTO suppliers VALUES (501, 'Stationery House', 'Kolkata');

INSERT INTO purchases VALUES (9001, 1, 501, 100, '2023-07-11');

-- Example Queries
SELECT * FROM products WHERE stock < 200;
SELECT products.product_name, suppliers.supplier_name, purchases.quantity
FROM purchases
JOIN products ON purchases.product_id = products.product_id
JOIN suppliers ON purchases.supplier_id = suppliers.supplier_id;
