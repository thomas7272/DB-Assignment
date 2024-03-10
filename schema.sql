-- Create Product Category table
CREATE TABLE product_category (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    desc TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP
);

-- Create Product table
CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    deleted_at TIMESTAMP,
    created_at TIMESTAMP,
    modified_at TIMESTAMP
);

-- Create Product Inventory table
CREATE TABLE product_inventory (
    id INT PRIMARY KEY,
    SKU VARCHAR(255),
    quantity INT,
    desc TEXT,
    category_id INT,
    created_at TIMESTAMP,
    inventory_id INT,
    modified_at TIMESTAMP,
    price DECIMAL,
    deleted_at TIMESTAMP,
    discount_id INT,
    FOREIGN KEY (category_id) REFERENCES product_category(id),
    FOREIGN KEY (discount_id) REFERENCES discount(id)
);

-- Create Discount table
CREATE TABLE discount (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    desc TEXT,
    discount_percent DECIMAL,
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

