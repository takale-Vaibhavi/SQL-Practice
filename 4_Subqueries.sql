/*------------------------------------------
            SUBQUERIES
------------------------------------------*/

-- Question 25: Find the product(s) having the highest Sales_Amount.

SELECT *
FROM sales_data
WHERE Sales_Amount = (
    SELECT MAX(Sales_Amount)
    FROM sales_data
);


-- Question 26: Find all sales where the Sales_Amount is greater than the average Sales_Amount.

SELECT *
FROM sales_data
WHERE Sales_Amount > (
    SELECT AVG(Sales_Amount)
    FROM sales_data
);


-- Question 27: Display the Sales_Rep who made the highest sale.

SELECT Sales_Rep
FROM sales_data
WHERE Sales_Amount = (
    SELECT MAX(Sales_Amount)
    FROM sales_data
);


-- Question 28: Find all products whose Sales_Amount is less than the minimum Sales_Amount in the Electronics category.

SELECT Product_Name
FROM sales_data
WHERE Sales_Amount < (
    SELECT MIN(Sales_Amount)
    FROM sales_data
    WHERE Category = 'Electronics'
);


-- Question 29: Find the region having the highest total sales using a subquery.

SELECT Region
FROM sales_data
GROUP BY Region
HAVING SUM(Sales_Amount) >= ALL (
    SELECT SUM(Sales_Amount)
    FROM sales_data
    GROUP BY Region
);