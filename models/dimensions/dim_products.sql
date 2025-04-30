{{ config(materialized='view') }}

SELECT
    prod.ProductKey,
    prod.ProductName,
    prod_sub.ProductSubcategoryName,
    prod_cat.ProductCategoryName
    -- Add other relevant product attributes
FROM {{ ref('stg_adventureworks_products') }} AS prod
LEFT JOIN AdventureWorksDW2022.dbo.DimProductSubcategory AS prod_sub
    ON prod.ProductSubcategoryKey = prod_sub.ProductSubcategoryKey
LEFT JOIN AdventureWorksDW2022.dbo.DimProductCategory AS prod_cat
    ON prod_sub.ProductCategoryKey = prod_cat.ProductCategoryKey;