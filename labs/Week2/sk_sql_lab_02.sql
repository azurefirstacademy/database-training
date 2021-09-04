--MAIN TABLE

select * from source_data.DAILY_PRICING;

--CREATING NORMALIZED TABLES

select distinct productgroupname into source_data.productgroup from source_data.daily_pricing;
alter table source_data.productgroup add product_group_key int identity(1,1) not null primary key;
select * from source_data.productgroup;

select distinct productname into source_data.product from source_data.daily_pricing;
alter table source_data.product add product_key int identity primary key;
select * from source_data.product;

select distinct statename into source_data.state_table from source_data.daily_pricing;
alter table source_data.state_table add state_key int identity(1,1) primary key;
select * from source_data.state_table;

select distinct market_center into source_data.market from source_data.daily_pricing;
alter table source_data.market add market_key int identity(1,1) primary key;
select * from source_data.market;

select distinct unit_of_arrivals into source_data.arrival_unit from source_data.daily_pricing;
alter table source_data.arrival_unit add unit_key int identity(1,1) primary key;
select * from source_data.arrival_unit;

select distinct origin into source_data.product_origin from source_data.daily_pricing;
alter table source_data.product_origin add origin_key int identity(1,1) primary key;
select * from source_data.product_origin;

select distinct variety into source_data.product_variety from source_data.daily_pricing;
alter table source_data.product_variety add variety_key int identity(1,1) primary key;
select * from source_data.product_variety;

select distinct unit_of_price into source_data.price_unit from source_data.daily_pricing;
alter table source_data.price_unit add price_unit_key int identity(1,1) primary key;
select * from source_data.price_unit;

select distinct arrival_date into source_data.incoming_date from source_data.daily_pricing;
alter table source_data.incoming_date add date_key int identity(1,1) primary key;
select * from source_data.incoming_date;

--CREATING MAIN KEY TABLE

 create table source_data.daily_pricing_main(
productgroupname int foreign key references source_data.productgroup (product_group_key)
,productname int foreign key references source_data.product (product_key)
,statename int foreign key references source_data.state_table (state_key)
,market_center int foreign key references source_data.market (market_key)
,arrivals_in_tonnes decimal(16,2)
,unit_of_arrivals int foreign key references source_data.arrival_unit (unit_key)
,origin  int foreign key references source_data.product_origin (origin_key)
,variety  int foreign key references source_data.product_variety (variety_key)
,minimum_price_in_rs_quintals decimal(16,2) 
,maximum_price_in_rs_quintals decimal(16,2)
,modal_price_in_rs_quintals decimal(16,2)
,unit_of_price int foreign key references source_data.price_unit (price_unit_key)
,arrival_date int foreign key references source_data.incoming_date (date_key)
);

select * from source_data.daily_pricing_main;

--INSERTING VALUES

insert into source_data.daily_pricing_main
select product_group_key,product_key,state_key,market_key 
,arrivals_in_tonnes,unit_key,origin_key,variety_key,minimum_prices_in_rs_quintals
,maximum_prices_in_rs_quintals,Modal_Prices_in_Rs_quintals,price_unit_key,date_key 
from source_data.daily_pricing as main
inner join source_data.productgroup on main.productgroupname=productgroup.productgroupname
inner join source_data.product on main.productname=product.productname
inner join source_data.state_table on main.statename=state_table.statename
inner join source_data.market on main.market_center=market.market_center
inner join source_data.product_origin on main.origin=product_origin.origin
inner join source_data.arrival_unit on main.unit_of_arrivals=arrival_unit.unit_of_arrivals
inner join source_data.product_variety on main.variety=product_variety.variety
inner join source_data.incoming_date on main.arrival_date=incoming_date.arrival_date
inner join source_data.price_unit on main.unit_of_price=price_unit.unit_of_price

select * from source_data.daily_pricing_main;