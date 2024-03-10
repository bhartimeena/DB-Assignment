CREATE TABLE Product_Category ( id INT PRIMARY KEY, name VARCHAR(255) NOT NULL, created_at TIMESTAMP NOT NULL, modified_at TIMESTAMP NOT NULL, deleted_at TIMESTAMP );

CREATE TABLE Product ( id INT PRIMARY KEY, name VARCHAR(255) NOT NULL, product_inventory TEXT NOT NULL, SKU VARCHAR(255) NOT NULL, quantity INT NOT NULL, category_id INT, price DECIMAL NOT NULL, discount_id INT, created_at TIMESTAMP NOT NULL, inventory_id INT, modified_at TIMESTAMP NOT NULL, deleted_at TIMESTAMP, CONSTRAINT fk_product_category FOREIGN KEY (category_id) REFERENCES Product_Category(id) );

INSERT INTO Product_Category (id, name, created_at, modified_at, deleted_at) VALUES (1, 'Electronics', NOW(), NOW(), NULL);

INSERT INTO Product (id, name, product_inventory, SKU, quantity, category_id, price, created_at, inventory_id, modified_at, deleted_at) VALUES (1, 'iPhone', '{"storage": "128GB"}', 'ABC123', 10, 1, 999.99, NOW(), 1, NOW(), NULL);
