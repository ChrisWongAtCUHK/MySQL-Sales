select SalesDate, sum(Amount) as TotalAmount from (
  select SalesDate, Amount from TableA
  union
  select date('2019-01-01') as SalesDate, 0 as Amount
  union
  select date('2019-01-02') as SalesDate, 0 as Amount
  union
  select date('2019-01-03') as SalesDate, 0 as Amount
  union
  select date('2019-01-04') as SalesDate, 0 as Amount
  union
  select date('2019-01-05') as SalesDate, 0 as Amount
  union
  select date('2019-01-06') as SalesDate, 0 as Amount
  union
  select date('2019-01-07') as SalesDate, 0 as Amount
  union
  select date('2019-01-08') as SalesDate, 0 as Amount
) TableC
group by SalesDate
order by SalesDate;

-- MySQL Ver 8.0.19
SELECT SalesDate,
       sum(Amount) AS TotalAmount
FROM (WITH RECURSIVE cte_date(n, SalesDate, Amount) AS
        (SELECT 1,
                date('2019-01-01'),
                0
         UNION ALL SELECT n + 1,
                          date_add('2019-01-01', interval n DAY),
                          0
         FROM cte_date
         WHERE n < 9)
      SELECT SalesDate,
             Amount
      FROM cte_date
      UNION
      SELECT SalesDate,
             Amount
      FROM TableA) TableC
GROUP BY SalesDate
ORDER BY SalesDate;