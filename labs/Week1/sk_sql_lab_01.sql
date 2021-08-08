--CRETING DATABASE
CREATE DATABASE agro_analysis
--CREATING SCHEMA
CREATE SCHEMA source_data
--CREATING TABLE
CREATE TABLE source_data.DAILY_PRICING (
ProductGroupName varchar(100),
ProductName varchar(100),
StateName varchar(100),
Market_Center varchar(100),
Arrivals_in_tonnes Decimal(16,2),
Unit_of_Arrivals char(6),
Origin varchar(100),
Variety varchar(100),
Minimum_Prices_in_Rs_quintals Decimal(16,2),
Maximum_Prices_in_Rs_quintals Decimal(16,2),
Modal_Prices_in_Rs_quintals Decimal(16,2),
Unit_of_Price char(10),
)
--ALTERING TABLE
ALTER TABLE source_data.DAILY_PRICING ADD Arrival_date Date
--INSERTING VALUES
INSERT INTO	source_data.DAILY_PRICING VALUES('Oil and Fats','Coconut Oil','Kerala','Kanjangadu',1,'tonnes','NR','Others',18000,18400,18200,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('Oil and Fats','Coconut Oil','Kerala','Kannur',30,'tonnes','NR','Others',18200,18300,18250,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('Oil and Fats','Coconut Oil','Kerala','Kuthuparambu',2.8,'tonnes','NR','Others',18800,19500,19000,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('Oil and Fats','Coconut Oil','Kerala','Moovattupuzha',2,'tonnes','NR','leafy vegetables',16020,16850,16500,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('Oil and Fats','Ghee','Uttar Pradesh','Aligarh',60,'tonnes','NR','Ghee',38650,38750,38700,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('Others','Dhaincha','Rajasthan','Alwar',0.4,'tonnes','NR','others',3500,3600,3550,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('Others','Dhaincha','Rajasthan','Bharatpur',3.9,'tonnes','NR','others',3500,3560,3530,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('Others','Dhaincha','Rajasthan','Hindoun',0.7,'tonnes','NR','others',3521,3521,3521,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('Others','Dhaincha','Rajasthan','Kherli',9.8,'tonnes','NR','others',3500,3740,3660,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('Others','Dhaincha','Rajasthan','Mahua Mandabar(Mahua)',3.1,'tonnes','NR','others',3530,3596,3563,'Rs/Quintal','01/01/2019')
--UPDATING DATA
UPDATE source_data.DAILY_PRICING SET variety='others' WHERE market_center='Hindoun'
--DELETING A SELECTED ROW
DELETE FROM source_data.DAILY_PRICING WHERE Market_center='hindoun'
--RETRIEVING ALL DATA 
SELECT* FROM source_data.DAILY_PRICING
--RETRIEVING PARTICULAR COLUMN
SELECT Productname,market_center FROM source_data.DAILY_PRICING
--SELECT BY GROUPING
SELECT variety,count(*) FROM source_data.DAILY_PRICING GROUP BY variety
--TRANSFORMATION
SELECT UPPER(Productname) AS PRODUCTNAME,LOWER(Market_center) AS MARKET_CENTER FROM source_data.DAILY_PRICING