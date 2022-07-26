 CREATE TABLE COURSES(COURSE_ID INT PRIMARY KEY AUTO_INCREMENT,
    -> STUDENT_NAME VARCHAR(50) NOT NULL,
    -> COURSES VARCHAR(50) NOT NULL,
    -> CREDITHOURS INT NOT NULL);
Query OK, 0 rows affected (0.08 sec)

mysql> INSERT INTO COURSES(STUDENT_NAME,COURSES,CREDITHOURS)
    -> VALUES('JANE SMITH',
    -> 'DATA SCIENCE',10),
    -> ('PAYEL BANERJEE','PYTHON',25),
    -> ('JANE DOE','JAVA',20),
    -> ('RAM SINGH','COLDFUSION',15);
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM COURSES;
+-----------+----------------+--------------+-------------+
| COURSE_ID | STUDENT_NAME   | COURSES      | CREDITHOURS |
+-----------+----------------+--------------+-------------+
|         1 | JANE SMITH     | DATA SCIENCE |          10 |
|         2 | PAYEL BANERJEE | PYTHON       |          25 |
|         3 | JANE DOE       | JAVA         |          20 |
|         4 | RAM SINGH      | COLDFUSION   |          15 |
+-----------+----------------+--------------+-------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM COURSES WHERE CREDITHOURS BETWEEN 10 AND 20;
+-----------+--------------+--------------+-------------+
| COURSE_ID | STUDENT_NAME | COURSES      | CREDITHOURS |
+-----------+--------------+--------------+-------------+
|         1 | JANE SMITH   | DATA SCIENCE |          10 |
|         3 | JANE DOE     | JAVA         |          20 |
|         4 | RAM SINGH    | COLDFUSION   |          15 |
+-----------+--------------+--------------+-------------+
3 rows in set (0.00 sec)
