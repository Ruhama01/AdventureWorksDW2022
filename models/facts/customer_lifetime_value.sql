 SELECT
    c.CustomerKey,
    c.FirstName,
    c.LastName,
    SUM(s.SalesAmount) AS CustomerLifetimeValue
FROM {{ ref('stg_adventureworks_internet_sales') }} s
JOIN {{ ref('stg_adventureworks_customers') }} c ON s.CustomerKey = c.CustomerKey
GROUP BY c.CustomerKey, c.FirstName, c.LastName
