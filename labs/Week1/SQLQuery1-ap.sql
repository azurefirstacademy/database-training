create schema source_data

create TABLE source_data.DAILY_PRICING (
ProductGroupName varchar(100),
ProductName varchar(100),
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

go
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
go
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
go
Insert into source_data.DAILY_PRICING
(
ProductGroupName,
ProuductName,
statename,
Market_Center,
price_date
)
values (
'Cereals',
'Amphophalus',
'Kerala',
'Aroor',
'01/01/2019'
)
go

Update source_data.DAILY_PRICING
Set
Arrivals_in_Tonnes=0.2,
Unit_of_Arrivals='Tonnes',
Origin='NR',
Variety='Amphophalus',
Minimum_Prices_in_Rs_Quintals=2000,
maximum_Prices_in_Rs_Quintals=2200,
Modal_Prices_in_Rs_Quintals=2100,
Unit_of_Prices='Rs/Quintal'
where
Market_Center='Aroor'

go
insert into source_data.DAILY_PRICING values (
'Cereals',
'Amphophalus',
'Kerala',
'Chengannu',
2.5,
'Tonnes',
'NR',
'Other',
2300,
2600,
2500,
'Rs/Quintal',
'01/01/2019'
)
go

Insert into source_data.DAILY_PRICING values (
'Cereals',
'Amphophalus',
'Kerala',
'Ernakulam',
0.25,
'Tonnes',
'NR',
'Amphophalus',
1600,
2300,
2000,
'Rs/Quintal',
'01/01/2019'
)
go

Insert into source_data.DAILY_PRICING
(
ProductGroupName,
ProuductName,
statename,
Market_Center,
price_date
)
Values (
'Cereals',
'Amphophalus',
'Kerala',
'Harippad',
'01/01/2019'
)
go

update source_data.DAILY_PRICING
set
Arrivals_in_Tonnes=1,
Unit_of_Arrivals='Tonnes',
Origin='NR',
Variety='Other',
Minimum_Prices_in_Rs_Quintals=3500,
maximum_Prices_in_Rs_Quintals=4000,
Modal_Prices_in_Rs_Quintals=4000,
Unit_of_Prices='Rs/Quintal'
where
Market_Center='Harippad'
go

Insert into source_data.DAILY_PRICING values (
'Cereals',
'Amphophalus',
'Kerala',
'Kallachi',
0.4,
'Tonnes',
'NR',
'Amphophalus',
2600,
3000,
2800,
'Rs/Quintal',
'01/01/2019'
)
go

Insert into source_data.DAILY_PRICING values(
'Cereals',
'Amphophalus',
'Kerala',
'Kanjirappally',
1.25,
'Tonnes',
'NR',
'Other',
2500,
3000,
2800,
'Rs/Quintal',
'01/01/2019'
)
go

Insert into source_data.DAILY_PRICING 
(
ProductGroupName,
ProuductName,
statename,
Market_Center,
price_date
)
Values
(
'Cereals',
'Amphophalus',
'Kerala',
'Kayamkulam',
'01/01/2019'
)
go
Update source_data.DAILY_PRICING
set
Arrivals_in_Tonnes=2,
Unit_of_Arrivals='Tonnes',
Origin='NR',
Variety='Other',
Minimum_Prices_in_Rs_Quintals=2100,
maximum_Prices_in_Rs_Quintals=2300,
Modal_Prices_in_Rs_Quintals=2200,
Unit_of_Prices='Rs/Quintal'
where
Market_Center='Kayamkulam'
go

Insert into source_data.DAILY_PRICING values (
'Cereals',
'Amphophalus',
'Kerala',
'Kollam',
0.5,
'Tonnes',
'NR',
'Other',
2000,
2200,
2100,
'Rs/Quintal',
'01/01/2019'
)

select * from source_data.DAILY_PRICING
