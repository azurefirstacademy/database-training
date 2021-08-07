CREATE SCHEMA demo

CREATE TABLE demo.DAILY_PRICING (ProductGroupName varchar(100),ProductName varchar(100),StateName varchar(100),Market_Center varchar(100),Arrivals_in_tonnes Decimal(16,2),Unit_of_Arrivals char(6),Origin varchar(100),Variety varchar(100),Minimum_Prices_in_Rs_quintals Decimal(16,2),Maximum_Prices_in_Rs_quintals Decimal(16,2),Modal_Prices_in_Rs_quintals Decimal(16,2),Unit_of_Price char(10))

DROP TABLE demo.DAILY_PRICING

CREATE TABLE demo.DAILY_PRICING (ProductGroupName varchar(100),ProductName varchar(100),StateName varchar(100),Market_Center varchar(100),Arrivals_in_tonnes Decimal(16,2),Unit_of_Arrivals char(6),Origin varchar(100),Variety varchar(100),Minimum_Prices_in_Rs_quintals Decimal(16,2),Maximum_Prices_in_Rs_quintals Decimal(16,2),Modal_Prices_in_Rs_quintals Decimal(16,2),Unit_of_Price char(10))

INSERT INTO demo.DAILY_PRICING values ('oilseeds','castorseed','Gujarat','Amleri',2.5,'Tonnes','NR','other',4725,4850,4850,'Rs/Quintal')

INSERT INTO demo.DAILY_PRICING values ('oilseeds','castorseed','Gujarat','Bachau',10,'Tonnes','NR','castor seed',5075,5150,5100,'Rs/Quintal')

INSERT INTO demo.DAILY_PRICING values ('oilseeds','castorseed','Gujarat','Botad',0.4,'Tonnes','NR','other',4500,4550,4525,'Rs/Quintal')

INSERT INTO demo.DAILY_PRICING values ('oilseeds','castorseed','Gujarat','Dahod',1.3,'Tonnes','NR','castorseed',4500,4650,4600,'Rs/Quintal')

INSERT INTO demo.DAILY_PRICING values ('oilseeds','castorseed','Gujarat','Dasada Patadi',51.8,'Tonnes','NR','castor seed',5015,5025,5020,'Rs/Quintal')

INSERT INTO demo.DAILY_PRICING values ('oilseeds','castorseed','Gujarat','Deesa',47,'Tonnes','NR','other',5000,5026,5025,'Rs/Quintal')

INSERT INTO demo.DAILY_PRICING values ('oilseeds','castorseed','Gujarat','Deesa(Bhildi)',12.3,'Tonnes','NR','other',4960,5065,5050,'Rs/Quintal')

INSERT INTO demo.DAILY_PRICING values ('oilseeds','castorseed','Gujarat','Dehgam',4.4,'Tonnes','NR','other',4975,4980,4977,'Rs/Quintal')

INSERT INTO demo.DAILY_PRICING values ('oilseeds','castorseed','Gujarat','Dehgam(Rekhiyal)',0.1,'Tonnes','NR','other',4600,4850,4725,'Rs/Quintal')

INSERT INTO demo.DAILY_PRICING values ('oilseeds','castorseed','Gujarat','Dhanera',39,'Tonnes','NR','other',5000,5100,5050,'Rs/Quintal')

INSERT INTO demo.DAILY_PRICING values ('oilseeds','castorseed','Gujarat','Dhansura',1,'Tonnes','NR','castor seed',4750,4900,4850,'Rs/Quintal')

UPDATE demo.DAILY_PRICING SET Arrivals_in_tonnes=5 where Market_Center='Botad'

UPDATE demo.DAILY_PRICING SET Arrivals_in_tonnes=10,Unit_of_Arrivals='Tonnes',Origin='NR',Variety='Local' where Market_Center='Dhanera'

DELETE demo.DAILY_PRICING where Market_Center='Dahod'

SELECT *FROM demo.DAILY_PRICING

SELECT ProductName,Market_Center from demo.DAILY_PRICING

SELECT Arrivals_in_tonnes,Variety from demo.DAILY_PRICING where Market_Center='Dasada Patadi'

SELECT UPPER (ProductName),LOWER(ProductGroupName) from demo.DAILY_PRICING

SELECT UPPER(ProductName) as ProductName_UPPER,LOWER(ProductGroupName) as ProductGroupName_LOWER from  demo.DAILY_PRICING

SELECT ProductName,count(*) from demo.DAILY_PRICING group by ProductName

SELECT ProductGroupName,count(*) from demo.DAILY_PRICING group by ProductGroupName
