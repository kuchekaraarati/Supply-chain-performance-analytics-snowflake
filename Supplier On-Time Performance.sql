SELECT
    s.SupplierID,
    s.SupplierName,
    COUNT(*) AS TOTAL_ORDERS,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN d.ActualDeliveryDate <= p.ExpectedDelivery
                THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS ON_TIME_PERCENT
FROM PURCHASE_ORDERS p
JOIN DELIVERIES d
    ON p.PO_ID = d.PO_ID
JOIN SUPPLIERS s
    ON p.SupplierID = s.SupplierID
GROUP BY
    s.SupplierID,
    s.SupplierName
ORDER BY ON_TIME_PERCENT DESC;