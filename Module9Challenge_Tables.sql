-- Departments table
CREATE TABLE IF NOT EXISTS public.departments
(
    dept_no character varying(20) COLLATE pg_catalog."default" PRIMARY KEY,
    dept_name character varying(20) COLLATE pg_catalog."default"
);

-- Department Employees table
CREATE TABLE IF NOT EXISTS public.dept_emp
(
    emp_no integer PRIMARY KEY,
    dept_no character varying(10) COLLATE pg_catalog."default"
);

-- Department Managers table
CREATE TABLE IF NOT EXISTS public.dept_manager
(
    dept_no character varying(10) COLLATE pg_catalog."default" PRIMARY KEY,
    emp_no integer
);

-- Employees table
CREATE TABLE IF NOT EXISTS public.employees
(
    emp_no integer PRIMARY KEY,
    emp_title_id character varying(20) COLLATE pg_catalog."default",
    birth_date date,
    first_name character varying(20) COLLATE pg_catalog."default",
    last_name character varying(20) COLLATE pg_catalog."default",
    sex character varying(20) COLLATE pg_catalog."default",
    hire_date date
);

-- Salaries table
CREATE TABLE IF NOT EXISTS public.salaries
(
    emp_no integer PRIMARY KEY,
    salary integer
);

-- Titles table
CREATE TABLE IF NOT EXISTS public.titles
(
    title_id character varying(20) COLLATE pg_catalog."default" PRIMARY KEY,
    title character varying(20) COLLATE pg_catalog."default"
);
