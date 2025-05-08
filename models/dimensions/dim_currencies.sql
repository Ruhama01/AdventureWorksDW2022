{{ config(materialized='view') }}

SELECT
    CurrencyKey,
    CurrencyName
    
FROM {{ ref('stg_adventureworks_currencies') }}