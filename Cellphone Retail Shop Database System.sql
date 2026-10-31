DROP TABLE Ordered_Phone CASCADE CONSTRAINTS PURGE;
DROP TABLE Stock CASCADE CONSTRAINTS PURGE;
DROP TABLE Order_Item CASCADE CONSTRAINTS PURGE;
DROP TABLE Invoice CASCADE CONSTRAINTS PURGE;
DROP TABLE Payment CASCADE CONSTRAINTS PURGE;
DROP TABLE Customer_Cashier CASCADE CONSTRAINTS PURGE;
DROP TABLE Customer CASCADE CONSTRAINTS PURGE;
DROP TABLE Product CASCADE CONSTRAINTS PURGE;
DROP TABLE Cashier CASCADE CONSTRAINTS PURGE;
DROP TABLE Supplier CASCADE CONSTRAINTS PURGE;

CREATE TABLE Supplier(
    supplier_id INTEGER,
    supplier_name VARCHAR(30),
    supplier_address VARCHAR(100),
    supplier_email VARCHAR(50),
    CONSTRAINT supplier_supplier_id_pk PRIMARY KEY(supplier_id)
);

INSERT INTO Supplier (supplier_id, supplier_name, supplier_address, supplier_email)
VALUES (1, 'SmartTech', '20 Rocky Street,Edenvaal, Vanderbijlpark, 1911', 'Smartech@gmail.com');

INSERT INTO Supplier (supplier_id, supplier_name, supplier_address, supplier_email)
VALUES (2, 'Techworld', '3 Piet Kerk Street, Housinpark, Mayerton, 1921', 'Order@techworld.ac.za');

INSERT INTO Supplier (supplier_id, supplier_name, supplier_address, supplier_email)
VALUES (3, 'Techconnectmobiles', '18 John Durk Street, Samaritanpark, Vanderbijlpark, 1911', 'info@techconnectmobiles.co.za');

INSERT INTO Supplier (supplier_id, supplier_name, supplier_address, supplier_email)
VALUES (4, 'Cellpro', '54 jULIAN Street, Benonipark, Mayerton, 1921', 'info@cellpro.co.za');

SELECT * FROM Supplier;

CREATE TABLE Cashier(
    cashier_id INTEGER,
    cashier_full_name VARCHAR2(50),
    cashier_email_address VARCHAR2(50),
    cashier_contact_number VARCHAR2(10),
    gender VARCHAR2(6),
    CONSTRAINT cashier_cashier_id_pk PRIMARY KEY(cashier_id)
);

INSERT INTO Cashier (cashier_id, cashier_full_name, cashier_email_address, gender, cashier_contact_number)
VALUES (1, 'Raesetsa Mokone', 'raesetsamokone19@gmail.com', 'Female', '0790434551');

INSERT INTO Cashier (cashier_id, cashier_full_name, cashier_email_address, gender, cashier_contact_number)
VALUES (2, 'Lindokuhle Mthembu', 'lindokuhlemthembu@gmail.com', 'Male', '0823456781');

INSERT INTO Cashier (cashier_id, cashier_full_name, cashier_email_address, gender, cashier_contact_number)
VALUES (3, 'Precious Ndlovu', 'preciousndlovu@gmail.com', 'Female', '0834567892');

INSERT INTO Cashier (cashier_id, cashier_full_name, cashier_email_address, gender, cashier_contact_number)
VALUES (4, 'Siyabonga Khumalo', 'siyabongakhumalo@gmail.com', 'Male', '0845678913');

SELECT * FROM Cashier;

SELECT * FROM Cashier;

CREATE TABLE Customer(
    customer_id INTEGER,
    fullname VARCHAR2(50),
    identification_number VARCHAR2(13),
    email_address VARCHAR2(50),
    contact_number VARCHAR2(10),
    cashier_id INTEGER,
    CONSTRAINT customer_customer_id_pk PRIMARY KEY (customer_id),
    CONSTRAINT customer_cashier_fk FOREIGN KEY (cashier_id)
        REFERENCES Cashier (cashier_id)
);

