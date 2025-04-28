{{ config(materialized='table') }}

SELECT
    CurrencyKey,
    CurrencyName
    -- Add other relevant currency attributes
FROM {{ ref('stg_adventureworks_currencies') }}