/*------------------------------------------
        WINDOW FUNCTIONS
------------------------------------------*/

-- Question 35: Assign a row number based on highest Sales_Amount.

SELECT *,
    ROW_NUMBER() OVER (ORDER BY Sales_Amount DESC) AS Row_Number
FROM sales_data;


-- Question 36: Rank all sales based on Sales_Amount using RANK().

SELECT *,
    RANK() OVER (ORDER BY Sales_Amount DESC) AS Sales_Rank
FROM sales_data;


-- Question 37: Rank all sales using DENSE_RANK().

SELECT *,
    DENSE_RANK() OVER (ORDER BY Sales_Amount DESC) AS Dense_Rank
FROM sales_data;


-- Question 38: Display each sale along with the average Sales_Amount across all sales using a window function.

SELECT *,
    AVG(Sales_Amount) OVER () AS Average_Sales
FROM sales_data;


-- Question 39: Display each sale and the total sales by its region.

SELECT
    *,
    SUM(Sales_Amount) OVER (PARTITION BY Region) AS Region_Total_Sales
FROM sales_data;


-- Question 40: Show the top 2 highest sales from each region using ROW_NUMBER().

SELECT *
FROM (
    SELECT
        *,
        ROW_NUMBER() OVER (
            PARTITION BY Region
            ORDER BY Sales_Amount DESC
        ) AS Row_Number
    FROM sales_data
) AS ranked_sales
WHERE Row_Number <= 2;