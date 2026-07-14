SELECT Product, SUM(TotalPrice) AS TotalSales
FROM Orders
WHERE OrderStatus = 'Delivered'
GROUP BY Product
ORDER BY TotalSales DESC;

SELECT PaymentMethod, COUNT(*) AS CancelledOrders
FROM Orders
WHERE OrderStatus = 'Cancelled'
GROUP BY PaymentMethod
ORDER BY CancelledOrders DESC;

SELECT ReferralSource, AVG(TotalPrice) AS AvgOrderValue
FROM Orders
GROUP BY ReferralSource
ORDER BY AvgOrderValue DESC;

SELECT CouponCode, COUNT(*) AS OrdersCount, SUM(TotalPrice) AS TotalRevenue
FROM Orders
GROUP BY CouponCode
ORDER BY TotalRevenue DESC;

SELECT OrderStatus, COUNT(*) AS StatusCount
FROM Orders
WHERE OrderStatus IN ('Shipped','Returned')
GROUP BY OrderStatus;

SELECT CustomerID, SUM(TotalPrice) AS CustomerSpend
FROM Orders
GROUP BY CustomerID
ORDER BY CustomerSpend DESC;

-- Example if Date is stored as YYYYMMDD
-- Adjust depending on your dataset format
SELECT DATEPART(YEAR, GETDATE()) AS Year,
       DATEPART(MONTH, GETDATE()) AS Month,
       SUM(TotalPrice) AS MonthlySales
FROM Orders
WHERE OrderStatus = 'Delivered'
GROUP BY DATEPART(YEAR, GETDATE()), DATEPART(MONTH, GETDATE())
ORDER BY Year, Month;