INSERT INTO Customer (customer_id, fullname, identification_number, email_address, contact_number, cashier_id)
VALUES (101, 'William Dlamini', '9801222175083', 'williamdlamini3@gmail.com', '0822252908', 1);

INSERT INTO Customer (customer_id, fullname, identification_number, email_address, contact_number, cashier_id)
VALUES (102, 'Thabo Mokoena', '9903155678081', 'thabomokoena9@gmail.com', '0823456781', 1);

INSERT INTO Customer (customer_id, fullname, identification_number, email_address, contact_number, cashier_id)
VALUES (103, 'Lerato Nkosi', '0007210456082', 'leratonkosi88@gmail.com', '0834567892', 2);

INSERT INTO Customer (customer_id, fullname, identification_number, email_address, contact_number, cashier_id)
VALUES (104, 'Sipho Khumalo', '9806105789085', 'siphokhumalo@gmail.com', '0845678913', 3);

INSERT INTO Customer (customer_id, fullname, identification_number, email_address, contact_number, cashier_id)
VALUES (105, 'Naledi Dlamini', '0108240675084', 'naledidlamini196@gmail.com', '0723456784', 4);

INSERT INTO Customer (customer_id, fullname, identification_number, email_address, contact_number, cashier_id)
VALUES (106, 'Kabelo Molefe', '9704125432086', 'kabelomolefe@gmail.com', '0734567895', 1);

INSERT INTO Customer (customer_id, fullname, identification_number, email_address, contact_number, cashier_id)
VALUES (107, 'Ayanda Ndlovu', '0009030789087', 'ayandandlovu@gmail.com', '0745678916', 2);

INSERT INTO Customer (customer_id, fullname, identification_number, email_address, contact_number, cashier_id)
VALUES (108, 'Palesa Maseko', '9901170895088', 'palesamaseko21@gmail.com', '0763456787', 3);

INSERT INTO Customer (customer_id, fullname, identification_number, email_address, contact_number, cashier_id)
VALUES (109, 'Bongani Zulu', '9805285678089', 'bonganizulu@gmail.com', '0784567898', 4);

INSERT INTO Customer (customer_id, fullname, identification_number, email_address, contact_number, cashier_id)
VALUES (110, 'Refilwe Modise', '0102060456080', 'refilwemodise33@gmail.com', '0795678919', 1);

INSERT INTO Customer (customer_id, fullname, identification_number, email_address, contact_number, cashier_id)
VALUES (111, 'Mandla Sithole', '9707315789081', 'mandlasithole97@gmail.com', '0813456780', 2);

INSERT INTO Customer (customer_id, fullname, identification_number, email_address, contact_number, cashier_id)
VALUES (112, 'Zanele Cele', '0004150675082', 'zanelecele@gmail.com', '0824567891', 3);

INSERT INTO Customer (customer_id, fullname, identification_number, email_address, contact_number, cashier_id)
VALUES (113, 'Tumelo Radebe', '9909025432083', 'tumeloradebe67@gmail.com', '0835678912', 4);

INSERT INTO Customer (customer_id, fullname, identification_number, email_address, contact_number, cashier_id)
VALUES (114, 'Busisiwe Shabalala', '9802190789084', 'busisiweshabalala@gmail.com', '0843456783', 1);

INSERT INTO Customer (customer_id, fullname, identification_number, email_address, contact_number, cashier_id)
VALUES (115, 'Sibusiso Ncube', '0106105678085', 'sibusisoncube45@gmail.com', '0724567894', 2);

SELECT * FROM Customer;

CREATE TABLE Customer_Cashier(
    customer_cashier_id INTEGER,
    date_of_purchase DATE,
    customer_id INTEGER,
    cashier_id INTEGER,
    CONSTRAINT customer_cashier_customer_cashier_id_pk PRIMARY KEY(customer_cashier_id),
    CONSTRAINT customer_cashier_customer_id_fk FOREIGN KEY (customer_id)
        REFERENCES Customer(customer_id),
    CONSTRAINT customer_cashier_cashier_id_fk FOREIGN KEY (cashier_id)
        REFERENCES Cashier(cashier_id)
);

