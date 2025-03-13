/*Create the Customer Table*/
CREATE TABLE Customer (
    Customer_id VARCHAR(20) PRIMARY KEY,
    Customer_Name VARCHAR(20) NOT NULL,
    Customer_Tel NUMBER
);

/*Create the Product Table*/
CREATE TABLE Product (
    Product_id VARCHAR(20) PRIMARY KEY,
    Product_Name VARCHAR(20) NOT NULL,
    Price NUMBER CHECK (Price > 0)
);

/*Create the Order Table*/
CREATE TABLE Orders (
    Customer_id VARCHAR(20),
    Product_id VARCHAR(20),
    Quantity NUMBER,
    Total_amount NUMBER,
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

/*Add a Column Category to the Product Table*/
ALTER TABLE Orders ADD COLUMN OrderDate DATE DEFAULT (DATE('now'));

/*Add a Column OrderDate to the Orders Table*/
ALTER TABLE Product ADD COLUMN Category VARCHAR(20);