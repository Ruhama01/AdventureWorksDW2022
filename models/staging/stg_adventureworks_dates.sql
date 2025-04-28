{{ config(materialized='view') }}

SELECT
    DateKey,
    FullDateAlternateKey AS OrderDate,
    DayNumberOfMonth,
    MonthNumberOfYear,
    CalendarQuarter,
    CalendarYear
    -- Add other relevant columns
FROM AdventureWorksDW2022.dbo.DimDate;