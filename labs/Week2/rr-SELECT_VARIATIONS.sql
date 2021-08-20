SELECT * FROM 
source_data.product_price

SELECT 
productname,
statename,
market_center
FROM 
source_data.product_price

SELECT DISTINCT
statename,
market_center
FROM 
source_data.product_price

SELECT 
UPPER(statename),
UPPER(market_center)
FROM 
source_data.product_price

SELECT 
UPPER(statename) as statename_upper,
UPPER(market_center) as market_center_upper
FROM 
source_data.product_price

SELECT *
FROM
source_data.product_price
WHERE statename='TAMILNADU'

INSERT INTO 
source_data.product_price_tamilnadu
SELECT *
FROM
source_data.product_price
WHERE statename='TAMILNADU'

SELECT * INTO 
source_data.product_price_kerala
FROM
source_data.product_price
WHERE statename='Kerala'

SELECT
productname,
count(*)
FROM
source_data.product_price
GROUP BY
productname

SELECT
productname,
MIN(Minimum_Price),
MAX(Minimum_Price)
FROM
source_data.product_price
GROUP BY
productname
HAVING MAX(Minimum_Price) > 10000

SELECT *
FROM
source_data.product_price
WHERE Minimum_Price =(
SELECT
MAX(Minimum_Price)
FROM
source_data.product_price
GROUP BY
productname
HAVING MAX(Minimum_Price) > 10000
)

SELECT * 
FROM 
[source_data].[product_price_kerala]
UNION ALL
SELECT * 
FROM 
[source_data].[product_price_tamilnadu]