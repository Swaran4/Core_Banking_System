CREATE TABLE department (
    dno NUMBER PRIMARY KEY,
    dname VARCHAR2(50),
    mgr_ssn NUMBER(50)
);

CREATE TABLE employee (
    ssn NUMBER PRIMARY KEY,
    ename VARCHAR2(50),
    dob DATE,
    address VARCHAR2(50),
    salary NUMBER(10),
    dno NUMBER(10),
    sup_ssn NUMBER(10)
);

CREATE TABLE project (
    pno NUMBER PRIMARY KEY,
    pname VARCHAR2(50),
    p_loc VARCHAR2(50),
    dno NUMBER(10)
);

CREATE TABLE dependents (
    dependent_name VARCHAR2(50),
    dependent_dob DATE,    ssn NUMBER,
    pno NUMBER,
    no_of_hours NUMBER(50)
);


CREATE TABLE emp_proj (
    ssn NUMBER,
    pno NUMBER,
    no_of_hours NUMBER(50)
);

CREATE TABLE dep_loc (
    dno NUMBER(10),
    loc VARCHAR2(50)
);
