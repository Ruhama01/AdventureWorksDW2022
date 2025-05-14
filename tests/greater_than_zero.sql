-- This test checks that TotalSalesAmount is not less than or equal to 0
SELECT *
FROM {{ ref('total_reseller_sales_amount') }}
WHERE TotalSalesAmount <= 0
