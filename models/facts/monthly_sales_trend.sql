SELECT
  d.CalendarYear,
  d.EnglishMonthName,
  SUM(s.SalesAmount) AS MonthlySales
FROM FactInternetSales s
JOIN DimDate d ON s.OrderDateKey = d.DateKey
GROUP BY d.CalendarYear, d.EnglishMonthName
ORDER BY d.CalendarYear, MIN(d.MonthNumberOfYear)
