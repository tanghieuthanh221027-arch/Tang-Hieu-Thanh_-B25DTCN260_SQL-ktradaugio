CREATE DATABASE shop_manager;
USE shop_manager;

CREATE TABLE Categories(
	category_id INT PRIMARY KEY NOT NULL,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE Products(
	product_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    price DEC(10 , 2) CHECK(price >= 0),
    stock INT NOT NULL CHECK(stock > 0),
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

INSERT INTO Categories (category_id ,category_name)
VALUES (1, 'Điện tử'),(2, 'Thời trang');

INSERT INTO Products(product_name , price , stock , category_id)
VALUES 
	('Iphone 15' , 25000000 , 10 , 1),
	('Samsung S23' , 20000000 , 5 , 1),
    ('Áo sơ mi nam' , 500000 , 50 , 2),
    ('Giày thể thao' , 1200000 , 20 , 2);
    
UPDATE Products 
SET price = 26000000
WHERE product_id = 1;

UPDATE Products 
SET stock = stock + 10
WHERE category_id = 1;

DELETE FROM Products
WHERE product_id = 4;

DELETE FROM Products
WHERE price < 1000000;

SELECT * FROM Products;

SELECT * FROM Products WHERE stock > 15;
