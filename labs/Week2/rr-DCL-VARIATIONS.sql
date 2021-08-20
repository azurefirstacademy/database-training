GRANT INSERT 
ON SCHEMA :: source_data
TO guest;  

GRANT SELECT 
ON SCHEMA :: source_data
TO guest;

DENY ALTER
ON SCHEMA :: source_data
TO guest;

REVOKE INSERT 
ON SCHEMA :: source_data
TO guest;

GRANT SELECT ON 
OBJECT::source_data.product_price 
TO guest; 

DENY ALTER ON 
OBJECT::source_data.product_price 
TO guest; 

REVOKE INSERT ON 
OBJECT::source_data.product_price 
TO guest; 

GRANT SELECT ON 
OBJECT::source_data.product_price_view
TO guest; 

DENY ALTER ON 
OBJECT::source_data.product_price_view 
TO guest; 

REVOKE INSERT ON 
OBJECT::source_data.product_price_view
TO guest; 

GRANT EXECUTE ON 
OBJECT::<Stored_procedure_name>
TO guest