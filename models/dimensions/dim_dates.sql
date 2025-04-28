{{ config(materialized='table') }}

SELECT
    DateKey,
    OrderDate,
    DayNumberOfMonth,
    MonthNumberOfYear,
    CalendarQuarter,
    CalendarYear
    -- Add other relevant date attributes
FROM {{ ref('stg_adventureworks_dates') }}