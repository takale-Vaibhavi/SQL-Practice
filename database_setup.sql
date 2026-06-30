/*------------------------------------------
        BASIC SQL QUESTIONS
------------------------------------------*/

-- Question 1: Display all columns from the sales_data table.
SELECT *
FROM sales_data;

-- Question 2: Display Product_Name, Sales_Rep and Sales_Amount.
SELECT Product_Name,Sales_Rep,Sales_Amount
FROM sales_data;

-- Question 3: Show all sales where Region = 'West'.
SELECT *
FROM sales_data
WHERE Region = 'West';

-- Question 4: Find all sales where Sales_Amount > 20000.
SELECT *
FROM sales_data
WHERE Sales_Amount > 20000;

-- Question 5: Show sales where Region = 'North' AND Sales_Amount > 5000.
SELECT *
FROM sales_data
WHERE Region = 'North' AND Sales_Amount > 5000;

-- Question 6: Display all products belonging to the Electronics category.
SELECT *
FROM sales_data
WHERE Category = 'Electronics';

-- Question 7: Show sales where Customer_Type = 'New'.
SELECT *
FROM sales_data
WHERE Customer_Type = 'New';

-- Question 8: Sort all sales by Sales_Amount in descending order.
SELECT *
FROM sales_data
ORDER BY Sales_Amount DESC;

-- Question 9: Display all distinct regions.
SELECT DISTINCT Region
FROM sales_data;

-- Question 10: Show the top 5 highest sales based on Sales_Amount.
SELECT *
FROM sales_data
ORDER BY Sales_Amount DESC
LIMIT 5;
