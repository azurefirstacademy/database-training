drop table if exists source_data.creaters;

create table  source_data.creaters(
initials char(3),
fullname varchar(50),
ProductGroupName Varchar(500))

Insert into source_data.creaters values('ap','Aishwarya','Cereals,Drug and Narcotics,Dry Fruits')
Insert into source_data.creaters values('aj','Arun','Fibre Crops,Flowers and Forest Products')
Insert into source_data.creaters values('ev','Eavera','Fruits')
Insert into source_data.creaters values('lt','Logavani','Live Stock,Poultry,Fisheries')
Insert into source_data.creaters values('sk','Sanjay','Oils and Fats, Other')
Insert into source_data.creaters values('skk','Sankarkumar','Pulses')
Insert into source_data.creaters values('sb','Sowmya','Spices')
Insert into source_data.creaters values('vb','Vignesh','Vegetables')
Insert into source_data.creaters values('rd','Dinesh','Fruits')

select * from source_data.creaters