INSERT INTO Customer_Cashier (customer_cashier_id, date_of_purchase, cashier_id, customer_id)
VALUES (1010001, DATE '2024-02-20', 1, 101);

INSERT INTO Customer_Cashier (customer_cashier_id, date_of_purchase, cashier_id, customer_id)
VALUES (1020001, DATE '2024-03-05', 1, 102);

INSERT INTO Customer_Cashier (customer_cashier_id, date_of_purchase, cashier_id, customer_id)
VALUES (1030002, DATE '2024-03-18', 2, 103);

INSERT INTO Customer_Cashier (customer_cashier_id, date_of_purchase, cashier_id, customer_id)
VALUES (1040003, DATE '2024-04-02', 3, 104);

INSERT INTO Customer_Cashier (customer_cashier_id, date_of_purchase, cashier_id, customer_id)
VALUES (1050004, DATE '2024-04-15', 4, 105);

INSERT INTO Customer_Cashier (customer_cashier_id, date_of_purchase, cashier_id, customer_id)
VALUES (1060001, DATE '2024-05-09', 1, 106);

INSERT INTO Customer_Cashier (customer_cashier_id, date_of_purchase, cashier_id, customer_id)
VALUES (1070002, DATE '2024-05-22', 2, 107);

INSERT INTO Customer_Cashier (customer_cashier_id, date_of_purchase, cashier_id, customer_id)
VALUES (1080003, DATE '2024-06-11', 3, 108);

INSERT INTO Customer_Cashier (customer_cashier_id, date_of_purchase, cashier_id, customer_id)
VALUES (1090004, DATE '2024-06-25', 4, 109);

INSERT INTO Customer_Cashier (customer_cashier_id, date_of_purchase, cashier_id, customer_id)
VALUES (1100001, DATE '2024-07-14', 1, 110);

INSERT INTO Customer_Cashier (customer_cashier_id, date_of_purchase, cashier_id, customer_id)
VALUES (1110002, DATE '2024-08-03', 2, 111);

INSERT INTO Customer_Cashier (customer_cashier_id, date_of_purchase, cashier_id, customer_id)
VALUES (1120003, DATE '2024-08-19', 3, 112);

INSERT INTO Customer_Cashier (customer_cashier_id, date_of_purchase, cashier_id, customer_id)
VALUES (1130004, DATE '2024-09-07', 4, 113);

INSERT INTO Customer_Cashier (customer_cashier_id, date_of_purchase, cashier_id, customer_id)
VALUES (1140001, DATE '2024-10-16', 1, 114);

INSERT INTO Customer_Cashier (customer_cashier_id, date_of_purchase, cashier_id, customer_id)
VALUES (1150002, DATE '2024-11-20', 2, 115);

SELECT * FROM Customer_Cashier;

CREATE TABLE Payment(
    payment_id INTEGER,
    purchase_amount NUMBER(10,2),
    payment_method VARCHAR2(10),
    customer_id INTEGER,
    cashier_id INTEGER,
    CONSTRAINT pk_payment PRIMARY KEY (payment_id),
    CONSTRAINT payment_customer_id_fk FOREIGN KEY(customer_id)
        REFERENCES Customer(customer_id),
    CONSTRAINT payment_cashier_id_fk FOREIGN KEY (cashier_id)
        REFERENCES Cashier(cashier_id)
);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5501, 3000, 'EFT', 101, 1);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5502, 3500, 'EFT', 102, 1);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5503, 3500, 'EFT', 103, 2);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5504, 4500, 'CASH', 104, 3);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id,

DROP TABLE Payment CASCADE CONSTRAINTS PURGE;

