use inventory_management_system;
-- count the products-> fn_ProductCount() ===========================================================

DELIMITER #
CREATE FUNCTION fn_ProductCount() RETURNS INT DETERMINISTIC
BEGIN
	DECLARE productCount INT;
    SELECT COUNT(id) into productCount FROM inventory_management_system.products;
    RETURN productCount;
END #
DELIMITER ;

SELECT fn_ProductCount();


-- count the categories-> fn_CategoriesCount() =====================================================

DELIMITER #
CREATE FUNCTION fn_CategoriesCount() RETURNS INT DETERMINISTIC
BEGIN
	DECLARE categoriesCount INT;
    SELECT COUNT(id) INTO categoriesCount FROM inventory_management_system.categories;
    RETURN categoriesCount;
END #
DELIMITER ;

SELECT fn_CategoriesCount();