CREATE TABLE "Departments" (
    "dept_no" VARCHAR(30)   NOT NULL,
    "dept_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Employees" (
    "emp_no" INTEGER PRIMARY KEY   NOT NULL,
    "emp_title_id" VARCHAR(30)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "sex" VARCHAR(10)   NOT NULL,
    "hire_date" DATE   NOT NULL
);

CREATE TABLE "Department_Employees" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR(30)   NOT NULL
);

CREATE TABLE "Department_Manager" (
	"dept_no" VARCHAR(30)   NOT NULL,
    "emp_no" INT   NOT NULL
);

CREATE TABLE "Salaries" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL
);

CREATE TABLE "Titles" (
    "title_id" VARCHAR(30)   NOT NULL,
    "title" VARCHAR(30)   NOT NULL
);
--Insert Data to tables

--Change columns to insert data as per CSV
DROP TABLE IF EXISTS "Department_Manager";

--format birth and hire data to insert data correctly
DROP TABLE IF EXISTS "Employees";

SELECT * FROM "Department_Employees";
SELECT * FROM "Department_Manager";
SELECT * FROM "Departments";
SELECT * FROM "Employees";
SELECT * FROM "Salaries";
SELECT * FROM "Titles";