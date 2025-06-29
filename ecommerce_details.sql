SELECT 
    *
FROM
    ecommerce.details;
SELECT 
    `Order ID`
FROM
    ecommerce.details;
SELECT 
    `Sub-category`
FROM
    ecommerce.details;
SELECT 
    Amount
FROM
    ecommerce.details;
SELECT 
    Profit
FROM
    ecommerce.details;
SELECT 
    Quantity
FROM
    ecommerce.details;
SELECT 
    Category
FROM
    ecommerce.details;
SELECT 
    PaymentMode
FROM
    ecommerce.details;
SELECT DISTINCT
    PaymentMode
FROM
    ecommerce.details;
SELECT DISTINCT
    Category
FROM
    ecommerce.details;
SELECT 
    Category, SUM(Amount) AS Total_Amount
FROM
    ecommerce.details
GROUP BY Category;
SELECT 
    *
FROM
    ecommerce.details
WHERE
    Amount >= 1000
ORDER BY Amount DESC;
SELECT 
    *
FROM
    ecommerce.details
WHERE
    `Order ID` = 'B-25681';
SELECT 
    *
FROM
    ecommerce.details
WHERE
    Category = 'Electronics'
        AND Profit > 500;
SELECT 
    `Order ID`, SUM(Profit) AS Total_Profit
FROM
    ecommerce.details
GROUP BY `Order ID`;
SELECT 
    PaymentMode, AVG(Amount) AS Total_Amount
FROM
    ecommerce.details
GROUP BY PaymentMode;
SELECT 
    Category, SUM(Quantity) AS Total_Quantity
FROM
    ecommerce.details
GROUP BY Category;
SELECT 
    `Sub-Category`, AVG(Profit) AS Average_Profit
FROM
    ecommerce.details
GROUP BY `Sub-Category`
HAVING AVG(Profit) > 100;
SELECT 
    `Order ID`, COUNT(Category)
FROM
    ecommerce.details
GROUP BY `Order ID`;
SELECT 
    `Order ID`, Amount
FROM
    ecommerce.details
WHERE
    Amount > (SELECT 
            AVG(Amount)
        FROM
            ecommerce.details);
SELECT 
    Category, `Sub-Category`
FROM
    ecommerce.details
WHERE
    Quantity > (SELECT 
            MAX(Quantity)
        FROM
            ecommerce.details
        WHERE
            Category = 'Electronics');
CREATE VIEW CategorySummary AS
    SELECT 
        Category,
        SUM(Amount) AS Total_Amount,
        SUM(Profit) AS Total_Profit
    FROM
        ecommerce.details
    GROUP BY Category;
SELECT 
    *
FROM
    categorysummary;
CREATE VIEW PaymentModeSummary AS
    SELECT 
        PaymentMode,
        AVG(Profit) AS Average_Profit,
        AVG(Quantity) AS Average_Quantity
    FROM
        ecommerce.details
    GROUP BY PaymentMode;
SELECT 
    *
FROM
    PaymentModesummary;