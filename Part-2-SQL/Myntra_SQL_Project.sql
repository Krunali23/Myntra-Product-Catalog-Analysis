-- MYNTRA PRODUCT ANALYSIS --

-- CREATE DATABASE --	

CREATE DATABASE myntra_db;
USE myntra_db;

-- CREATE TABLE -- 

CREATE TABLE myntra_products (
    Product_ID VARCHAR(10) PRIMARY KEY,
    Product_Name VARCHAR(150),
    Brand VARCHAR(50),
    Gende VARCHAR(10),
    Category VARCHAR(20),
    Sub_Category VARCHAR(30),
    MRP DECIMAL(10,2),
    Selling_Price DECIMAL(10,2),
    Discount_Pct INT,
    Rating DECIMAL(3,1),
    Rating_Count DECIMAL(10,0) 
);
SELECT * FROM myntra_products;

-- Q1. Show Nike products priced above Rs 5,000, most expensive first
SELECT Product_ID, Product_Name, Selling_Price, Rating
FROM myntra_products
WHERE Brand = 'Nike' AND Selling_Price > 5000
ORDER BY Selling_Price DESC
LIMIT 5;

-- Q2. Which brands do we sell?
SELECT DISTINCT Brand
FROM myntra_products
ORDER BY Brand;

-- Q3. How many products and what average price does each category have?
SELECT Category,
COUNT(*) AS total_products,
ROUND(AVG(Selling_Price), 0) AS avg_price
FROM myntra_products
GROUP BY Category;

-- Q4. Which brands have more than 100 products?
SELECT Brand, COUNT(*) AS total_products
FROM myntra_products
GROUP BY Brand
HAVING COUNT(*) > 100
ORDER BY total_products DESC;

-- Q5. Label every product as Budget, Mid-range or Premium
SELECT CASE WHEN Selling_Price < 1500 THEN 'Budget'
            WHEN Selling_Price < 4000 THEN 'Mid-range'
            ELSE 'Premium' END AS price_label,
       COUNT(*) AS total_products
FROM myntra_products
GROUP BY price_label
ORDER BY total_products DESC;

-- Q6. Do heavily discounted products (40% or more) get lower ratings?
SELECT CASE WHEN Discount_Pct >= 40 THEN 'High Discount'
            ELSE 'Normal Discount' END AS discount_type,
       COUNT(*) AS total_products,
       ROUND(AVG(Rating), 2) AS avg_rating
FROM myntra_products
GROUP BY discount_type;

-- Q7. Rank brands by total customer ratings
SELECT Brand,
       SUM(Rating_Count) AS total_ratings,
       RANK() OVER (ORDER BY SUM(Rating_Count) DESC) AS brand_rank
FROM myntra_products
GROUP BY Brand
ORDER BY brand_rank
LIMIT 5;

-- Q8. Show a brand’s 5 most-rated products?
DELIMITER //
CREATE PROCEDURE sp_products_by_brand(IN p_brand VARCHAR(50))
BEGIN
    SELECT Product_ID, Product_Name, Selling_Price, Rating, Rating_Count
    FROM myntra_products
    WHERE Brand = p_brand
    ORDER BY Rating_Count DESC
    LIMIT 5;
END //
DELIMITER ;

CALL sp_products_by_brand('Nike');

-- Q9. How many products per category cost more than the overall average price?
SELECT Category, COUNT(*) AS above_avg_products
FROM myntra_products
WHERE Selling_Price > (SELECT AVG(Selling_Price) FROM myntra_products)
GROUP BY Category;

-- Q10. Show only brands whose average rating is above 4.5 ?
SELECT Brand, COUNT(*) AS total_products
FROM myntra_products
WHERE Brand IN (SELECT Brand
                FROM myntra_products
                GROUP BY Brand
                HAVING AVG(Rating) > 4.5)
GROUP BY Brand;