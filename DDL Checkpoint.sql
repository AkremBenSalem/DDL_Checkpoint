CREATE TABLE Customer (
	Customer_id VARCHAR2(20) CONSTRAINT customer_pk PRIMARY KEY,
	Customer_Name VARCHAR2(20) CONSTRAINT customer_nl NOT NULL ,
	Customer_Tel Number
);
CREATE TABLE Product (
	Product_id VARCHAR2(20) CONSTRAINT product_pk PRIMARY KEY,
	Product_Name VARCHAR2(20) CONSTRAINT product_nl NOT NULL ,
	Price Number CONSTRAINT product_pv CHECK (Price > 0)

);

CREATE TABLE Orders (
	Quantity Number,
	Total_amount Number,
    CONSTRAINT Orders_Customer_fk FOREIGN KEY Customer_id REFERENCES Customer (Customer_id),
    CONSTRAINT Orders_Product_fk  FOREIGN KEY Product_id REFERENCES Product (Product_id)

);

----------------------------------------------------After creating the tables--------------------------------------------------------------------------

ALTER TABLE Product ADD Category VARCHAR2(20);
ALTER TABLE Orders ADD OrderDate DATE SET DEFAULT SYSDATE;