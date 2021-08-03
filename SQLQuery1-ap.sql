create schema source_data

create TABLE source_data.DAILY_PRICING (
ProductGroupName varchar(100),
ProuductName varchar(100),
statename varchar(100),
Market_Center varchar(100),
Arrivals_in_Tonnes decimal(16,2),
Unit_of_Arrivals char(6),
Origin varchar(100),
Variety varchar(100),
Minimum_Prices_in_Rs_Quintals decimal(16,2),
maximum_Prices_in_Rs_Quintals decimal(16,2),
Modal_Prices_in_Rs_Quintals decimal(16,2),
Unit_of_Prices char(10)
)
alter Table source_data.DAILY_PRICING add price_date date

select * from source_data.DAILY_PRICING
INSERT INTO source_data.DAILY_PRICING values (
'Cereals',
'Amphophalus',
'Kerala',
'Alappuzha',
1,
'Tonnes',
'NR',
'Other',
2750,
2850,
2800,
'Rs/Quintal',
'01/01/2019'
)
select * from source_data.DAILY_PRICING
Insert into source_data.DAILY_PRICING values (
'Cereals',
'Amphophalus',
'Kerala',
'Angamaly',
0.2,
'Tonnes',
'NR',
'Amphophalus',
3000,
3400,
3200,
'Rs/Quintal',
'01/01/2019'
)
select * from source_data.DAILY_PRICING





