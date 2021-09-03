SELECT * FROM source_data.DAILY_PRICING

SELECT DISTINCT ProductGroupName into source_data.PRODUCT_GROUP from source_data.DAILY_PRICING
ALTER TABLE [spices].[source_data].[PRODUCT_GROUP]
ADD ProductGroupKey int identity(1,1); 
ALTER TABLE [spices].[source_data].[PRODUCT_GROUP]
ADD	PRIMARY KEY(ProductGroupKey);
SELECT * FROM [source_data].[PRODUCT_GROUP]
SELECT DISTINCT ProductName into source_data.PRODUCT from source_data.DAILY_PRICING
ALTER TABLE [spices].[source_data].[PRODUCT]
ADD ProductKey int identity(1,1);
ALTER TABLE [spices].[source_data].[PRODUCT]
ADD PRIMARY KEY(ProductKey);
SELECT * FROM [source_data].[PRODUCT]
SELECT DISTINCT StateName into source_data.STATE_ from source_data.DAILY_PRICING
ALTER TABLE [spices].[source_data].[STATE_]
ADD StateKey int identity(1,1);
ALTER TABLE [spices].[source_data].[STATE_]
ADD PRIMARY KEY(StateKey);
SELECT * FROM source_data.STATE_
SELECT DISTINCT Market_Center into source_data.MARKET from source_data.DAILY_PRICING
ALTER TABLE [spices].[source_data].[MARKET]
ADD MarketKey int identity(1,1);
ALTER TABLE[spices].[source_data].[MARKET]
ADD PRIMARY KEY(MarketKey);
SELECT * FROM source_data.MARKET
SELECT DISTINCT Unit_of_Arrivals into source_data.ARRIVAL from source_data.DAILY_PRICING
ALTER TABLE[spices].[source_data].[ARRIVAL]
ADD ArrivalKey int identity(1,1);
ALTER TABLE[spices].[source_data].[ARRIVAL]
ADD PRIMARY KEY(ArrivalKey);
SELECT * FROM source_data.ARRIVAL
SELECT DISTINCT Variety into source_data.VARIETY from source_data.DAILY_PRICING
ALTER TABLE[spices].[source_data].[VARIETY]
ADD VarietyKey int identity(1,1);
ALTER TABLE[spices].[source_data].[VARIETY]
ADD PRIMARY KEY(VarietyKey);
SELECT * FROM source_data.VARIETY
SELECT DISTINCT Unit_of_Price into source_data.PRICE from source_data.DAILY_PRICING
ALTER TABLE[spices].[source_data].[PRICE]
ADD PriceKey int identity(1,1);
ALTER TABLE[spices].[source_data].[PRICE]
ADD PRIMARY KEY(PriceKey);
SELECT * FROM source_data.PRICE
SELECT DISTINCT price_date into source_data.DATE_ from source_data.DAILY_PRICING
ALTER TABLE[spices].[source_data].[DATE_]
ADD DateKey int identity(1,1);
ALTER TABLE [spices].[source_data].[DATE_]
ADD PRIMARY KEY(DateKey);
SELECT * FROM source_data.DATE_
SELECT ProductGroupKey,ProductKey,StateKey,MarketKey,Arrivals_in_tonnes,
ArrivalKey,Origin,VarietyKey, Minimum_Prices_in_Rs_quintals, Maximum_Prices_in_Rs_quintals,
Modal_Prices_in_Rs_quintals, PriceKey, DateKey  into source_data.DAILY_PRICING_NEW1 from source_data.DAILY_PRICING
INNER JOIN source_data.PRODUCT_GROUP ON DAILY_PRICING.ProductGroupName = source_data.PRODUCT_GROUP.ProductGroupName
INNER JOIN source_data.PRODUCT ON DAILY_PRICING.ProductName = source_data.PRODUCT.ProductName
INNER JOIN source_data.STATE_ ON DAILY_PRICING.StateName = source_data.STATE_.StateName
INNER JOIN source_data.MARKET ON DAILY_PRICING.Market_Center = source_data.MARKET.Market_Center
INNER JOIN source_data.ARRIVAL ON DAILY_PRICING.Unit_of_Arrivals = source_data.ARRIVAL.Unit_of_Arrivals
INNER JOIN source_data.VARIETY ON DAILY_PRICING.Variety = source_data.VARIETY.Variety
INNER JOIN source_data.PRICE ON DAILY_PRICING.Unit_of_Price = source_data.PRICE.Unit_of_Price
INNER JOIN source_data.DATE_ ON DAILY_PRICING.price_date = source_data.DATE_.price_date

SELECT * FROM source_data.DAILY_PRICING_NEW1


