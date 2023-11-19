-- Create departments schema
create table departments (
	dept_no varchar(5) primary key not null, 
	dept_name varchar(30) not null
);

-- Create titles schemata
create table titles (
	title_id varchar(5) primary key not null, 
	title varchar(25) not null
);	

--Create employees schemata
create table employees (
	emp_no int primary key not null, 
	emp_title_id varchar(5) not null,
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar(1) not null,
	hire_date date not null,
	foreign key (emp_title_id) references titles(title_id)
);

-- Create dept_emp schemata
create table dept_emp (
	emp_no int not null, 
	dept_no varchar(5) not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

-- Create salary schemata
create table salaries (
	emp_no int not null, 
	salary int not null,
	foreign key (emp_no) references employees(emp_no)
);

-- Create dept_manager schemata
create table dept_manager (
	dept_no varchar(5) not null, 
	emp_no int not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);
Alter table dept_manager
ADD CONSTRAINT manager PRIMARY KEY (dept_no, emp_no);






