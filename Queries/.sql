SELECT * FROM departments;
select* from dept_employees;

Drop Table dept_employees Cascade ;

CREATE TABLE dept_employees (
 emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);
Drop Table titles Cascade;

CREATE TABLE titles (
  emp_no INT NOT NULL,
  titles Varchar NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
)
Drop table titles Cascade;

CREATE TABLE titles (
  emp_no INT NOT NULL,
  titles Varchar NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);	
Drop Table titles Cascade;

CREATE TABLE titles (
  emp_no INT NOT NULL,
  titles Varchar NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (titles)
);	

Drop Table titles Cascade;

CREATE TABLE titles (
  emp_no INT NOT NULL,
  titles Varchar NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  
);	
Drop Table titles Cascade;

CREATE TABLE titles (
  emp_no INT NOT NULL,
  titles Varchar NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
  
);

