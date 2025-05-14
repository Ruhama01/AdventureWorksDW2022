{{config (materialized='view', description=
    "This table summarizes total reseller sales amount by year, month, and product category."
  )
}}

SELECT
    dpc.EnglishProductCategoryName AS ProductCategory,
    SUM(frs.SalesAmount) AS TotalSalesAmount
FROM
    FactResellerSales frs
JOIN
    DimProduct dp ON frs.ProductKey = dp.ProductKey
JOIN
    DimProductSubcategory dpsc ON dp.ProductSubcategoryKey = dpsc.ProductSubcategoryKey
JOIN
    DimProductCategory dpc ON dpsc.ProductCategoryKey = dpc.ProductCategoryKey
GROUP BY
    dpc.EnglishProductCategoryName;