CREATE TABLE Payment(
    payment_id INTEGER,
    purchase_amount NUMBER(10,2),
    payment_method VARCHAR2(10),
    customer_id INTEGER,
    cashier_id INTEGER,
    CONSTRAINT pk_payment PRIMARY KEY (payment_id),
    CONSTRAINT payment_customer_id_fk FOREIGN KEY(customer_id)
        REFERENCES Customer(customer_id),
    CONSTRAINT payment_cashier_id_fk FOREIGN KEY (cashier_id)
        REFERENCES Cashier(cashier_id)
);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5501, 3000, 'EFT', 101, 1);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5502, 3500, 'EFT', 102, 1);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5503, 3500, 'EFT', 103, 2);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5504, 4500, 'CASH', 104, 3);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5505, 5500, 'EFT', 105, 4);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5506, 5000, 'CASH', 106, 1);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5507, 4500, 'EFT', 107, 2);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5508, 4000, 'EFT', 108, 3);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5509, 3000, 'CASH', 109, 4);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5510, 3500, 'EFT', 110, 1);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5511, 4500, 'EFT', 111, 2);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5512, 5500, 'CASH', 112, 3);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5513, 4500, 'EFT', 113, 4);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5514, 4500, 'CASH', 114, 1);

INSERT INTO Payment (payment_id, purchase_amount, payment_method, customer_id, cashier_id)
VALUES (5515, 4500, 'CASH', 115, 2);

SELECT * FROM Payment;

CREATE TABLE Invoice(
    invoice_id INTEGER,
    invoice_date DATE,
    store_address VARCHAR2(100),
    payment_id INTEGER,
    customer_id INTEGER,
    CONSTRAINT invoice_invoice_id_pk PRIMARY KEY (invoice_id),
    CONSTRAINT invoice_payment_id_fk FOREIGN KEY (payment_id)
        REFERENCES Payment(payment_id),
    CONSTRAINT invoice_customer_id_fk FOREIGN KEY (customer_id)
        REFERENCES Customer(customer_id)
);

INSERT INTO Invoice (invoice_id, store_address, invoice_date, payment_id, customer_id)
VALUES (22001, '33 Randalph Street, Edenvaal, Vanderbijlpark,1911', DATE '2024-02-20', 5501, 101);

INSERT INTO Invoice (invoice_id, store_address, invoice_date, payment_id, customer_id)
VALUES (22002, '33 Randalph Street, Edenvaal, Vanderbijlpark,1911', DATE '2024-03-05', 5502, 102);

INSERT INTO Invoice (invoice_id, store_address, invoice_date, payment_id, customer_id)
VALUES (22003, '33 Randalph Street, Edenvaal, Vanderbijlpark,1911', DATE '2024-03-18', 5503, 103);

INSERT INTO Invoice (invoice_id, store_address, invoice_date, payment_id, customer_id)
VALUES (22004, '33 Randalph Street, Edenvaal, Vanderbijlpark,1911', DATE '2024-04-02', 5504, 104);

INSERT INTO Invoice (invoice_id, store_address, invoice_date, payment_id, customer_id)
VALUES (22005, '33 Randalph Street, Edenvaal, Vanderbijlpark,1911', DATE '2024-04-15', 5505, 105);

INSERT INTO Invoice (invoice_id, store_address, invoice_date, payment_id, customer_id)
VALUES (22006, '33 Randalph Street, Edenvaal, Vanderbijlpark,1911', DATE '2024-05-09', 5506, 106);

INSERT INTO Invoice (invoice_id, store_address, invoice_date, payment_id, customer_id)
VALUES (22007, '33 Randalph Street, Edenvaal, Vanderbijlpark,1911', DATE '2024-05-22', 5507, 107);

INSERT INTO Invoice (invoice_id, store_address, invoice_date, payment_id, customer_id)
VALUES (22008, '33 Randalph Street, Edenvaal, Vanderbijlpark,1911', DATE '2024-06-11', 5508, 108);

INSERT INTO Invoice (invoice_id, store_address, invoice_date, payment_id, customer_id)
VALUES (22009, '33 Randalph Street, Edenvaal, Vanderbijlpark,1911', DATE '2024-06-25', 5509, 109);

INSERT INTO Invoice (invoice_id, store_address, invoice_date, payment_id, customer_id)
VALUES (22010, '33 Randalph Street, Edenvaal, Vanderbijlpark,1911', DATE '2024-07-14', 5510, 110);

