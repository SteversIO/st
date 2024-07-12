CREATE TABLE customers (
    customer_id INT GENERATED BY DEFAULT AS IDENTITY(START WITH 1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE customer_orders (
    order_id INT GENERATED BY DEFAULT AS IDENTITY(START WITH 1) PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date TIMESTAMP NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT GENERATED BY DEFAULT AS IDENTITY(START WITH 1) PRIMARY KEY,
    order_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES customer_orders(order_id)
);
