CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE
);

CREATE TABLE Contracts (
    contract_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    signature_date DATE,
    duration INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

CREATE TABLE FamilyMembers (
    family_member_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

CREATE TABLE Services (
    service_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES Employees(employee_id)
);

CREATE TABLE EmployeeServices (
    employee_id INT,
    service_id INT,
    PRIMARY KEY (employee_id, service_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (service_id) REFERENCES Services(service_id)
);