INSERT INTO Invoice (invoice_id, store_address, invoice_date, payment_id, customer_id)
VALUES (22011, '33 Randalph Street, Edenvaal, Vanderbijlpark,1911', DATE '2024-08-03', 5511, 111);

INSERT INTO Invoice (invoice_id, store_address, invoice_date, payment_id, customer_id)
VALUES (22012, '33 Randalph Street, Edenvaal, Vanderbijlpark,1911', DATE '2024-08-19', 5512, 112);

INSERT INTO Invoice (invoice_id, store_address, invoice_date, payment_id, customer_id)
VALUES (22013, '33 Randalph Street, Edenvaal, Vanderbijlpark,1911', DATE '2024-09-07', 5513, 113);

INSERT INTO Invoice (invoice_id, store_address, invoice_date, payment_id, customer_id)
VALUES (22014, '33 Randalph Street, Edenvaal, Vanderbijlpark,1911', DATE '2024-10-16', 5514, 114);

INSERT INTO Invoice (invoice_id, store_address, invoice_date, payment_id, customer_id)
VALUES (22015, '33 Randalph Street, Edenvaal, Vanderbijlpark,1911', DATE '2024-11-20', 5515, 115);

SELECT * FROM Invoice;

CREATE TABLE Order_Item(
    order_item_id INTEGER,
    order_item_date DATE,
    customer_id INTEGER,
    payment_id INTEGER,
    CONSTRAINT order_item_order_id_pk PRIMARY KEY (order_item_id),
    CONSTRAINT order_item_customer_id_fk FOREIGN KEY (customer_id)
        REFERENCES Customer(customer_id),
    CONSTRAINT order_item_payment_fk FOREIGN KEY (payment_id)
        REFERENCES Payment(payment_id)
);

INSERT INTO Order_Item (order_item_id, order_item_date, customer_id, payment_id)
VALUES (44001, DATE '2024-02-20', 101, 5501);

INSERT INTO Order_Item (order_item_id, order_item_date, customer_id, payment_id)
VALUES (44002, DATE '2024-03-05', 102, 5502);

INSERT INTO Order_Item (order_item_id, order_item_date, customer_id, payment_id)
VALUES (44003, DATE '2024-03-18', 103, 5503);

INSERT INTO Order_Item (order_item_id, order_item_date, customer_id, payment_id)
VALUES (44004, DATE '2024-04-02', 104, 5504);

INSERT INTO Order_Item (order_item_id, order_item_date, customer_id, payment_id)
VALUES (44005, DATE '2024-04-15', 105, 5505);

INSERT INTO Order_Item (order_item_id, order_item_date, customer_id, payment_id)
VALUES (44006, DATE '2024-05-09', 106, 5506);

INSERT INTO Order_Item (order_item_id, order_item_date, customer_id, payment_id)
VALUES (44007, DATE '2024-05-22', 107, 5507);

INSERT INTO Order_Item (order_item_id, order_item_date, customer_id, payment_id)
VALUES (44008, DATE '2024-06-11', 108, 5508);

INSERT INTO Order_Item (order_item_id, order_item_date, customer_id, payment_id)
VALUES (44009, DATE '2024-06-25', 109, 5509);

INSERT INTO Order_Item (order_item_id, order_item_date, customer_id, payment_id)
VALUES (44010, DATE '2024-07-14', 110, 5510);

INSERT INTO Order_Item (order_item_id, order_item_date, customer_id, payment_id)
VALUES (44011, DATE '2024-08-03', 111, 5511);

INSERT INTO Order_Item (order_item_id, order_item_date, customer_id, payment_id)
VALUES (44012, DATE '2024-08-19', 112, 5512);

INSERT INTO Order_Item (order_item_id, order_item_date, customer_id, payment_id)
VALUES (44013, DATE '2024-09-07', 113, 5513);

INSERT INTO Order_Item (order_item_id, order_item_date, customer_id, payment_id)
VALUES (44014, DATE '2024-10-16', 114, 5514);

INSERT INTO Order_Item (order_item_id, order_item_date, customer_id, payment_id)
VALUES (44015, DATE '2024-11-20', 115, 5515);

