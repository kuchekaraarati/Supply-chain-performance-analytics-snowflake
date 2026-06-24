SELECT
    p.ProductID,
    p.ProductName,
    p.ReorderPoint,
    AVG(i.StockOnHand) AS CurrentStock,
    AVG(i.StockOnHand) - p.ReorderPoint AS StockBuffer
FROM PRODUCTS p
JOIN INVENTORY i
    ON p.ProductID = i.ProductID
GROUP BY
    p.ProductID,
    p.ProductName,
    p.ReorderPoint
ORDER BY StockBuffer ASC;