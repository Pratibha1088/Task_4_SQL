SELECT 
    *
FROM
    ecommerce.orders;
SELECT 
    CustomerName
FROM
    ecommerce.orders;
SELECT 
    State
FROM
    ecommerce.orders;
SELECT 
    city
FROM
    ecommerce.orders;
SELECT 
    CustomerName, State, city
FROM
    ecommerce.orders
WHERE
    city = 'Bhopal';
SELECT 
    *
FROM
    ecommerce.orders
WHERE
    State = 'Uttar Pradesh'
ORDER BY CustomerName ASC;
SELECT 
    `Order ID`, CustomerName
FROM
    ecommerce.orders
WHERE
    `Order Date` = '10-03-2018';
SELECT 
    COUNT(`Order ID`) AS Total_Orders
FROM
    ecommerce.orders;
SELECT 
    COUNT(DISTINCT CustomerName) AS UniqueCustomers
FROM
    ecommerce.orders;
SELECT 
    State, COUNT(`Order ID`) AS OrderpereachState
FROM
    ecommerce.orders
GROUP BY State;
SELECT 
    State, COUNT(DISTINCT city) AS UniqueCity
FROM
    ecommerce.orders
GROUP BY State;
SELECT 
    city, COUNT(`Order ID`) AS OrderPerCity
FROM
    ecommerce.orders
GROUP BY city
HAVING COUNT(`Order ID`) > 20;
CREATE VIEW CityOrderCount AS
    SELECT 
        city, COUNT(`Order ID`) AS Numoforders
    FROM
        ecommerce.orders
    GROUP BY city;
SELECT 
    *
FROM
    CityOrderCount;
CREATE VIEW UniqueCustomerLocations AS
    SELECT DISTINCT
        CustomerName, State
    FROM
        ecommerce.orders;
SELECT 
    *
FROM
    UniqueCustomerLocations;
SELECT 
    O.`Order ID`,
    O.CustomerName,
    O.`Order Date`,
    D.Amount,
    D.Profit
FROM
    ecommerce.orders O
        INNER JOIN
    ecommerce.details D ON O.`Order ID` = D.`Order ID`;
SELECT 
    orders.CustomerName, details.Category
FROM
    ecommerce.orders
        INNER JOIN
    ecommerce.details ON orders.`Order ID` = details.`Order ID`;
SELECT 
    O.`Order ID`,
    O.CustomerName,
    O.`Order Date`,
    D.Amount,
    D.Profit
FROM
    ecommerce.orders O
        LEFT JOIN
    ecommerce.details D ON O.`Order ID` = D.`Order ID`;
SELECT
    O.`Order ID`,
    O.CustomerName,
    CASE
	WHEN D.`Order ID` IS NULL THEN  'No matching details found'
    ELSE 'Details Available'
    END AS 'OrderDetailsStatus'
FROM
    ecommerce.orders O
LEFT JOIN
    ecommerce.details D ON O.`Order ID` = D.`Order ID`;
