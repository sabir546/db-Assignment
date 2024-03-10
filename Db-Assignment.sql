-- Create product_category table
create database DbTable;
use Dbtable;
CREATE TABLE product_category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP
      
  
); 

show tables;



-- Create product table
CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP,
    category_id INT REFERENCES product_category(id) ON DELETE SET NULL,
    deleted_at TIMESTAMP
);

-- Create product_inventory table
CREATE TABLE product_inventory (
    id SERIAL PRIMARY KEY,
    SKU VARCHAR(50) NOT NULL,
    quantity INT,
    category_id INT REFERENCES product_category(id) ON DELETE SET NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP,
    price DECIMAL(10, 2),
    deleted_at TIMESTAMP
);

-- Create discount table
CREATE TABLE discount (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    
    discount_percent DECIMAL(5, 2) NOT NULL,
    active BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create product_discount table (junction table)
CREATE TABLE product_discount (
    product_id INT REFERENCES product(id) ON DELETE CASCADE,
    discount_id INT REFERENCES discount(id) ON DELETE CASCADE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (product_id, discount_id)
);

show table status;