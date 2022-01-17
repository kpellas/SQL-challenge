-- DROP TABLE IF EXISTS dept_emp;
-- DROP TABLE IF EXISTS dept_manager;
-- DROP TABLE IF EXISTS salaries;
-- DROP TABLE IF EXISTS employees;
-- DROP TABLE IF EXISTS departments;
-- DROP TABLE IF EXISTS titles;

-- Create tables and set datatypes, keys and other contraints
CREATE TABLE "departments" (
  "dept_no" VARCHAR(10),
  "dept_name" VARCHAR(30),
  PRIMARY KEY ("dept_no")
);

CREATE TABLE "titles" (
  "title_id" VARCHAR(10),
  "title" VARCHAR(30),
  PRIMARY KEY ("title_id")
);

CREATE TABLE "employees" (
  "emp_no" INTEGER PRIMARY KEY,
  "emp_title_id" VARCHAR(10),
  "birth_date" DATE,
  "first_name" VARCHAR(20),
  "last_name" VARCHAR(20),
  "sex" VARCHAR(1),
  "hire_date" DATE,
   FOREIGN KEY ("emp_title_id") REFERENCES "titles"("title_id")
 );

CREATE TABLE "dept_emp" (
  "emp_no" INTEGER,
  "dept_no" VARCHAR(10),
  FOREIGN KEY ("dept_no") REFERENCES "departments"("dept_no")
);

CREATE TABLE "dept_manager" (
  "dept_no" VARCHAR(10),
  "emp_no" INTEGER,
  FOREIGN KEY ("dept_no") REFERENCES "departments"("dept_no"),
  FOREIGN KEY ("emp_no") REFERENCES "employees"("emp_no")
);

CREATE TABLE "salaries" (
  "emp_no" INTEGER,
  "salary" INTEGER,
  PRIMARY KEY ("emp_no"),
  FOREIGN KEY ("emp_no") REFERENCES "employees"("emp_no")
);
