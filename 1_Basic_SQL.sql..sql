/*------------------------------------------
    AGGREGATE FUNCTIONS
------------------------------------------*/

-- Question 11: Count the total number of sales.
SELECT COUNT(*) AS total_sales
FROM sales_data;


-- Question 12: Find the total sales amount.
SELECT SUM(Sales_Amount) AS total_sales_amount
FROM sales_data;


-- Question 13: Find the average sales amount.
SELECT AVG(Sales_Amount) AS average_sales_amount
FROM sales_data;


-- Question 14: Find the highest and lowest sales amount.
SELECT
    MAX(Sales_Amount) AS highest_sales,
    MIN(Sales_Amount) AS lowest_sales
FROM sales_data;


-- Question 15: Count how many sales happened in each region.
SELECT
    Region,
    COUNT(*) AS total_sales
FROM sales_data
GROUP BY Region;


-- Question 16: Find the total sales amount for each region.
SELECT
    Region,
    SUM(Sales_Amount) AS total_sales
FROM sales_data
GROUP BY Region;


-- Question 17: Show only those regions where the total sales amount is greater than 50,000.
SELECT
    Region,
    SUM(Sales_Amount) AS total_sales
FROM sales_data
GROUP BY Region
HAVING SUM(Sales_Amount) > 50000;


-- Question 18: Find the total number of products sold in each category.
SELECT
    Category,
    SUM(Quantity_Sold) AS total_products_sold
FROM sales_data
GROUP BY Category;


-- Question 19: Find the average sales amount for each Sales_Rep.
SELECT
    Sales_Rep,
    AVG(Sales_Amount) AS average_sales
FROM sales_data
GROUP BY Sales_Rep;


-- Question 20: Show the top-selling region based on total sales amount.
SELECT
    Region,
    SUM(Sales_Amount) AS total_sales
FROM sales_data
GROUP BY Region
ORDER BY total_sales DESC
LIMIT 1;