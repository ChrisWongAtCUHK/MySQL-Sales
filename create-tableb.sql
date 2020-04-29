SET sql_notes = 0;
CREATE TABLE IF NOT EXISTS TableB (
  SalesDatetime datetime,
  Amount INT(6) UNSIGNED
);
insert into TableB values('2019-01-02 07:05', 800);
insert into TableB values('2019-01-02 08:45', 100);
insert into TableB values('2019-01-02 08:49', 120);
insert into TableB values('2019-01-02 12:05', 830);
insert into TableB values('2019-01-02 18:45', 200);
insert into TableB values('2019-01-02 21:38', 150);
SET sql_notes = 1;