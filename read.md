
# Stored Procedures in MySQL

## Introduction
This project demonstrates the use of stored procedures in MySQL for database management and query execution. The procedures are designed to retrieve specific data from the database, ensuring efficient and reusable query structures.

## Description of the Code
The code operates on the `Parks` database and includes two stored procedures: `large_salary1` and `large_salary2`. These procedures are used to fetch employee-related data based on specific criteria.

### 1. Stored Procedure: `large_salary1`
#### Functionality:
- Retrieves all employees with a salary less than or equal to 50,000.
- Retrieves demographic details of employees whose gender is 'Male'.

#### Code:
```sql
DELIMITER $$
  CREATE PROCEDURE large_salary1()
BEGIN
  SELECT * FROM employee_salary WHERE salary <= 50000;
  SELECT * FROM employee_demographics WHERE gender = 'Male';
END $$
DELIMITER ;

CALL large_salary1;
```

### 2. Stored Procedure: `large_salary2`
#### Functionality:
- Fetches demographic details of a specific employee based on their `employee_id`.

#### Code:
```sql
DELIMITER $$
  CREATE PROCEDURE large_salary2(id INT)
BEGIN
  SELECT * FROM employee_demographics WHERE employee_id = id;
END $$

CALL large_salary2(5);
```

## How to Use
1. Ensure the `Parks` database is available and contains the `employee_salary` and `employee_demographics` tables.
2. Copy and execute the SQL code in a MySQL environment to create the stored procedures.
3. Use the `CALL` command to invoke the stored procedures and retrieve the data.
   - For `large_salary1`: Simply call the procedure without parameters.
   - For `large_salary2`: Pass the desired `employee_id` as a parameter to the procedure.

## Conclusion
This project highlights the power of MySQL stored procedures for automating repetitive query tasks and enhancing database operations. By leveraging stored procedures, you can achieve better organization, reusability, and efficiency in database management.
