CREATE SCHEMA source_data

CREATE TABLE source_data.DAILY_PRICING (ProductGroupName varchar(100),ProductName varchar(100),StateName varchar(100),Market_Center varchar(100),Arrivals_in_tonnes Decimal(16,2),Unit_of_Arrivals char(6),Origin varchar(100),Variety varchar(100),Minimum_Prices_in_Rs_quintals Decimal(16,2),Maximum_Prices_in_Rs_quintals Decimal(16,2),Modal_Prices_in_Rs_quintals Decimal(16,2),Unit_of_Price char(10))
DROP TABLE source_data.DAILY_PRICING
CREATE TABLE source_data.DAILY_PRICING (ProductGroupName varchar(100),ProductName varchar(100),StateName varchar(100),Market_Center varchar(100),Arrivals_in_tonnes Decimal(16,2),Unit_of_Arrivals char(6),Origin varchar(100),Variety varchar(100),Minimum_Prices_in_Rs_quintals Decimal(16,2),Maximum_Prices_in_Rs_quintals Decimal(16,2),Modal_Prices_in_Rs_quintals Decimal(16,2),Unit_of_Price char(10))
Alter Table source_data.DAILY_PRICING add price_date date
INSERT INTO source_data.DAILY_PRICING values ('Spices','Coconut','Karnataka','Bangalore',2700,'Tonnes','NR','Grade-I',10000, 25000,17500,'Rs/Quintal','01/01/2019')
INSERT INTO source_data.DAILY_PRICING values ('Spices','Ajwan','Gujarat','Dhanera',0.2,'Tonnes','NR','Other',7350,7350,7350,'Rs/Quintal','01/01/2019')
INSERT INTO source_data.DAILY_PRICING values ('Spices','Coconut','Karnataka','Chamaraj Nagar',2000,'Tonnes','NR','Grade-I',16000, 16000,16000,'Rs/Quintal','01/01/2019')
INSERT INTO source_data.DAILY_PRICING values ('Spices','Coconut','Karnataka','Channapatana',180,'Tonnes','NR','Grade-I',9000, 17000,13000,'Rs/Quintal','01/01/2019')
INSERT INTO source_data.DAILY_PRICING values ('Spices','Coconut','Karnataka','K.R.Nagar',3000,'Tonnes','NR','Grade-III',10000, 10000,10000,'Rs/Quintal','01/01/2019')
INSERT INTO source_data.DAILY_PRICING values ('Spices','Coconut','Karnataka','Chickkaballapura',1000,'Tonnes','NR','Grade-I',6000, 14000,14000,'Rs/Quintal','01/01/2019')
INSERT INTO source_data.DAILY_PRICING values ('Spices','Coconut','Karnataka','Gundlupet',1,'Tonnes','NR','Grade-I',7000, 7000,7000,'Rs/Quintal','01/01/2019')
INSERT INTO source_data.DAILY_PRICING values ('Spices','Coconut','Karnataka','Harihara',900,'Tonnes','NR','Grade-I',8500, 8500,8500,'Rs/Quintal','01/01/2019')
INSERT INTO source_data.DAILY_PRICING values ('Spices','Coconut','Karnataka','Kadur',340,'Tonnes','NR','Grade-I',8000, 11000,8000,'Rs/Quintal','01/01/2019')
INSERT INTO source_data.DAILY_PRICING values ('Spices','Coconut','Karnataka','Hosadurga',1392,'Tonnes','NR','Grade-III',10000, 11000,10500,'Rs/Quintal','01/01/2019')
INSERT INTO source_data.DAILY_PRICING values ('Spices','Coconut','Karnataka','Kanakapura',3895,'Tonnes','NR','Coconut',14000, 14000,14000,'Rs/Quintal','01/01/2019')
SELECT * FROM source_data.DAILY_PRICING
UPDATE source_data.DAILY_PRICING SET Maximum_Prices_in_Rs_quintals = 15000  where Market_Center = 'Kanakapura'
DELETE FROM source_data.DAILY_PRICING where Market_Center = 'Hosadurga'
SELECT * FROM source_data.DAILY_PRICING
SELECT ProductGroupName,Market_Center FROM source_data.DAILY_PRICING
SELECT ProductGroupName,Arrivals_in_tonnes FROM source_data.DAILY_PRICING
Where Market_Center = 'K.R.Nagar'
SELECT UPPER (ProductGroupName),Lower (ProductName) FROM source_data.DAILY_PRICING
SELECT UPPER (ProductGroupName) as ProductGroupName_UPPER,
Lower  (ProductName) as  ProductName_LOWER FROM source_data.DAILY_PRICING
SELECT * FROM source_data.DAILY_PRICING
SELECT ProductGroupName,count(*) FROM source_data.DAILY_PRICING GROUP BY ProductGroupName
SELECT ProductGroupName,count(*) FROM source_data.DAILY_PRICING GROUP BY ProductGroupName







