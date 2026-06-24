
/*
  Select Day Name
  Day Name
  Day Of Week
  Day Of Month
  Day Of Year
*/

SELECT CURDATE() AS Today, DAYNAME(CURDATE()) AS TodayName;

SELECT CURDATE() AS Today, DAYNAME('2026-6-16') AS TodayName;

SELECT name, date, DAYNAME(date) FROM students;

SELECT name, date, DAYNAME(date), DAYOFMONTH(date) FROM students;

SELECT name, date, DAYNAME(date), DAYOFMONTH(date), DAYOFWEEK(date) FROM students;

SELECT name, date, DAYNAME(date), DAYOFMONTH(date), DAYOFWEEK(date), DAYOFYEAR(date) FROM students;
/*
  Select Month
  Month
  Month Name
  Hour
  Minute
*/

SELECT date, MONTH(date) FROM students;

SELECT date, MONTH(date), MONTHNAME(date) FROM students;

SELECT date, MONTH(date), MONTHNAME(date), HOUR(date) FROM students;

SELECT date, MONTH(date), MONTHNAME(date), HOUR(date), MINUTE(date) FROM students;

/*
  Select Date Different
  DATEDIFF(Date1, Date2)
*/

SELECT id, name, date, DATEDIFF(CURRDATE(), date) AS NumberOfDayes FROM students;

SELECT
  id, name, date,
  CONCAT('Registered ', DATEDIFF(CURRDATE(), date), ' Days Ago.') AS NumberOfDayes
FROM
  students;

/*
  Last Day
  LAST_DAY(Date)
*/

SELECT name, date, LAST_DAY(date) FROM `students`;

SELECT name, date, LAST_DAY(date), DAYNAME(LAST_DAY(date)) FROM `students`;

/*
  Date Add
  DATE_ADD(Date, Interval Expression Time Unit)
*/

UPDATE `students` SET date = DATE_ADD(date, INTERVAL 10 DAY);

UPDATE `students` SET date = DATE_ADD(date, INTERVAL 1 MONTH);

/*
  Date Sub
  DATE_SUB(Date, Interval Expression Time Unit)
*/

UPDATE `students` SET date = DATE_SUB(date, INTERVAL 1 MONTH);