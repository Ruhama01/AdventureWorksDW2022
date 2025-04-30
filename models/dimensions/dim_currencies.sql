{{ config(materialized='view') }}

SELECT
    CurrencyKey,
    CurrencyName
    -- Add other relevant currency attributes
FROM {{ ref('stg_adventureworks_currencies') }}