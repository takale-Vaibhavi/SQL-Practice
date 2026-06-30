/*------------------------------------------
        CASE STATEMENTS
------------------------------------------*/

-- Question 21: Create a new column Sales_Status.
/* High -> Sales_Amount > 50000
 Medium -> Sales_Amount between 10000 and 50000
 Low -> Otherwise */

SELECT
    Sales_Amount,
    CASE
        WHEN Sales_Amount > 50000 THEN 'High'
        WHEN Sales_Amount BETWEEN 10000 AND 50000 THEN 'Medium'
        ELSE 'Low'
    END AS Sales_Status
FROM sales_data;


-- Question 22: Create a new column Customer_Category.
/* Loyal -> Customer_Type = 'Regular'
 New Customer -> Customer_Type = 'New'*/

SELECT
    Customer_Type,
    CASE
	
        WHEN Customer_Type = 'Regular' THEN 'Loyal'
        ELSE 'New Customer'
    END AS Customer_Category
FROM sales_data;


-- Question 23: Display Product_Name, Sales_Amount and Bonus.
/*10% Bonus if Sales_Amount > 30000
5% Bonus otherwise*/

SELECT Product_Name, Sales_Amount,
CASE
	WHEN Sales_Amount > 30000 THEN Sales_Amount * 0.10
    ELSE Sales_Amount * 0.05
    END AS Bonus
FROM sales_data;


-- Question 24: Display all sales with a Performance column.
/* Excellent -> Quantity_Sold >= 5
 Good -> Quantity_Sold between 3 and 4
 Poor -> Quantity_Sold < 3 */

SELECT*,
CASE
	WHEN Quantity_Sold >= 5 THEN 'Excellent'
    WHEN Quantity_Sold BETWEEN 3 AND 4 THEN 'Good'
    ELSE 'Poor'
    END AS Performance
FROM sales_data;