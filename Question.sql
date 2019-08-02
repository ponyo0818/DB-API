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
/*Foreign key and Primary key*/
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);

/*CHECK, NOT NULL*/
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
);

/*get date*/
SELECT GetDate()

/*Inner join- selects records that have matching values in both tables.*/
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

/*left join-  returns all records from the left table (table1), and the matched records from the right table */
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;

/*Outer join- returns all matching records from both tables whether the other table matches or not*/
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;
