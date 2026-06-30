/*------------------------------------------
                JOINS
------------------------------------------*/

-- Question 41: Display all sales along with the product category.

SELECT
    s.Sale_ID,
    s.Product_Name,
    p.Category,
    s.Sales_Amount
FROM sales_data AS s
INNER JOIN products AS p
ON s.Product_ID = p.Product_ID;


-- Question 42: Display Product_Name, Unit_Price and Sales_Amount.

SELECT
    s.Product_Name,
    p.Unit_Price,
    s.Sales_Amount
FROM sales_data AS s
INNER JOIN products AS p
ON s.Product_ID = p.Product_ID;


-- Question 43: Find products that were never sold.

SELECT
    p.Product_ID,
    p.Product_Name
FROM products AS p
LEFT JOIN sales_data AS s
ON p.Product_ID = s.Product_ID
WHERE s.Product_ID IS NULL;


-- Question 44: Display all products even if there is no sale.

SELECT
    p.Product_ID,
    p.Product_Name,
    s.Sales_Amount
FROM products AS p
LEFT JOIN sales_data AS s
ON p.Product_ID = s.Product_ID;


-- Question 45: Count the number of sales for each product.

SELECT
    p.Product_Name,
    COUNT(s.Sale_ID) AS Total_Sales
FROM products AS p
LEFT JOIN sales_data AS s
ON p.Product_ID = s.Product_ID
GROUP BY
    p.Product_Name
ORDER BY
    Total_Sales DESC,
    p.Product_Name;