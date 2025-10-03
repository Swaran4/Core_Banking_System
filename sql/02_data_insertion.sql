-- Insert into department
INSERT INTO department (dno, dname, mgr_ssn)
VALUES (10, 'Research', 12345);
INSERT INTO department (dno, dname, mgr_ssn)
VALUES (20, 'Sales', 23456);
INSERT INTO department (dno, dname, mgr_ssn)
VALUES (30, 'Manufacturing', 34567);

-- Insert into employee (ensure dno and sup_ssn match existing values)
INSERT INTO employee (ssn, ename, dob, address, salary, dno, sup_ssn)
VALUES (12345, 'John Doe', '1970-01-01', '123 Main St', 50000, 10, NULL);
INSERT INTO employee (ssn, ename, dob, address, salary, dno, sup_ssn)
VALUES (23456, 'Jane Smith', '1975-02-02', '456 Oak St', 60000, 20, 12345);
INSERT INTO employee (ssn, ename, dob, address, salary, dno, sup_ssn)
VALUES (34567, 'Mike Johnson', '1980-03-03', '789 Elm St', 70000, 30, 12345);


-- Insert into project (ensure dno matches existing value)
INSERT INTO project (pno, pname, p_loc, dno)
VALUES (1, 'Project A', 'City A', 10);
INSERT INTO project (pno, pname, p_loc, dno)
VALUES (2, 'Project B', 'City B', 20);
INSERT INTO project (pno, pname, p_loc, dno)
VALUES (3, 'Project C', 'City C', 30);

-- Insert into dependents (ensure ssn matches existing value)
INSERT INTO dependents (dependent_name, dependent_dob, ssn)
VALUES ('Alice Doe', '2000-04-04', 12345);
INSERT INTO dependents (dependent_name, dependent_dob, ssn)
VALUES ('Bob Smith', '2005-05-05', 23456);

-- Insert into emp_proj (ensure ssn and pno match existing values)
INSERT INTO emp_proj (ssn, pno, no_of_hours)
VALUES (12345, 1, 100);
INSERT INTO emp_proj (ssn, pno, no_of_hours)
VALUES (23456, 2, 80);
INSERT INTO emp_proj (ssn, pno, no_of_hours)
VALUES (34567, 3, 120);

-- Insert into dep_loc (ensure dno matches existing value)
INSERT INTO dep_loc (dno, loc)
VALUES (10, 'Location A');
INSERT INTO dep_loc (dno, loc)
VALUES (20, 'Location B');
INSERT INTO dep_loc (dno, loc)
VALUES (30, 'Location C');

ALTER TABLE department
ADD CONSTRAINT FK_department_employee
FOREIGN KEY (mgr_ssn) REFERENCES employee(ssn);

ALTER TABLE employee
ADD CONSTRAINT FK_employee_department
FOREIGN KEY (dno) REFERENCES department(dno);

ALTER TABLE employee
ADD CONSTRAINT FK_employee_employee
FOREIGN KEY (sup_ssn) REFERENCES employee(ssn);

ALTER TABLE project
ADD CONSTRAINT FK_project_department
FOREIGN KEY (dno) REFERENCES department(dno);

ALTER TABLE dependents
ADD CONSTRAINT FK_dependents_employee
FOREIGN KEY (ssn) REFERENCES employee(ssn);

ALTER TABLE emp_proj
ADD CONSTRAINT FK_emp_proj_employee
FOREIGN KEY (ssn) REFERENCES employee(ssn);

ALTER TABLE emp_proj
ADD CONSTRAINT FK_emp_proj_project
FOREIGN KEY (pno) REFERENCES project(pno);

ALTER TABLE dep_loc
ADD CONSTRAINT FK_dep_loc_department
FOREIGN KEY (dno) REFERENCES department(dno);