SELECT * FROM Order_Item;

CREATE TABLE Product(
    Product_id INTEGER,
    brand VARCHAR2(25),
    model_name VARCHAR2(25),
    serial_number VARCHAR2(50),
    colour VARCHAR2(20),
    storage_capacity INTEGER,
    price NUMBER(10,2),
    CONSTRAINT pk_Product PRIMARY KEY (Product_id)
);

INSERT INTO Product (Product_id, brand, model_name, serial_number, colour, storage_capacity, price)
VALUES (120001, 'Berries', 'P01', 'BR01A4F2', 'Blue', 64, 3000);

INSERT INTO Product (Product_id, brand, model_name, serial_number, colour, storage_capacity, price)
VALUES (120012, 'Berries', 'P01', 'BR01B9X7', 'Red', 128, 3500);

INSERT INTO Product (Product_id, brand, model_name, serial_number, colour, storage_capacity, price)
VALUES (120015, 'Berries', 'P01', 'BR01R9Y2', 'Black', 128, 3500);

INSERT INTO Product (Product_id, brand, model_name, serial_number, colour, storage_capacity, price)
VALUES (120019, 'Berries', 'P03', 'BR03A4F1', 'Black', 128, 4500);

INSERT INTO Product (Product_id, brand, model_name, serial_number, colour, storage_capacity, price)
VALUES (120032, 'Berries', 'P08', 'BR08B9X2', 'Blue', 128, 5500);

INSERT INTO Product (Product_id, brand, model_name, serial_number, colour, storage_capacity, price)
VALUES (120034, 'Berries', 'P08', 'BR08B9X2', 'Red', 64, 5000);

INSERT INTO Product (Product_id, brand, model_name, serial_number, colour, storage_capacity, price)
VALUES (120035, 'Berries', 'P04', 'BR04D3K2', 'Red', 128, 4500);

INSERT INTO Product (Product_id, brand, model_name, serial_number, colour, storage_capacity, price)
VALUES (120042, 'Berries', 'P04', 'BR04D3K3', 'Blue', 64, 4000);

INSERT INTO Product (Product_id, brand, model_name, serial_number, colour, storage_capacity, price)
VALUES (120047, 'Berries', 'P01', 'BR01P9D7', 'Red', 64, 3000);

INSERT INTO Product (Product_id, brand, model_name, serial_number, colour, storage_capacity, price)
VALUES (120049, 'Berries', 'P01', 'BR01B9M6', 'Red', 128, 3500);

INSERT INTO Product (Product_id, brand, model_name, serial_number, colour, storage_capacity, price)
VALUES (120050, 'Berries', 'P03', 'BR03H4C4', 'Black', 128, 4500);

INSERT INTO Product (Product_id, brand, model_name, serial_number, colour, storage_capacity, price)
VALUES (120052, 'Berries', 'P08', 'BR08B2Z9', 'Blue', 128, 5500);

INSERT INTO Product (Product_id, brand, model_name, serial_number, colour, storage_capacity, price)
VALUES (120056, 'Berries', 'P03', 'BR03A3L1', 'Red', 128, 4500);

INSERT INTO Product (Product_id, brand, model_name, serial_number, colour, storage_capacity, price)
VALUES (120058, 'Berries', 'P04', 'BR04C4K1', 'Black', 128, 4500);

INSERT INTO Product (Product_id, brand, model_name, serial_number, colour, storage_capacity, price)
VALUES (120060, 'Berries', 'P03', 'BR03A4F9', 'Blue', 128, 4500);

SELECT * FROM Product;

CREATE TABLE Stock(
    stock_id INTEGER,
    supply_date DATE,
    batch_number VARCHAR2(20),
    supplier_id INTEGER,
    product_id INTEGER,
    CONSTRAINT pk_stock PRIMARY KEY (stock_id),
    CONSTRAINT stock_supplier_id_fk FOREIGN KEY (supplier_id)
        REFERENCES Supplier(supplier_id),
    CONSTRAINT stock_product_id_fk FOREIGN KEY (product_id)
        REFERENCES Product(Product_id)
);

