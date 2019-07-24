/* BETWEEN-fetch rows based on a range of values*/

SELECT * FROM Students
WHERE ROLL_NO BETWEEN 20 AND 30;

/* IN - Use to check for values contained in specific sets*/
SELECT * FROM Students
WHERE ROLL_NO IN (20,21,23);

/*Write an SQL query to find names of employee start with ‘A’?*/
select * from Employees where EmpName like 'A%';

/*varchar2 is used for character strings of variable length whereas char
is used for character strings of fixed length.*/


/*LOWER: The purpose of this function is to return the string in lowercase.
It takes a string as argument and returns the string by converting it into lower case.
Syntax:*/
LOWER('string')
/*UPPER:The purpose of this function is to return the string in uppercase. It takes
 a string as argument and returns the string by converting it into uppercase.
Syntax:*/
UPPER('string')

/*INITCAP:The purpose of this function is to return the string with first letter in
uppercase and rest of the letters in lowercase.
Syntax:*/
INITCAP('string')
