/* QUESTION 9 Rising Temperature

Table: Weather

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.
 

QUESTION 9
Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Weather table:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+
Output: 
+----+
| id |
+----+
| 2  |
| 4  |
+----+
Explanation: 
In 2015-01-02, the temperature was higher than the previous day (10 -> 25).
In 2015-01-04, the temperature was higher than the previous day (20 -> 30). */

/* ANSWER 9
Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
Return the result table in any order. */

/* Write your T-SQL query statement below */
-- Select the ID of the dates where the temperature is higher than the previous day
SELECT w1.id

-- Use the Weather table, aliased as 'w1', representing the current date's temperature
FROM Weather w1

-- Perform a self-join on the Weather table, with the second instance aliased as 'w2'
-- 'w2' will represent the previous day's temperature
JOIN Weather w2

-- The condition for joining the tables:
-- The record_date in 'w1' should match the day after the record_date in 'w2' (i.e., yesterday)
-- In SQL Server, we use the DATEADD function to add 1 day to w2.record_date
ON w1.recorddate = DATEADD(day, 1, w2.recorddate)

-- Filter the results where the temperature in 'w1' (current day) is higher than in 'w2' (previous day)
WHERE w1.temperature > w2.temperature;
