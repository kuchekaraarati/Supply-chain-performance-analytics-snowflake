SELECT
    s.SupplierID,
    s.SupplierName,
    COUNT(*) AS TOTAL_ORDERS,
    AVG(
        DATEDIFF(
            DAY,
            p.ExpectedDelivery,
            d.ActualDeliveryDate
        )
    ) AS AVG_DELAY_DAYS
FROM PURCHASE_ORDERS p
JOIN DELIVERIES d
ON p.PO_ID = d.PO_ID
JOIN SUPPLIERS s
ON p.SupplierID = s.SupplierID
GROUP BY
    s.SupplierID,
    s.SupplierName
ORDER BY AVG_DELAY_DAYS DESC;