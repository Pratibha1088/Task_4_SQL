# SQL_task_4
### ORDERS TABLE:

**SELECT 
    *
FROM
    ecommerce.orders;**
    
![Screenshot 2025-06-27 135805](https://github.com/user-attachments/assets/ebf72669-ff12-46c0-a008-259cb9231425)

**SELECT 
    CustomerName
FROM
    ecommerce.orders;**

![Screenshot 2025-06-28 173828](https://github.com/user-attachments/assets/b2761a26-ba69-4905-a765-b269aeb9059a)

**SELECT 
    State
FROM
    ecommerce.orders;**

![Screenshot 2025-06-28 173921](https://github.com/user-attachments/assets/62d35e19-1b67-4dd5-b7da-c22db9e035df)

**SELECT 
    city
FROM
    ecommerce.orders;**

![Screenshot 2025-06-28 174021](https://github.com/user-attachments/assets/23c39ed6-6454-469d-9c12-c569e30b5eb0)


### SELECT, WHERE, ORDER BY, GROUP BY, HAVING
### **AGGREGATION FUNCTIONS (COUNT)**

**SELECT 
    CustomerName, State, city
FROM
    ecommerce.orders
    WHERE
    city = 'Bhopal';**

![Screenshot 2025-06-28 171054](https://github.com/user-attachments/assets/e3f1998e-267d-423a-b691-2230ecbae4a9)

**SELECT 
    *
FROM
    ecommerce.orders
WHERE
    State = 'Uttar Pradesh'
    ORDER BY CustomerName ASC;**

![Screenshot 2025-06-28 172841](https://github.com/user-attachments/assets/ca477800-8932-4dc0-9653-98098cc84eb6)

**SELECT 
    `Order ID`, CustomerName
FROM
    ecommerce.orders
WHERE
    `Order Date` = '10-03-2018';**

![Screenshot 2025-06-28 171107](https://github.com/user-attachments/assets/4170ff07-179a-41a1-9148-2f777c2f695a)

**SELECT 
    COUNT(`Order ID`) AS Total_Orders
FROM
    ecommerce.orders;**

![Screenshot 2025-06-28 174158](https://github.com/user-attachments/assets/7e9d6461-402c-4691-9164-d15a95fc7d19)

**SELECT 
    COUNT(DISTINCT CustomerName) AS UniqueCustomers
FROM
    ecommerce.orders;**

![image](https://github.com/user-attachments/assets/50713d51-e1be-4db8-849f-23644caca5dc)



**SELECT 
    State, COUNT(`Order ID`) AS OrderpereachState
FROM
    ecommerce.orders
GROUP BY State;**

![Screenshot 2025-06-28 171127](https://github.com/user-attachments/assets/48b073d8-572b-4314-b0aa-0369ebd00315)

**SELECT 
    city, COUNT(`Order ID`) AS OrderPerCity
FROM
    ecommerce.orders
GROUP BY city
HAVING COUNT(`Order ID`) > 20;**

![Screenshot 2025-06-28 171411](https://github.com/user-attachments/assets/6e0e32f1-7327-45dc-b1e8-27ccdf693efc)

**SELECT 
    State, COUNT(DISTINCT city) AS UniqueCity
FROM
    ecommerce.orders
    GROUP BY State;**

![image](https://github.com/user-attachments/assets/e7695937-2aa5-48bc-aa35-2a5610ff6bf0)



### VIEW

**CREATE VIEW CityOrderCount AS
    SELECT 
        city, COUNT(`Order ID`) AS Numoforders
    FROM
        ecommerce.orders
    GROUP BY city;
SELECT 
    *
FROM
    CityOrderCount;**

![Screenshot 2025-06-28 171426](https://github.com/user-attachments/assets/1166586a-be0f-4484-9562-bf1cd96bae7b)

**CREATE VIEW UniqueCustomerLocations AS
    SELECT DISTINCT
        CustomerName, State
    FROM
        ecommerce.orders;
SELECT 
    *
FROM
    UniqueCustomerLocations;**

![Screenshot 2025-06-28 171443](https://github.com/user-attachments/assets/44d96860-2cd7-478c-96b4-75f478686056)

### DETAILS TABLE:
**SELECT 
    *
FROM
    ecommerce.details;**

![Screenshot 2025-06-27 135747](https://github.com/user-attachments/assets/a0503295-8a87-4f47-a288-c1a152fad5fe)

**SELECT 
    `Order ID`
FROM
    ecommerce.details;**

![image](https://github.com/user-attachments/assets/1bd9f470-4bc8-435a-abba-055507a51681)

**SELECT 
    `Sub-category`
FROM
    ecommerce.details;**

![image](https://github.com/user-attachments/assets/12f3be3b-0a63-49b7-a825-81129640a6c0)

**SELECT 
    Amount
FROM
    ecommerce.details;**

![image](https://github.com/user-attachments/assets/abaaa058-1b7e-4eae-8742-8612613ca93e)

**SELECT 
    Profit
FROM
    ecommerce.details;**

![image](https://github.com/user-attachments/assets/058f4bd2-0b4b-45fd-b37e-f283219e6390)

**SELECT 
    Quantity
FROM
    ecommerce.details;**

![image](https://github.com/user-attachments/assets/3d13ff86-4a38-40aa-b692-70acdb9eb491)

**SELECT 
    Category
FROM
    ecommerce.details;**

![image](https://github.com/user-attachments/assets/56b65a82-cdce-4a1c-8e17-84dc54529e48)

**SELECT 
    PaymentMode
FROM
    ecommerce.details;**

![image](https://github.com/user-attachments/assets/64f93e40-c509-417b-b11d-094158d80494)

**SELECT DISTINCT
    PaymentMode
FROM
    ecommerce.details;**

![image](https://github.com/user-attachments/assets/a0f9e856-52b0-478c-ab63-4cbcbc22745c)

**SELECT DISTINCT
    Category
FROM
    ecommerce.details;**

![image](https://github.com/user-attachments/assets/ba481804-bdbf-4d8a-aad1-b7db443c9a97)

### SELECT, WHERE, ORDER BY, GROUP BY, HAVING
### **AGGREGATE FUNCTIONS (SUM, COUNT, AVERAGE, MAX)**

**SELECT 
    Category, SUM(Amount) AS Total_Amount
FROM
    ecommerce.details
GROUP BY Category;**

![image](https://github.com/user-attachments/assets/9f21df60-27cf-4df3-a0db-ba47f57f1c54)

**SELECT 
    *
FROM
    ecommerce.details
WHERE
    Amount >= 1000
ORDER BY Amount DESC;**

![image](https://github.com/user-attachments/assets/756c8bdc-6f72-474c-8ee0-072492c6b229)

**SELECT 
    *
FROM
    ecommerce.details
WHERE
    `Order ID` = 'B-25681';**

![image](https://github.com/user-attachments/assets/190e891d-b239-428b-97a1-e566077fc721)

**I USED AND OPERATOR IN THIS QUERY**

**SELECT 
    *
FROM
    ecommerce.details
WHERE
    Category = 'Electronics'
        AND Profit > 500;**

![image](https://github.com/user-attachments/assets/c511b3d5-7b84-4e17-92c6-1aae61dba8e4)

**SELECT 
    `Order ID`, SUM(Profit) AS Total_Profit
FROM
    ecommerce.details
GROUP BY `Order ID`;**

![image](https://github.com/user-attachments/assets/beae8f22-cc23-4e9f-abf4-b4b50e2d40c4)

**SELECT 
    PaymentMode, AVG(Amount) AS Total_Amount
FROM
    ecommerce.details
GROUP BY PaymentMode;**

![image](https://github.com/user-attachments/assets/1be866e2-2218-488c-873b-84fa42b02ef6)

**SELECT 
    Category, SUM(Quantity) AS Total_Quantity
FROM
    ecommerce.details
GROUP BY Category;**

![image](https://github.com/user-attachments/assets/b21cb625-bca9-4f02-b068-8a7952f5d4c3)

**SELECT 
    `Sub-Category`, AVG(Profit) AS Average_Profit
FROM
    ecommerce.details
GROUP BY `Sub-Category`
HAVING AVG(Profit) > 100;**

![image](https://github.com/user-attachments/assets/ffbe5401-8c08-4ece-8de6-901f2f3a0c71)

**SELECT 
    `Order ID`, COUNT(Category)
FROM
    ecommerce.details
GROUP BY `Order ID`;**

![image](https://github.com/user-attachments/assets/1369e4fd-3a62-4970-b3c5-247775bd1e75)

## **SUB-QUERIES**
**SELECT 
    `Order ID`, Amount
FROM
    ecommerce.details
WHERE
    Amount > (SELECT 
            AVG(Amount)
        FROM
            ecommerce.details);**

![image](https://github.com/user-attachments/assets/ba54f554-1447-4087-b016-3d104bca103a)

**SELECT 
    Category, `Sub-Category`
FROM
    ecommerce.details
WHERE
    Quantity > (SELECT 
            MAX(Quantity)
        FROM
            ecommerce.details
        WHERE
            Category = 'Electronics');**

![image](https://github.com/user-attachments/assets/a570be4a-9436-462f-a963-8aaf45e3d7cb)

## **VIEW**

**CREATE VIEW CategorySummary AS
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
    categorysummary;**

![image](https://github.com/user-attachments/assets/f35f0d6a-38e7-4434-b915-74215a23f094)

**CREATE VIEW PaymentModeSummary AS
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
    PaymentModesummary;**

![image](https://github.com/user-attachments/assets/6e3f80ee-3528-4eff-a929-e89d0a9739df)

## **JOINS** (INNER JOIN, LEFT JOIN)

**SELECT 
    O.`Order ID`,
    O.CustomerName,
    O.`Order Date`,
    D.Amount,
    D.Profit
FROM
    ecommerce.orders O
        INNER JOIN
    ecommerce.details D ON O.`Order ID` = D.`Order ID`;**

![image](https://github.com/user-attachments/assets/86eb7f5a-9649-4ae8-8c20-b04160496e5d)

**SELECT 
    orders.CustomerName, details.Category
FROM
    ecommerce.orders
        INNER JOIN
    ecommerce.details ON orders.`Order ID` = details.`Order ID`;**

![image](https://github.com/user-attachments/assets/24521cc3-aaac-4bb5-9cda-64417b496b3f)

**SELECT 
    O.`Order ID`,
    O.CustomerName,
    O.`Order Date`,
    D.Amount,
    D.Profit
FROM
    ecommerce.orders O
        LEFT JOIN
    ecommerce.details D ON O.`Order ID` = D.`Order ID`;**

![image](https://github.com/user-attachments/assets/9496d317-4b64-43a3-b83e-95cfd3c202d5)

## **I USED CASE**

**SELECT
    O.`Order ID`,
    O.CustomerName,
    CASE
	WHEN D.`Order ID` IS NULL THEN  'No matching details found'
    ELSE 'Details Available'
    END AS 'OrderDetailsStatus'
FROM
    ecommerce.orders O
LEFT JOIN
    ecommerce.details D ON O.`Order ID` = D.`Order ID`;**

![image](https://github.com/user-attachments/assets/94bde860-08b9-4c9c-8030-548b6329d172)
