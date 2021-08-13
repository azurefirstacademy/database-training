CREATE SCHEMA fruits_2019
CREATE TABLE fruits_2019.DAILY_PRICING (Market_Center varchar(100),Arrivals_in_tonnes Decimal(16,2),Unit_of_Arrivals char(6),Origin varchar(100),Variety varchar(100),Minimum_Prices_in_Rs_quintals Decimal(16,2),Maximum_Prices_in_Rs_quintals Decimal(16,2),Modal_Prices_in_Rs_quintals Decimal(16,2),Unit_of_Price char(10))
Alter TABLE fruits_2019.DAILY_PRICING add price_date date

go
INSERT INTO fruits_2019.DAILY_PRICING values ('Ankleshwar',0.1, 'Tonnes', 'NR', 'Amla', 2000, 2900, 2675, 'Rs/Quintal' , '01/01/2019' )
INSERT INTO fruits_2019.DAILY_PRICING values ('Bharuch',8.36,'Tonnes','NR','Royal Mishri',4000,5500,4500,'Rs/Quintal','01/01/2019')
INSERT INTO fruits_2019.DAILY_PRICING values ( 'Gondal(Veg.market Gondal)',	62.68,'Tonnes','NR','Apple',2500,5000,3750,'Rs/Quintal','01/01/2019')
INSERT INTO fruits_2019.DAILY_PRICING values ('Vadodara(Navapura)',10,'Tonnes',	'NR','Other',7000,9000,8000,'Rs/Quintal','01/01/2019')
INSERT INTO fruits_2019.DAILY_PRICING values ('Ambala Cantt',1,'Tonnes','NR','Apple',4000,6000,5500,'Rs/Quintal','01/01/2019')
INSERT INTO fruits_2019.DAILY_PRICING values ( 'Ganaur',0.1,'Tonnes','NR','Apple', 8000,9000,8200,'Rs/Quintal' ,'01/01/2019')
INSERT INTO fruits_2019.DAILY_PRICING values ( 'Kangra(Baijnath)',0.1,'Tonnes','NR','Kasmir/Shimla-II',5000,6000,5500,'Rs/Quintal','01/01/2019')
INSERT INTO fruits_2019.DAILY_PRICING values ('Amrawati(Frui & Veg. Market)',43,'Tonnes','NR','Simla',5000,6000,5500,'Rs/Quintal','01/01/2019')
INSERT INTO fruits_2019.DAILY_PRICING values ('Azadpur',1829.6,'Tonnes','NR','Kullu Royal Delicious',3125,6250,4375,'Rs/Quintal','01/01/2019')
INSERT INTO fruits_2019.DAILY_PRICING values ( 'Dasuya',0.8,'Tonnes','NR','Kasmir/Shimla - II',3500	,4000,4000,'Rs/Quintal','01/01/2019')

--Updating_rows_in_Table
UPDATE fruits_2019.DAILY_PRICING  SET Market_Center = 'Coimbatore fruit market' where Market_Center = 'Ankleshwar'

--selecting whole table
SELECT * FROM  fruits_2019.DAILY_PRICING 

--Selecting_particular_columns
SELECT Market_Center,Arrivals_in_tonnes FROM fruits_2019.DAILY_PRICING

--Conditional_Selection
SELECT Market_Center,Arrivals_in_tonnes FROM fruits_2019.DAILY_PRICING where Origin='NR'

SELECT Market_Center,Variety FROM fruits_2019.DAILY_PRICING where Origin='NR'

SELECT Market_Center,Variety,Arrivals_in_tonnes FROM fruits_2019.DAILY_PRICING where Origin='NR'

--Selection_and_Transformation
SELECT Upper(Market_Center),Lower(Variety) FROM fruits_2019.DAILY_PRICING

--Selection_Transformation_Aliasing
SELECT Upper(Market_Center)as MARKET_CENTER_NAME,Lower(Variety) as variety_OF_FRUITS FROM fruits_2019.DAILY_PRICING

