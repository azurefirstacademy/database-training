--CRETING DATABASE
CREATE DATABASE analysis
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
INSERT INTO	source_data.DAILY_PRICING VALUES('vegetables','leafy vagetables','gujarat','padra',3,'tonnes','NR','leafy vegetables',1000,1250,1100,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('vegetables','leafy vagetables','haryana','Barwala(Hisar)',5,'tonnes','NR','others',400,500,500,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('vegetables','leafy vagetables','haryana','Ladwa',0.2,'tonnes','NR','leafy vegetables',800,1000,800,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('vegetables','leafy vagetables','haryana','Samalkha',0.06,'tonnes','NR','leafy vegetables',1900,2000,1950,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('vegetables','leafy vagetables','haryana','Shahzadpur',0.1,'tonnes','NR','leafy vegetables',600,600,600,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('vegetables','leafy vagetables','Maharashtra','Pune(Hadapsar)',56,'tonnes','NR','others',1800,1800,1800,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('vegetables','leafy vagetables','Odisha','Betnoti',0.01,'tonnes','NR','leafy vegetables',800,1000,900,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('vegetables','leafy vagetables','Odisha','Dhenkanal',0.05,'tonnes','NR','others',1000,1200,1000,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('vegetables','leafy vagetables','Odisha','Khariar Road',0.5,'tonnes','NR','others',2000,2200,2000,'Rs/Quintal','01/01/2019')
INSERT INTO	source_data.DAILY_PRICING VALUES('vegetables','leafy vagetables','Odisha','Mottagaon',0.04,'tonnes','NR','others',1000,1200,1000,'Rs/Quintal','01/01/2019')
--UPDATING DATA
UPDATE source_data.DAILY_PRICING SET variety='others' WHERE market_center='Betnoti'
--DELETING A SELECTED ROW
DELETE FROM source_data.DAILY_PRICING WHERE Market_center='Mottagaon'
--RETRIEVING ALL DATA 
SELECT* FROM source_data.DAILY_PRICING
--RETRIEVING PARTICULAR COLUMN
SELECT Productname,market_center FROM source_data.DAILY_PRICING
--SELECT BY GROUPING
SELECT variety,count(*) FROM source_data.DAILY_PRICING GROUP BY variety
--TRANSFORMATION
SELECT UPPER(Productname) AS PRODUCTNAME,LOWER(Market_center) AS MARKET_CENTER FROM source_data.DAILY_PRICING