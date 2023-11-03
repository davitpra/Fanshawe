CREATE DATABASE House_Painting_Business;
USE House_Painting_Business;

DROP TABLE IF EXISTS Custumers;
CREATE TABLE Custumers(
	custumer_id INT NOT NULL AUTO_INCREMENT ,
    fist_Name VARCHAR(20) NOT NULL,
    last_Name VARCHAR(20) NOT NULL,
    address_street VARCHAR(255) NOT NULL,
	city VARCHAR(255) NOT NULL,
	province VARCHAR(255) NOT NULL,
    phone_Number BIGINT(10) NOT NULL,
    email varchar(255),
    
    PRIMARY KEY(Custumer_id)     
);

-- Datos para la tabla Customers
INSERT INTO Custumers 
	(custumer_id, fist_Name, last_Name, address_street, city, province, phone_Number, email) 
VALUES
	(1, 'John', 'Doe', '123 Main St', 'Anytown', 'Anystate', 1234567890, 'john.doe@example.com'),
	(2, 'Jane', 'Smith', '456 Oak Ave', 'Sometown', 'Somestate', 2345678901, 'jane.smith@example.com'),
	(3, 'Michael', 'Johnson', '789 Maple Ln', 'Yourtown', 'Yourstate', 3456789012, 'michael.johnson@example.com');

DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
	employee_id int NOT NULL AUTO_INCREMENT ,
    fist_Name VARCHAR(20) NOT NULL,
    last_Name VARCHAR(20) NOT NULL,
    address_street VARCHAR(255) NOT NULL,
	city VARCHAR(255) NOT NULL,
	province VARCHAR(255) NOT NULL,
	hire_date DATE NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    
    PRIMARY KEY(Employee_id)        
);

-- Datos para la tabla Employees
INSERT INTO Employees 
	(employee_id, fist_Name, last_Name, address_street, city, province, hire_date, salary) 
VALUES
	(1, 'Emily', 'Williams', '1010 Cedar Rd', 'Histown', 'Hisstate', '2017-07-02', 70000.00),
	(2, 'William', 'Jones', '111 Pine Blvd', 'Hertown', 'Herstate', '2021-03-12', 75000.00),
	(3, 'Olivia', 'Brown', '1313 Walnut Lane', 'Ourtown', 'Ourstate', '2019-08-15', 80000.00);

DROP TABLE IF EXISTS Contracts;
CREATE TABLE Contracts (
	contract_id INT NOT NULL AUTO_INCREMENT,
    project_address VARCHAR(255) NOT NULL,
	project_city VARCHAR(255) NOT NULL,
	project_province VARCHAR(255) NOT NULL,
	project_start_date DATETIME NOt NULL,
	project_end_date DATETIME NOT NULL,
	price DECIMAL(10, 2),
	custumer_id INT NOT NULL,
	employee_id INT NOT NULL,

    PRIMARY KEY (contract_id),
	CONSTRAINT Custumer_fk
		FOREIGN KEY (custumer_id) 
        REFERENCES Custumers(custumer_id),
	CONSTRAINT Employee_fk
		FOREIGN KEY (employee_id) 
        REFERENCES employees(employee_id) 
);

-- Datos para la tabla Contracts
INSERT INTO Contracts 
	(contract_id, project_address, project_city, project_province, project_start_date, project_end_date, price, custumer_id, employee_id) 
VALUES
	(1, '123 Main St', 'Anytown', 'Anystate', '2023-10-15 08:00:00', '2023-10-20 17:00:00', 5000.00, 1, 1),
	(2, '456 Oak Ave', 'Sometown', 'Somestate', '2023-10-18 09:00:00', '2023-10-25 18:00:00', 7000.00, 2, 2),
	(3, '789 Maple Ln', 'Yourtown', 'Yourstate', '2023-10-20 10:00:00', '2023-10-28 19:00:00', 6000.00, 3, 3);

CREATE TABLE Colors (
	color_id INT NOT NULL AUTO_INCREMENT,
	color VARCHAR(20),
	inventary INT DEFAULT 0,
	PRIMARY KEY (color_id)
);

-- Datos para la tabla Colors
INSERT INTO Colors (color_id, color, inventary) VALUES
(1, 'Red', 20),
(2, 'Blue', 15),
(3, 'Green', 10);

CREATE TABLE Rooms (
	room_id INT NOT NULL AUTO_INCREMENT,
	paint_usage_amount INT DEFAULT 1,
	contract_id INT NOT NULL,
	color_id INT,

	PRIMARY KEY (room_id),
	CONSTRAINT contract_fk
		FOREIGN KEY (contract_id)
        REFERENCES Contracts(contract_id),
	CONSTRAINT color_fk
    	FOREIGN KEY (color_id)
        REFERENCES Colors(color_id)
);

-- Datos para la tabla Rooms
INSERT INTO Rooms (room_id, paint_usage_amount, contract_id, color_id) VALUES
(1, 2, 1, 1),
(2, 3, 2, 2),
(3, 1, 3, 3);