--Selecting_and_Grouping
SELECT Market_Center, COUNT(*) FROM fruits_2019.DAILY_PRICING GROUP BY Market_Center


--Selecting_and_Conditional_Grouping
SELECT Market_Center, COUNT(*) FROM fruits_2019.DAILY_PRICING GROUP BY Market_Center HAVING COUNT(*)=2
SELECT Market_Center, COUNT(*) FROM fruits_2019.DAILY_PRICING GROUP BY Market_Center HAVING COUNT(*)>2
SELECT Market_Center, COUNT(*) FROM fruits_2019.DAILY_PRICING GROUP BY Market_Center HAVING COUNT(*)<2
SELECT Market_Center, COUNT(*) FROM fruits_2019.DAILY_PRICING GROUP BY Market_Center HAVING COUNT(*)=1

--max function

 SELECT MAX (Arrivals_in_tonnes) as max_arrivals_in_tonnes FROM fruits_2019.DAILY_PRICING ;
 SELECT MAX (Minimum_Prices_in_Rs_quintals) as max_price_in_minimun_price_list FROM fruits_2019.DAILY_PRICING ;
 SELECT MAX (Maximum_Prices_in_Rs_quintals) as max_price FROM fruits_2019.DAILY_PRICING ;
 
 --min function
  SELECT Min (Arrivals_in_tonnes) as min_arrival_in_tonnes FROM fruits_2019.DAILY_PRICING ;
  SELECT Min (Minimum_Prices_in_Rs_quintals) as min_price FROM fruits_2019.DAILY_PRICING ;
  SELECT Min (Maximum_Prices_in_Rs_quintals) as min_price_in_max_list FROM fruits_2019.DAILY_PRICING ;

  --performing sum operation
  SELECT SUM (Arrivals_in_tonnes) AS total_tonnes_arrived FROM fruits_2019.DAILY_PRICING ;
  SELECT SUM (Minimum_Prices_in_Rs_quintals) AS total_min_price FROM fruits_2019.DAILY_PRICING ;
  SELECT SUM (Maximum_Prices_in_Rs_quintals) AS total_max_price FROM fruits_2019.DAILY_PRICING ;
  SELECT SUM (Modal_Prices_in_Rs_quintals) AS total_model_price FROM fruits_2019.DAILY_PRICING ;

  --performing averge operation
 SELECT AVG (Arrivals_in_tonnes) as average_of_arrivals_in_tonnes from fruits_2019.DAILY_PRICING ;
 SELECT AVG (Minimum_Prices_in_Rs_quintals) as average_of_min_price from fruits_2019.DAILY_PRICING ;
 SELECT AVG (Maximum_Prices_in_Rs_quintals) as average_of_max_price from fruits_2019.DAILY_PRICING ;
 SELECT AVG (Modal_Prices_in_Rs_quintals) as average_of_model_price from fruits_2019.DAILY_PRICING ;


 --performing max operation for particular group

 SELECT MAX (Arrivals_in_tonnes) as max_arrivals_in_tonnes FROM fruits_2019.DAILY_PRICING WHERE Variety ='Amla';
  SELECT MAX (Arrivals_in_tonnes) as max_arrivals_in_tonnes FROM fruits_2019.DAILY_PRICING WHERE Variety ='Apple';

  SELECT MAX (Arrivals_in_tonnes) as max_arrivals_in_tonnes FROM fruits_2019.DAILY_PRICING WHERE Variety ='Amla'
  AND Market_Center ='Ganaur'
  
  --PERFORMING UNION OPERATION
 
 SELECT Market_Center AS UNION_OF_MARKET_CENTER_AND_VARIETIES FROM fruits_2019.DAILY_PRICING ,
 UNION
 SELECT Variety FROM fruits_2019.DAILY_PRICING
 

