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
DAYNAME(date) - Returns the name of the weekday for date.
DAYOFMONTH(date) - Returns the day of the month for date (1-31).
DAYOFWEEK(date) - Returns the weekday index for date (1 = Sunday, 2 = Monday, ..., 7 = Saturday).
YEAR(date) - Returns the day of the year for date (1-366).
MONTH(date) - Returns the month for date (1-12).
YEAR(date) - Returns the year for date.
HOUR(time) - Returns the hour for time (0-23).
MINUTE(time) - Returns the minute for time (0-59).
SECOND(time) - Returns the second for time (0-59).
DATEDIFF(date1, date2) - Returns the number of days between date1 and date2.
DATE_ADD(Date, INTERVAL EXPRERSSION TIMEUNIT)
DATE_SUB(Date, INTERVAL EXPRERSSION TIMEUNIT)
LAST_DAY(Date)

