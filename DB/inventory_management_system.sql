-- count the products-> fn_ProductCount()

DELIMITER #
CREATE FUNCTION fn_ProductCount() RETURNS INT DETERMINISTIC
BEGIN
	DECLARE productCount INT;
    SELECT COUNT(id) into productCount FROM inventory_management_system.products;
    RETURN productCount;
END #
DELIMITER ;

SELECT fn_ProductCount();


-- ============================================================================================