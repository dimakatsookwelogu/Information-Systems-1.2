# Information-Systems-1.2 Database Group Project

Introduction
1.Topic
Cellphone Retail Shop Database

2.1 Overview
   Reason for choosing this topic
A retail cellphone database was chosen because because cellphone shops need efficient ways to manage daily business activities including selling, managing stocks and keeping customer records. This database will helps organise information, improve accuracy, reduce errors and make it easier for business.
2.2 Objectives
•	To design a relational database that manages cellphone models, customers, employees, suppliers, branches, and sales.
•	To reduce data duplication and maintain data integrity through database normalisation.
•	To keep accurate records of cellphone stock and sales transactions.
•	To make it easier to store, retrieve, update, and manage customer and product information.
•	To improve the efficiency of daily retail operations through effective database management.
•	To apply database design concepts to a real-world retail cellphone shop.

3. Background
Our business is a cellphone retail shop that sells cellphones from its own specific brand. The shop offers different cellphone models with different features, storage capacities, colours and prices to meet the needs of its customers. The business operates through its shops and employees who assist customers with selecting and purchasing cellphones. Suppliers provide the cellphone models to the business, which are then made available for sale to customers.

The business needs to keep track of its customers, cellphone models, individual cellphones, employees, shops and suppliers. As the business grows, the amount of information that needs to be managed also increases. Therefore, an organised database system is required to store and manage the business information efficiently.

4.Importance of the Database

A database is important because it provides the business with a centralised and organised way of storing and managing its information. It will allow the business to keep accurate records of customers, cellphones, cellphone models, employees, shops and suppliers.

The database will make it easier for employees to retrieve information quickly when needed. The business will also be able to keep track of the cellphone models available in different shops and maintain accurate supplier information.

A database can also reduce data redundancy and improve data consistency by organising information into related tables. This supports the use of database normalisation techniques, which are required as part of the project.

5. Challenge
Without a database, the business would rely on manual records, spreadsheets or paper-based documents to store information. Customer details would have to be recorded manually when customers purchase cellphones. Employees would also record information about the cellphones sold, their models and prices.
The business would need to manually keep track of the cellphone stock available at each shop. Information about suppliers and the cellphone models they provide would also be recorded separately. When stock is received or sold, employees would have to manually update the records.
Finding information could take a long time because employees would have to search through different documents or files. There would also be a higher risk of entering duplicate, incorrect or outdated information. Keeping records for different shops would become more difficult as the business grows.
6. Justification and improvements
The database approach will improve the business by making information easier to store, access, update and manage. Employees will be able to quickly find customer, cellphone, supplier and employee information without searching through multiple paper records or spreadsheets.
The database will help the business keep track of cellphone models and the availability of cellphones at different shops. It will also improve the accuracy and consistency of business information by reducing duplicate records and ensuring that related information is properly connected.
Management will be able to use the stored information to understand the business operations and make informed decisions. Overall, the database will save time, improve the organisation of information, reduce errors and support the efficient operation of the cellphone retail business.

7.Business rules 
1.Each customer must be assisted by one or many cashiers, and a cashier can assist one or many customers.
2.Each customer must place one or many orders and an order must belong to one and only one customer.
3.Each invoice must have only one payment and a payment must have only one invoice.
4.Each cashier must process one or many payments and a payment must be processed by one cashier.
5.Each payment must have one or many orders and an order must have only one payment.
6. stock must have only one cellphone brand and cellphone must be in one or many stock batches.
7.Each supplier must supply one or many stock batches and stock batches must be supplied by one and only one supplier 
 9.Each order must have one or many orders and a cellphone must have one or many orders.
10.Each customer must make one or many payments each payment belong to only one customer.

 8.ERD 
The Entity Relationship Diagram visually represents the following entities and their relationship, based on the business rules above.
 
 ##CUSTOMER			
Attributes	Data Type	Constraint	Optionality
Customer_ID	INTEGER	PK	Not Null
Full_name	VARCHAR(50)		Not Null
Identification_NO	INTEGER	unique	Not Null
Email	VARCHAR(50)		Not Null
Contact_Number	INTEGER		Not Null
Cashier_ID	INTEGER	FK	Not Null
(Mandatory)
9. Data dictionary


