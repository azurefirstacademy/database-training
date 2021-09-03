SELECT * FROM demo.DAILY_PRICING

SELECT DISTINCT ProductGroupName into demo.Product_Group_Name from demo.DAILY_PRICING
ALTER TABLE [master].[demo].[Product_Group_Name]
ADD ProductGroupKey int identity(1,1); 
ALTER TABLE [master].[demo].[Product_Group_Name]
ADD	PRIMARY KEY(ProductGroupKey);
SELECT * FROM [master].[demo].[Product_Group_Name]

SELECT DISTINCT ProductName into demo.Product_Name from demo.DAILY_PRICING
ALTER TABLE [demo].[Product_Name]
ADD ProductKey int identity(1,1); 
ALTER TABLE [demo].[Product_Name]
ADD	PRIMARY KEY(ProductKey);
SELECT * FROM [demo].[Product_Group_Name]

SELECT DISTINCT StateName into demo.State_Name from demo.DAILY_PRICING
ALTER TABLE [demo].[State_Name]
ADD StateKey int identity(1,1); 
ALTER TABLE [demo].[State_Name]
ADD	PRIMARY KEY(StateKey);
SELECT * FROM [demo].[State_Name]

SELECT DISTINCT Market_Center into demo.Markets from demo.DAILY_PRICING
ALTER TABLE [demo].[Markets]
ADD MarketKey int identity(1,1); 
ALTER TABLE [demo].[Markets]
ADD	PRIMARY KEY(MarketKey);
SELECT * FROM [demo].[Markets]

SELECT DISTINCT Unit_of_Arrivals into demo.ARRIVALS from demo.DAILY_PRICING
ALTER TABLE .[demo].[ARRIVALS]
ADD ArrivalKey int identity(1,1);
ALTER TABLE [demo].[ARRIVALS]
ADD PRIMARY KEY(ArrivalKey);
SELECT * FROM demo.ARRIVALS

SELECT DISTINCT Variety into demo.VARIETY1 from demo.DAILY_PRICING
ALTER TABLE [demo].[VARIETY1]
ADD VarietyKey int identity(1,1);
ALTER TABLE [demo].[VARIETY1]
ADD PRIMARY KEY(VarietyKey);
SELECT * FROM demo.VARIETY1

SELECT DISTINCT Unit_of_Price into demo.PRICES from demo.DAILY_PRICING
ALTER TABLE [demo].[PRICES]
ADD PriceKey int identity(1,1);
ALTER TABLE [demo].[PRICES]
ADD PRIMARY KEY(PriceKey);
SELECT * FROM .demo.PRICES

SELECT DISTINCT Price_Date into demo.PRICEDATE from demo.DAILY_PRICING
ALTER TABLE [demo].[PRICEDATE]
ADD DateKey int identity(1,1);
ALTER TABLE [demo].[PRICEDATE]
ADD PRIMARY KEY(DateKey);
SELECT * FROM .demo.PRICEDATE

select ProductGroupkey, ProductKey, StateKey, MarketKey,Arrivals_in_Tonnes,ArrivalKey ,Origin,VarietyKey
Minimum_Prices_in_Rs_quintals, Maximum_Prices_in_Rs_quintals, Modal_Prices_in_Rs_quintals, PriceKey,
DateKey into demo.DAILY_PRICING_New3
from demo.DAILY_PRICING
INNER JOIN demo.Product_Group_Name on DAILY_PRICING.ProductGroupName = Product_Group_Name.ProductGroupName
INNER JOIN demo.Product_Name on DAILY_PRICING.ProductName = Product_Name.ProductName
INNER JOIN demo.State_Name on DAILY_PRICING.StateName = State_Name.StateName
INNER JOIN demo.Markets on DAILY_PRICING.Market_Center = Markets.Market_Center
INNER JOIN demo.ARRIVALS on DAILY_PRICING.Unit_of_Arrivals = ARRIVALS.Unit_of_Arrivals
INNER JOIN demo.VARIETY1 on DAILY_PRICING.Variety = VARIETY1.Variety
INNER JOIN demo.PRICES on DAILY_PRICING.Unit_of_Price = PRICES.Unit_of_Price
INNER JOIN demo.PRICEDATE on DAILY_PRICING.Price_Date = PRICEDATE.Price_Date

select * from demo.DAILY_PRICING_New3
