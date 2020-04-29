select Hour, sum(Amount) as TotalAmount from (
  select hour(SalesDatetime) as Hour, Amount from TableB
  union
  select 0 as Hour, 0 as Amount
  union
  select 1 as Hour, 0 as Amount
  union
  select 2 as Hour, 0 as Amount
  union
  select 3 as Hour, 0 as Amount
  union
  select 4 as Hour, 0 as Amount
  union
  select 5 as Hour, 0 as Amount
  union
  select 6 as Hour, 0 as Amount
  union
  select 7 as Hour, 0 as Amount
  union
  select 8 as Hour, 0 as Amount
  union
  select 9 as Hour, 0 as Amount
  union
  select 10 as Hour, 0 as Amount
  union
  select 11 as Hour, 0 as Amount
  union
  select 12 as Hour, 0 as Amount
  union
  select 13 as Hour, 0 as Amount
  union
  select 14 as Hour, 0 as Amount
  union
  select 15 as Hour, 0 as Amount
  union
  select 16 as Hour, 0 as Amount
  union
  select 17 as Hour, 0 as Amount
  union
  select 18 as Hour, 0 as Amount
  union
  select 19 as Hour, 0 as Amount
  union
  select 20 as Hour, 0 as Amount
  union
  select 21 as Hour, 0 as Amount
  union
  select 22 as Hour, 0 as Amount
  union
  select 23 as Hour, 0 as Amount
  union
  select 24 as Hour, 0 as Amount
) TableC
group by Hour
order by Hour;

-- MySQL Ver 8.0.19
SELECT Hour,
       sum(Amount) AS TotalAmount
FROM (WITH RECURSIVE cte_datetime(Hour, Amount) AS
        (SELECT 0,
                0
         UNION ALL SELECT Hour + 1,
                          0
         FROM cte_datetime
         WHERE Hour < 24)
      SELECT Hour,
             Amount
      FROM cte_datetime
      UNION
      SELECT hour(SalesDatetime) AS Hour,
             Amount
      FROM TableB) TableC
GROUP BY Hour
ORDER BY Hour;

-- BTW, I would suggest the range should be 0~23