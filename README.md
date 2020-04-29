# README

## Below is some sample data for TableA

Table name: TableA
Column name: SalesDate, Amount
Records:
2019-01-02, 800
2019-01-02, 120
2019-01-03, 600
2019-01-05, 220
2019-01-08, 200
2019-01-08, 740

Write a SQL to get following result, please note that you can't create any temp table
SalesDate, TotalAmount
2019-01-01, 0
2019-01-02, 920
2019-01-03, 600
2019-01-04, 0
2019-01-05, 220
2019-01-06, 0
2019-01-07, 0
2019-01-08, 940

## Below are some sample data for TableB

Table name: TableB
Column name: SalesDatetime, Amount
Records:

2019-01-02 07:05, 800
2019-01-02 08:45, 100
2019-01-02 08:49, 120
2019-01-02 12:05, 830
2019-01-02 18:45, 200
2019-01-02 21:38, 150

Write a SQL to get total sales for each hour, starting from 00 to 24, please note that you can't create any temp table. The result should look like that:
Hour, TotalAmount
0, 0
1, 0
2, 0
3, 0
4, 0
5, 0
6, 0
7, 800
8, 220
9, 0
10, 0
...
21, 150
22, 0
23, 0
24, 0
