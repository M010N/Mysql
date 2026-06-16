abdiaziz@moon:~$ mysql -u wiza -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.46-0ubuntu0.24.04.2 (Ubuntu)

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE Organization;
Query OK, 1 row affected (0.01 sec)

mysql> USE Organization;
Database changed
mysql> CREATE TABLE volunteers (
    -> id INT PRIMARY KEY AUTO_INCREMENT,
    -> name VARCHAR(255),
    -> email VARCHAR(255) UNIQUE);
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE tasks ( 
    -> id INT PRIMARY KEY AUTO_INCREMENT,
    -> name VARCHAR(255),
    -> volunteer_id INT,
    -> FOREIGN KEY (volunteer_id)
    -> REFERENCES volunteers(id)
    -> ON DELETE SET NULL
    -> ON UPDATE CASCADE);
Query OK, 0 rows affected (0.05 sec)

mysql> select Volunteers.name, tasks.name
    -> FROM tasks
    -> INNER JOIN volunteers 
    -> ON tasks.volunteer_id = voluntters.id;
ERROR 1054 (42S22): Unknown column 'Volunteers.name' in 'field list'
mysql> ALTER TABLE tasks 
    -> CHANGE name varchar(255) NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'varchar(255) NOT NULL' at line 2
mysql> ALTER TABLE tasks
    -> MODIFY name VARCHAR(255) NOT NULL;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select volunteers.name, tasks.name FROM tasks INNER JOIN volunteers  ON tasks.volunteer_id = voluntters.id;
ERROR 1054 (42S22): Unknown column 'voluntters.id' in 'on clause'
mysql> select volunteers.name, tasks.name FROM tasks INNER JOIN volunteers  ON tasks.volunteer_id = volunteers.id;
Empty set (0.00 sec)

mysql> quit;
