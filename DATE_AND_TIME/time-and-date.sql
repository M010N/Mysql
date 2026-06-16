/*
  Get Current Time
  HH:MM:SS
*/

SELECT CURTIME();
SELECT CURRENT_TIME();
SELECT CURRENT_TIME;

/*
  Get Current Date
  YYYY-MM-DD
*/

SELECT CURDATE();
SELECT CURRENT_DATE();
SELECT CURRENT_DATE;

/*
  Get Current Date & Time
  YYYY-MM-DD HH:MM:SS
*/

SELECT NOW();
SELECT CURRENT_TIMESTAMP();
SELECT CURRENT_TIMESTAMP; 

-------------------------------

/*
  Get Year, Month, Day, Hour, Minute, Second
*/
dayname(date) - Returns the name of the weekday for date.
dayofmonth(date) - Returns the day of the month for date (1-31).
dayofweek(date) - Returns the weekday index for date (1 = Sunday, 2 = Monday, ..., 7 = Saturday).
dayofyear(date) - Returns the day of the year for date (1-366).
month(date) - Returns the month for date (1-12).
year(date) - Returns the year for date.
hour(time) - Returns the hour for time (0-23).
minute(time) - Returns the minute for time (0-59).
second(time) - Returns the second for time (0-59).
datediff(date1, date2) - Returns the number of days between date1 and date2.