-- The case of ITC for Investing the data base and creating the Table -

CREATE TABLE distributors(
  distributor_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  city TEXT,
  region TEXT,
  phone TEXT
  );
  
-- Dropping the table----
DROP TABLE distributors;

--Create another table name Products--
--Create a table Products with following ddetails: Product_ID, Product_Name, Brand, Category,, Price and Stock should be integer and if it is blank than it should be zero. Products -- Product_Id should be integer name and unique and product name text, not null and unique, brand name text and not null and product category text and not null, price should be in real value and price should be freater than 0.
CREATE TABLE products(
product_id INTEGER PRIMARY KEY,
product_name TEXT NOT NULL UNIQUE,
brand TEXT,
category TEXT NOT NULL,
price REAL CHECK (price>0),
stock INTEGER DEFAULT 0
);

-- Create another table name Sales containing variables, sales id, product id,distributor id, quantity,sales date, amount--
CREATE TABLE Sales(
sale_id INTEGER PRIMARY KEY,
product_id INTEGER,
distributor_id INTEGER,
sale_date TEXT,
quantity INTEGER CHECK (quantity >0),
amount REAL,
FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id),
FOREIGN KEY (distributor_id) REFERENCES distributors(distributor_id)
);