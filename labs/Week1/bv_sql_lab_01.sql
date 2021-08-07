CREATE SCHEMA storage_data


CREATE TABLE storage_data.DAILY_PRICING (ProductGroupName varchar(100),ProductName varchar(100),StateName varchar(100),Market_Center varchar(100),Arrivals_in_tonnes Decimal(16,2),Unit_of_Arrivals char(6),Origin varchar(100),Variety varchar(100),Minimum_Prices_in_Rs_quintals Decimal(16,2),Maximum_Prices_in_Rs_quintals Decimal(16,2),Modal_Prices_in_Rs_quintals Decimal(16,2),Unit_of_Price char(10))





--Alter_Table
Alter Table storage_data.DAILY_PRICING add price_date date

--Data_Modification

--Inserting_Rows_in_Table
INSERT INTO storage_data.DAILY_PRICING values ('Vegetables','Alsandikai','Karnataka','Binny Mill (F&V), Bangalore',2,'Tonnes','NR','Alsandikai',2000,2600,2300,'RsQuintal','01/01/2019')

INSERT INTO storage_data.DAILY_PRICING values ('Vegetables','Amaranthus','Gujarat','Ahmedabad(Rajnagar sub yard)',0.6,'Tonnes','NR','Other',1000,2000,1600,'RsQuintal','01/01/2019')

INSERT INTO storage_data.DAILY_PRICING values ('Vegetables','Amaranthus','Kerala','Aluva',0.7,'Tonnes','NR','Amaranthus',2000,3000,1600,'RsQuintal','01/01/2019')

INSERT INTO storage_data.DAILY_PRICING values ('Vegetables','Amaranthus','Kerala','Angamaly',0.2,'Tonnes','NR','Amaranthus',2000,2600,2300,'RsQuintal','01/01/2019')

INSERT INTO storage_data.DAILY_PRICING values ('Vegetables','Amaranthus','Kerala','Chala',3,'Tonnes','NR','Amaranthus',3700,3751,3728,'RsQuintal','01/01/2019')

INSERT INTO storage_data.DAILY_PRICING values ('Vegetables','Amaranthus','Kerala','Chalakudy',1,'Tonnes','NR','Other',1600,1800,1700,'RsQuintal','01/01/2019')

INSERT INTO storage_data.DAILY_PRICING values ('Vegetables','Amaranthus','Kerala','Ernakulam',0.35,'Tonnes','NR','Amaranthus',1600,2300,2000,'RsQuintal','01/01/2019')

INSERT INTO storage_data.DAILY_PRICING values ('Vegetables','Amaranthus','Kerala','Harippad',0.5,'Tonnes','NR','Other',2000,2500,2500,'RsQuintal','01/01/2019')

INSERT INTO storage_data.DAILY_PRICING values ('Vegetables','Amaranthus','Kerala','Kallachi',0.4,'Tonnes','NR','Amaranthus',2000,2500,2500,'RsQuintal','01/01/2019')

INSERT INTO storage_data.DAILY_PRICING values ('Vegetables','Amaranthus','Kerala','Kanjangadu',0.25,'Tonnes','NR','Other',3000,4000,3500,'RsQuintal','01/01/2019')

INSERT INTO storage_data.DAILY_PRICING values ('Vegetables','Amaranthus','Kerala','Kayamkulam',1,'Tonnes','NR','Other',2100,2300,2200,'RsQuintal','01/01/2019')

--Updating_rows_in_Table
UPDATE storage_data.DAILY_PRICING SET Market_Center = 'Kanjikkode' where Market_Center = 'Kayamkulam'



--Data_Manipulation

--Selecting whole Table
SELECT * FROM storage_data.DAILY_PRICING

--Selecting_particular_columns
SELECT Market_Center,Arrivals_in_tonnes FROM storage_data.DAILY_PRICING

--Conditional_Selection
SELECT Market_Center,Arrivals_in_tonnes FROM storage_data.DAILY_PRICING where Variety='Other'

--Selection_and_Transformation
SELECT Upper(Market_Center),Lower(Variety) FROM storage_data.DAILY_PRICING

--Selection_Transformation_Aliasing
SELECT Upper(Market_Center)as MARKET_CENTER,Lower(Variety) as variety FROM storage_data.DAILY_PRICING

--Selecting_and_Grouping
SELECT Market_Center, COUNT(*) FROM storage_data.DAILY_PRICING GROUP BY Market_Center

--Selecting_and_Conditional_Grouping
SELECT Market_Center, COUNT(*) FROM storage_data.DAILY_PRICING GROUP BY Market_Center HAVING COUNT(*)<2
