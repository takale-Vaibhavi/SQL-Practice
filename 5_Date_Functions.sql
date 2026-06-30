/*------------------------------------------
          DATE FUNCTIONS
------------------------------------------*/

-- Question 30: Display all sales made in January 2024.

SELECT *
FROM sales_data
WHERE Sale_Date BETWEEN '2024-01-01' AND '2024-01-31';


-- Question 31: Display Product_Name, Sale_Date, Year and Month.

SELECT Product_Name,  Sale_Date,
    EXTRACT(YEAR FROM Sale_Date) AS Sales_Year,
    EXTRACT(MONTH FROM Sale_Date) AS Sales_Month
FROM sales_data;


-- Question 32: Count how many sales occurred in each month.

SELECT
EXTRACT(MONTH FROM Sale_Date) AS Sales_Month,
COUNT(*) AS Total_Sales
FROM sales_data
GROUP BY EXTRACT(MONTH FROM Sale_Date)
ORDER BY Sales_Month;


-- Question 33: Find the latest sale.

SELECT MAX(Sale_Date) AS Latest_Sale
FROM sales_data;


-- Question 34: Find the earliest sale.

SELECT MIN(Sale_Date) AS Earliest_Sale
FROM sales_data;