##CASHIER			
Attributes	Data type	Constraint	Optionality
Cashier_ID	INTEGER	PK	Not Null
Cashier_Full_Name	VARCHAR(50)		Not Null
Cashier_Email_Address	VARCHAR(50)		Not Null
Contact_Number	INTEGER		NOT Null
Email_Address	VARCHAR(50)		Not Null
Gender	VARCHAR(6)		Not Null

##PAYMENT			
Attributes	Data type	Constraint	Optionality
Payment_ID	INTEGER	PK	Not Null
Amount	NUMBER(10,2)		Not Null
Payment_Method	VARCHAR(10)		Not Null
Customer_ID
	INTEGER	FK	Not Null
(Mandatory)
Cashier_ID	INTEGER	FK	Not Null
(Mandatory)

##ORDER_ITEM			
Attributes	Data Type	Constraint	Optionality
Order_Item_ID	INTEGER	PK	Not Null
Oder_Item_Date	INTEGER		Not Null
Payment_Id	INTEGER	FK	Not Null
(Mandatory)
Customer_ID	INTEGER	FK	Not Null
(Mandatory)
.
			

##INVOICE			
Attributes	Data Type	Constraint	Optionality
Invoice_ID	INTEGER	PK	Not Null
Invoice_Date	INTEGER		Not Null
Store_Address	VARCHAR(50)		Not Null

##PRODUCT			
Attributes	Data Type	Constraint	Optionality
Product_ID	INTEGER	PK	Not Null
Brand	VARCHAR(25)		Not Null
Model_name	VARCHAR(25)		Not Null
Serial_Number	VARCHAR(50)		Not Null
Colour 	VARCHAR(20)		Not Null
Storage_Capacity	INTEGER		Not Null
Price	NUMBER(10,2)		Not Null

##STOCK			
Attributes	Data Type	Constraint	Optionality
Stock_ID	INTEGER	PK	Not Null
Supply_Date	INTEGER		Not Null
Batch_Number	INTEGER		Not Null
Supplier_ID 	INTEGER	FK	Not Null
(Mandatory)
Product_ID	INTEGER	FK	Not Null
(Mandatory)


##SUPPLIER			
Attributes	Data Type	Constraint	Optionality
Supplier_ID	INTEGER	PK	Not Null
Supplier_Name	VARCHAR(20)		Not Null
Supplier_Address	VARCHAR(50)		Not Null
Supplier_Email	VARCHAR(50)		Not Null



##CUSTOMER_CASHIER			
Attributes	Data Type	Constraint	Optionality
Customer_Cashier_ID	INTEGER 	PK	Not Null
Date	INTEGER		Not Null
Customer_ID	INTEGER	FK	Not Null
(Mandatory)
Cashier_ID	INTEGER	FK	Not Null
(Mandatory)


##ORDERED_PHONE			
Attributes	Data type	Constraint	Optionality
Orderd_Phone_ID	INTEGER	PK	Not Null
Order_Status	VARCHAR(30)		Not Null
Order_Item_ID	INTEGER	FK	Not Null
(Mandatory)
Product_ID	INTEGER	FK	Not Null
(Mandatory)

 10.OUTCOMES
The Retail Cellphone Shop Database is expected to produce the following reports:
Customer report: Lists each customer’s details (name, ID number, email, contact number), the cashier who assisted them, and their orders and invoices.
Invoice report: Shows each invoice’s date, store address, linked orders, cellphones sold and the payment made against it.
Payment report: Summarises payments received by amount and payment method, and shows which cashier processed each payment.
Cashier performance report: Shows how many customers each cashier assisted, how many payments they processed, and the total value handled.
Cellphone catalogue reort: Lists cellphones by brand, model, serial number, colour, storage capacity and price, so staff can quickly find a model that matches a customer’s needs.
Stock report:Shows the stock batches received, their batch numbers and supply dates, and the cellphones in each, so management can see what is in stock and what has been sold.
Supplier report:Lists each supplier’s details, the batches they have supplied and the supply dates, to help management evaluate suppliers.







11.CONCLUSION
The Retail Cellphone Shop Database stores the shop’s customer, cellphone, stock, supplier, order, invoice, payment and cashier information in one organised system. It replaces manual records and spreadsheets, which are slow to search and can cause duplicated or outdated entries. For the business, this database should  mean faster service, fewer errors and better control of stock. Employees can find customer and cellphone details within seconds. Management can use the outputs, such as the sales, payment, stock and supplier summaries, to track performance and make informed decisions. 

