create Table Product(
    Product_Id  VARCHAR2(20)  PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK (Price>10)
);

create Table Customer(
    Customer_Id  VARCHAR2(20)  PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER 
);

create Table Orders(
    Customer_Id  VARCHAR2(20)  ,
    Product_Id VARCHAR2(20) FOREIGN KEY,
    Quantity NUMBER, 
    Total_amount NUMBER

Constraint FK1 FOREIGN KEY (Customer_Id )  REFERENCES Customer(Customer_Id), 
Constraint FK2 FOREIGN KEY (Product_Id )  REFERENCES Product(Product_Id)
);

Alter Table Product ADD Category (VARCHAR2(20));
Alter Table Orders ADD OrderDate (DATE)  default SYSDATE;
 