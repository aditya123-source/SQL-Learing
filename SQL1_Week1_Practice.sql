# Question 1:
# 1) Create a Database Bank.
DROP DATABASE bnk;
CREATE DATABASE bnk;
use bnk;
# Question 2:
# 2) Create a table with the name “Bank_Inventory” with the following columns
-- Product  with string data type and size 10 --
-- Quantity with numerical data type --
-- Price with data type that can handle all real numbers
-- purchase_cost with data type which always shows two decimal values --
-- estimated_sale_price with data type float --
CREATE TABLE bank_inventory(
		product VARCHAR(10),
        quantity int,
        price real,
        purchase_cost decimal(6,2),
        estimate_sales float);

ALTER table  bank_inventory RENAME COLUMN estimate_sales to estimated_sale_price;
# Question 3:
# 3) Display all column names and their datatype and size in Bank_Inventory.
desc bank_inventory;
# Question 4:
# 4) Insert the below two records into Bank_Inventory table .
-- 1st record with values --
			-- Product : PayCard
			-- Quantity: 2 
			-- price : 300.45 
			-- Puchase_cost : 8000.87
			-- estimated_sale_price: 9000.56 --
            
INSERT INTO bank_inventory (product, quantity, price, purchase_cost, estimated_sale_price) VALUES
							('PayCard', 2, 300.45, 8000.87, 9000.56);
INSERT INTO bank_inventory VALUES ('PayPoints', 4, 200.89, 7000.67, 6700.56);
-- 2nd record with values --
			-- Product : PayPoints
			-- Quantity: 4
			-- price : 200.89 
			-- Puchase_cost : 7000.67
			-- estimated_sale_price: 6700.56
SELECT * FROM bank_inventory;
# Question 5:
# 5) Add a column : Geo_Location to the existing Bank_Inventory table with data type varchar and size 20 .
ALTER TABLE bank_inventory ADD COLUMN geo_location VARCHAR(20);
# Question 6:
# 6) What is the value of Geo_Location for product : ‘PayCard’?
SELECT geo_location from bank_inventory WHERE product = 'PayCard';
# Question 7:
# 7) How many characters does the  Product : ‘PayCard’ store in the Bank_Inventory table.
SELECT LENGTH(product) FROM bank_inventory WHERE product = 'PayCard';
# Question 8:
# a) Update the Geo_Location field from NULL to ‘Delhi-City’ 
UPDATE bank_inventory SET geo_location = 'Delhi-City';
SELECT * FROM bank_inventory;
# b) How many characters does the  Geo_Location field value ‘Delhi-City’ stores in the Bank_Inventory table
SELECT LENGTH(geo_location) FROM bank_inventory WHERE geo_location = 'Delhi-City';
# Question 9:
# 9) update the Product field from CHAR to VARCHAR size 10 in Bank_Inventory 
ALTER TABLE bank_inventory MODIFY product VARCHAR(20);
# Question 10:
# 10) Reduce the size of the Product field from 10 to 6 and check if it is possible. 
desc bank_inventory;
ALTER TABLE bank_inventory MODIFY product VARCHAR(6);
# Question 11:
# 11) Bank_inventory table consists of ‘PayCard’ product details .
-- For ‘PayCard’ product, Update the quantity from 2 to 10  
UPDATE bank_inventory SET quantity = 10 WHERE product = 'PayCard';
SELECT * FROM bank_inventory;
 # Question 12:
# 12) Create a table named as Bank_Holidays with below fields 
-- a) Holiday field which displays or accepts only date 
-- b) Start_time field which also displays or accepts date and time both.  
-- c) End_time field which also displays or accepts date and time along with the timezone also. 
CREATE TABLE bank_holidays (
		holiday_field DATE,
        start_time DATETIME,
        end_time TIMESTAMP);
 # Question 13:
# 13) Step 1: Insert today’s date details in all fields of Bank_Holidays 
-- Step 2: After step1, perform the below 
-- Postpone Holiday to next day by updating the Holiday field 
INSERT INTO bank_holidays VALUES (str_to_date("21-04-2023","%d-%m-%Y"),NULL, NULL);
SELECT * FROM bank_holidays;
SELECT current_date();
SELECT DATE(str_to_date("21-04-2023","%d-%m-%Y")+1);
UPDATE bank_holidays SET holiday_field = DATE(str_to_date("21-04-2023","%d-%m-%Y")+1);
# Question 14:
# 14) Modify  the Start_time data with today's datetime in the Bank_Holidays table 
UPDATE bank_holidays SET start_time = current_timestamp();
# Question 15:
# 15) Update the End_time with UTC time(GMT Time) in the Bank_Holidays table. 

# Question 16:
# 16) Select all columns from Bank_Inventory without mentioning any column name
SELECT * FROM bank_inventory;
# Question 17:
# 17)  Display output of PRODUCT field as NEW_PRODUCT in  Bank_Inventory table 
SELECT product as new_product from bank_inventory;
# Question 18:
# 18)  Display only one record from bank_Inventory 
SELECT * FROM bank_inventory LIMIT 1;
# Question 19:
# 19) Modify  the End_time data with today's datetime in the Bank_Holidays table 
UPDATE bank_holidays SET end_time = current_timestamp();
# Question 20:
# 20) Display the first five rows of the Geo_location field of Bank_Inventory.
SELECT geo_location FROM bank_inventory LIMIT 5;