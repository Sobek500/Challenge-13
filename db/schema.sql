-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

CREATE TABLE catagory_tbl(
id INT NOT NULL AUTO_INCREMENT,
catagory_name VARCHAR(30) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE product_tbl(
id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(30) NOT NULL,
price DECIMAL NOT NULL,
stock INT NOT NULL DEFAULT '10',
catagory_id INT,
PRIMARY KEY (id),
FOREIGN KEY (catagory_id) REFERENCES catagory_tbl(id)
);

CREATE TABLE tag_tbl(
id INT NOT NULL AUTO_INCREMENT,
tag_name VARCHAR(30),
PRIMARY KEY (id)
);

CREATE TABLE productTag_tbl(
id INT NOT NULL AUTO_INCREMENT,
product_id INT,
tag_id INT,
PRIMARY KEY (id),
FOREIGN KEY (product_id) REFERENCES product_tbl(id)
FOREIGN KEY (tag_id) REFERENCES tag_tbl(id)
);