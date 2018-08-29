SELECT code, Description, ListPrice
 FROM product
-- WHERE ProductID = 5;
	WHERE ListPrice = 57.50
	AND code = 'java';
    
SELECT * FROM product
	WHERE ListPrice < 55;
    
SELECT * FROM product
	ORDER by Description;
    
SELECT max(ListPrice) FROM product;

SELECT count(ListPrice) FROM product
	where ListPrice = 57.50;