INSERT INTO Stock (stock_id, supply_date, batch_number, supplier_id, product_id)
VALUES (101, DATE '2024-02-20', 'BATCH101', 1, 120001);

INSERT INTO Stock (stock_id, supply_date, batch_number, supplier_id, product_id)
VALUES (103, DATE '2024-04-10', 'BATCH103', 3, 120015);

INSERT INTO Stock (stock_id, supply_date, batch_number, supplier_id, product_id)
VALUES (104, DATE '2024-05-05', 'BATCH104', 4, 120019);

INSERT INTO Stock (stock_id, supply_date, batch_number, supplier_id, product_id)
VALUES (105, DATE '2024-06-18', 'BATCH105', 1, 120032);

SELECT * FROM Stock;

DROP TABLE Ordered_Phone CASCADE CONSTRAINTS PURGE;

CREATE TABLE Ordered_Phone(
    Ordered_Phone_ID INTEGER,
    Order_Item_ID INTEGER,
    Product_ID INTEGER,
    Order_Status VARCHAR2(30),
    CONSTRAINT pk_Ordered_Phone PRIMARY KEY (Ordered_Phone_ID),
    CONSTRAINT fk_OrderedPhone_OrderItem FOREIGN KEY (Order_Item_ID)
        REFERENCES Order_Item(Order_Item_ID),
    CONSTRAINT fk_OrderedPhone_Product FOREIGN KEY (Product_ID)
        REFERENCES Product(Product_id)
);

INSERT INTO Ordered_Phone (Ordered_Phone_ID, Order_Item_ID, Product_ID, Order_Status)
VALUES (1, 44001, 120001, 'Pending');

INSERT INTO Ordered_Phone (Ordered_Phone_ID, Order_Item_ID, Product_ID, Order_Status)
VALUES (2, 44002, 120012, 'Processing');

INSERT INTO Ordered_Phone (Ordered_Phone_ID, Order_Item_ID, Product_ID, Order_Status)
VALUES (3, 44003, 120015, 'Delivered');

INSERT INTO Ordered_Phone (Ordered_Phone_ID, Order_Item_ID, Product_ID, Order_Status)
VALUES (4, 44004, 120019, 'Shipped');

INSERT INTO Ordered_Phone (Ordered_Phone_ID, Order_Item_ID, Product_ID, Order_Status)
VALUES (5, 44005, 120032, 'Pending');

INSERT INTO Ordered_Phone (Ordered_Phone_ID, Order_Item_ID, Product_ID, Order_Status)
VALUES (6, 44006, 120034, 'Delivered');

INSERT INTO Ordered_Phone (Ordered_Phone_ID, Order_Item_ID, Product_ID, Order_Status)
VALUES (7, 44007, 120035, 'Processing');

INSERT INTO Ordered_Phone (Ordered_Phone_ID, Order_Item_ID, Product_ID, Order_Status)
VALUES (8, 44008, 120042, 'Shipped');

INSERT INTO Ordered_Phone (Ordered_Phone_ID, Order_Item_ID, Product_ID, Order_Status)
VALUES (9, 44009, 120047, 'Pending');

INSERT INTO Ordered_Phone (Ordered_Phone_ID, Order_Item_ID, Product_ID, Order_Status)
VALUES (10, 44010, 120049, 'Delivered');

SELECT * FROM Ordered_Phone;

SELECT
    c.customer_id,
    c.fullname,
    o.order_item_id,
    o.order_item_date
FROM Customer c
JOIN Order_Item o ON c.customer_id = o.customer_id
WHERE c.customer_id = 101;

SELECT
    c.customer_id,
    c.fullname,
    o.order_item_id,
    o.order_item_date,
    p.brand,
    p.model_name,
    p.colour,
    op.ordered_phone_id,
    op.order_status
FROM Customer c
JOIN Order_Item o ON c.customer_id = o.customer_id
JOIN Ordered_Phone op ON o.order_item_id = op.order_item_id
JOIN Product p ON op.product_id = p.product_id
WHERE c.customer_id = 101;