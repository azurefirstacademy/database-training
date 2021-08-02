--creating schema

create schema storageDtata 

--creating table

create table dailyPricing(TypeOfProduct varchar(100),
MarketCenter varchar(100),
ArraivalsInTones decimal(12,2),
UnitOfArraivals varchar(100),
Origin char(100),
Variety varchar(100),
MinimumPriceInRsQuintals decimal(12,2),
MaximumPricesInRsQuintals decimal(12,2),
ModalPricesInRsQuintals decimal(12,2),
UnitOfPrice varchar(100));

--alter table

alter table dailyPricing add priceDate date

--data modification

--inserting Data In Table

insert into dailyPricing values ('vegitables','badami',7,'tonnes','NR','Alasande Gram',5700,5700,5700,'rs/quintal','01/10/2019')
insert into dailyPricing values ('vegitables','Hubli(Amaragol)',4,'tonnes','NR','Alasande Gram',5650,5620,5560,'rs/quintal','01/10/2019')
insert into dailyPricing values ('vegitables','Laxmeshwar',1,'tonnes','NR','Alasande Gram',2950,5659,4737,'rs/quintal','01/10/2019')
insert into dailyPricing values ('vegitables','Kurnool',0.2,'tonnes','NR','Local',5910,5910,5910,'rs/quintal','01/10/2019')
insert into dailyPricing values ('vegitables','Kawardha',1.8,'tonnes','NR','Other',6000,6250,6000,'rs/quintal','01/10/2019')
insert into dailyPricing values ('vegitables','Kawardha',1.8,'tonnes','NR','Other',6000,6250,6000,'rs/quintal','01/10/2019')
insert into dailyPricing values ('vegitables','Amreli',4.7,'tonnes','NR','Hybrit',3000,5650,5095,'rs/quintal','01/10/2019')
insert into dailyPricing values ('vegitables','Bhiloda',0.01,'tonnes','NR','Others',5000,5500,5250,'rs/quintal','01/10/2019')
insert into dailyPricing values ('vegitables','Botad',3.6,'tonnes','NR','Other',4250,5455,44855,'rs/quintal','01/10/2019')
insert into dailyPricing values ('vegitables','Dahod',7.7,'tonnes','NR','Arhar(whole)',4800,5100,5000,'rs/quintal','01/10/2019')

--Updating Rows In Table
Update dailyPricing set MarketCenter='badami' where MarketCenter='Amreli'

--Deleting Row I n Table
delete from dailyPricing where MarketCenter='Dahod'

--selecting whole table
select * from dailyPricing

--SelectingPerticularColumn
select Origin from dailyPricing

--conditional selection
select MarketCenter,ArraivalsInTones,UnitOfArraivals from dailyPricing where Variety='Alasande Gram'

--SelectionAndTransmission
select upper(variety),lower(Origin) from dailyPricing

--SelectionTransmissionAliasing
select upper(ORIGIN) as origin,lower(variety) as VARIETY from dailyPricing

--SelectAndGrouping
select Origin ,count(*) from dailyPricing group by Origin

--SelectingAndConditionalGrouping
select ArraivalsInTones, count (*) from dailyPricing group by ArraivalsInTones having count (*)<5