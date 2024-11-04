use inventory_management_system;
-- 1 count the products-> fn_ProductCount() ===========================================================

DELIMITER #
CREATE FUNCTION fn_ProductCount() RETURNS INT DETERMINISTIC
BEGIN
	DECLARE productCount INT;
    SELECT COUNT(id) into productCount FROM inventory_management_system.products;
    RETURN productCount;
END #
DELIMITER ;

SELECT fn_ProductCount();


-- 2 count the categories-> fn_CategoriesCount() =====================================================

DELIMITER #
CREATE FUNCTION fn_CategoriesCount() RETURNS INT DETERMINISTIC
BEGIN
	DECLARE categoriesCount INT;
    SELECT COUNT(id) INTO categoriesCount FROM inventory_management_system.categories;
    RETURN categoriesCount;
END #
DELIMITER ;

SELECT fn_CategoriesCount();

-- 3 count the Orders-> fn_OrdersCount() =====================================================

DELIMITER #
CREATE FUNCTION fn_OrdersCount() RETURNS INT DETERMINISTIC
BEGIN
	DECLARE ordersCount INT;
    SELECT COUNT(id) INTO ordersCount FROM inventory_management_system.categories;
    RETURN ordersCount;
END #
DELIMITER ;

SELECT fn_OrdersCount();

-- 4 count the Purchases-> fn_PurchsesCount() =====================================================

DELIMITER #
CREATE FUNCTION fn_PurchsesCount() RETURNS INT DETERMINISTIC
BEGIN
	DECLARE purchsesCount INT;
    SELECT COUNT(id) INTO purchsesCount FROM inventory_management_system.purchases;
    RETURN purchsesCount;
END #
DELIMITER ;

SELECT fn_PurchsesCount();


-- 5 count the Today Purchases-> fn_TodayPurchsesCount() =====================================================

DELIMITER #
CREATE FUNCTION fn_TodayPurchsesCount() RETURNS INT DETERMINISTIC
BEGIN
	DECLARE todayPurchsesCount INT;
    SELECT COUNT(id) INTO todayPurchsesCount FROM inventory_management_system.purchases WHERE STR_TO_DATE(date, '%Y-%m-%d') = current_date();
    RETURN todayPurchsesCount;
END #
DELIMITER ;

SELECT fn_TodayPurchsesCount();

-- 6 count the Quotations-> fn_QuotationsCount() =====================================================

DELIMITER #
CREATE FUNCTION fn_QuotationsCount() RETURNS INT DETERMINISTIC
BEGIN
	DECLARE quotationsCount INT;
    SELECT COUNT(id) INTO quotationsCount FROM inventory_management_system.quotations;
    RETURN quotationsCount;
END #
DELIMITER ;

SELECT fn_QuotationsCount();


-- 7 count the Today Quotations-> fn_TodayQuotationsCount() =====================================================

DELIMITER #
CREATE FUNCTION fn_TodayQuotationsCount() RETURNS INT DETERMINISTIC
BEGIN
	DECLARE todayQuotationsCount INT;
    SELECT COUNT(id) INTO todayQuotationsCount FROM inventory_management_system.quotations 
        WHERE STR_TO_DATE(date, '%Y-%m-%d') = current_date();
    RETURN todayQuotationsCount;
END #
DELIMITER ;

SELECT fn_TodayQuotationsCount();

-- indexes --
CREATE INDEX idx_product_name ON products(name);

CREATE UNIQUE INDEX idx_unique_invoice_no ON orders(invoice_no);