SET sql_notes = 0;
CREATE TABLE IF NOT EXISTS TableA (
  SalesDate date,
  Amount INT(6) UNSIGNED
);
insert into TableA values('2019-01-02', 800);
insert into TableA values('2019-01-02', 120);
insert into TableA values('2019-01-03', 600);
insert into TableA values('2019-01-05', 220);
insert into TableA values('2019-01-08', 200);
insert into TableA values('2019-01-08', 740);
SET sql_notes = 1;