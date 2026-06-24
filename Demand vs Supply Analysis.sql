SELECT
    p.ProductID,
    p.ProductName,
    COALESCE(SUM(co.QuantityDemanded),0) AS TOTAL_DEMAND,
    COALESCE(SUM(i.StockOnHand),0) AS TOTAL_STOCK,
    COALESCE(SUM(i.StockOnHand),0) -
    COALESCE(SUM(co.QuantityDemanded),0) AS STOCK_BALANCE
FROM PRODUCTS p
LEFT JOIN CUSTOMER_ORDERS co
    ON p.ProductID = co.ProductID
LEFT JOIN INVENTORY i
    ON p.ProductID = i.ProductID
GROUP BY
    p.ProductID,
    p.ProductName
ORDER BY STOCK_BALANCE ASC;