create schema source_data

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
Unit_of_Price char(10)
)

Alter Table source_data.DAILY_PRICING add price_date date

INSERT INTO source_data.DAILY_PRICING values (
'Fruits',
'Amla(Nelli Kai)',
'Gujarat',
'Ahmedabad',
32.3,
'Tonnes',
'NR',
'Other',
1000,
2500,
1800,
'Rs/Quintal',
'01/01/2019'
)

select * from source_data.DAILY_PRICING

INSERT INTO source_data.DAILY_PRICING values (
'vegetables',
'Amla(Nelli Kai)',
'Gujarat',
'Ahmedabad',
32.3,
'Tonnes',
'NR',
'Other',
1000,
2500,
1800,
'Rs/Quintal',
'01/01/2019'
)

select * from source_data.DAILY_PRICING

DELETE
from
source_data.DAILY_PRICING
where
ProductGroupName='vegetables'

select * from source_data.DAILY_PRICING




INSERT INTO source_data.DAILY_PRICING values (
'Fruits',
'Apple',
'Chattisgarh',
'Durg',
28,
'Tonnes',
'NR',
'Other',
7000,
9000,
8000,
'Rs/Quintal',
'01/01/2019'
)

select * from source_data.DAILY_PRICING



INSERT INTO source_data.DAILY_PRICING values (
'Fruits',
'Banana',
'Andhra Pradesh',
'Ambajipeta',
5.4,
'Tonnes',
'NR',
'Banana-Ripe',
360,
900,
600,
'Rs/Quintal',
'01/01/2019'
)

select * from source_data.DAILY_PRICING



INSERT INTO source_data.DAILY_PRICING values (
'Fruits',
'Ber(Zizyphus/Borehannu)',
'Haryana',
'Cheeka',
0.01,
'Tonnes',
'NR',
'Other',
4000,
4000,
4000,
'Rs/Quintal',
'01/01/2019'
)

select * from source_data.DAILY_PRICING


INSERT INTO source_data.DAILY_PRICING values (
'Fruits',
'Chikoos(Sapota)',
'Kerala',
'Manjeri',
2,
'Tonnes',
'NR',
'Other',
2400,
2500,
2450,
'Rs/Quintal',
'01/01/2019'
)

select * from source_data.DAILY_PRICING


INSERT INTO source_data.DAILY_PRICING values (
'Fruits',
'Grapes',
'Haryana',
'Sirsa',
1,
'Tonnes',
'NR',
'Other',
6500,
9000,
8000,
'Rs/Quintal',
'01/01/2019'
)

select * from source_data.DAILY_PRICING


INSERT INTO source_data.DAILY_PRICING values (
'Fruits',
'Guava',
'Punjab',
'Bariwala',
0.03,
'Tonnes',
'NR',
'Other',
1500,
1900,
1700,
'Rs/Quintal',
'01/01/2019'
)

select * from source_data.DAILY_PRICING


INSERT INTO source_data.DAILY_PRICING values (
'Fruits',
'Karbuja(Musk Melon)',
'Telengana',
'Gaddiannaram',
4,
'Tonnes',
'NR',
'Karbhuja',
400,
1100,
700,
'Rs/Quintal',
'01/01/2019'
)

select * from source_data.DAILY_PRICING


INSERT INTO source_data.DAILY_PRICING values (
'Fruits',
'Kinnow',
'Jammu and Kashmir',
'Samba',
2.5,
'Tonnes',
'NR',
'Kinnow',
1800,
2200,
2000,
'Rs/Quintal',
'01/01/2019'
)

select * from source_data.DAILY_PRICING




INSERT INTO source_data.DAILY_PRICING
(
StateName,
Market_Center,
Arrivals_in_tonnes,
Unit_of_Arrivals,
Origin,
Variety,
Minimum_Prices_in_Rs_quintals,
Maximum_Prices_in_Rs_quintals,
Modal_Prices_in_Rs_quintals,
Unit_of_Price,
price_date
)
values(
'Maharashtra',
'Pune',
1,
'Tonnes',
'NR',
'Other',
5000,
13500,
8200,
'Rs/Quintal',
'01/01/2019'
)
select * from source_data.DAILY_PRICING


UPDATE source_data.DAILY_PRICING
SET
ProductGroupName='Fruits',
ProductName='Pear(Marasebu)'
where
Market_Center='Pune'
select * from source_data.DAILY_PRICING
