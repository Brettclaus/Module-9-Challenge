-- Titles table
CREATE TABLE IF NOT EXISTS public.titles
(
    title_id VARCHAR(20) PRIMARY KEY,
    title VARCHAR(20) NOT NULL
);

-- Employees table
CREATE TABLE IF NOT EXISTS public.employees
(
    emp_no INTEGER PRIMARY KEY,
    emp_title_id VARCHAR(20) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    sex VARCHAR(20) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

-- Salaries table
CREATE TABLE IF NOT EXISTS public.salaries
(
    emp_no INTEGER PRIMARY KEY,
    salary INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- Departments table
CREATE TABLE IF NOT EXISTS public.departments
(
    dept_no VARCHAR(20) PRIMARY KEY,
    dept_name VARCHAR(20) NOT NULL
);

-- Department Employees table
CREATE TABLE IF NOT EXISTS public.dept_emp
(
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(20) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Department Managers table
CREATE TABLE IF NOT EXISTS public.dept_manager
(
    dept_no VARCHAR(20) PRIMARY KEY,
    emp_no INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
