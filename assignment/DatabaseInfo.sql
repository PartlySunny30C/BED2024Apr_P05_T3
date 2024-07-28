--Sql command used:
CREATE TABLE Users (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);
CREATE TABLE FinancialRecords (
    RecordID INT PRIMARY KEY IDENTITY(1,1),
    RecordDate DATE,
    Amount DECIMAL(10, 2),
    Branch VARCHAR(100)
);  
CREATE TABLE orders (
    order_id INT IDENTITY PRIMARY KEY,
    manager NVARCHAR(100),
    status NVARCHAR(50),
    branch_number INT,
    items NVARCHAR(MAX)
);

CREATE TABLE employees (
    id INT IDENTITY PRIMARY KEY,
    name NVARCHAR(100),
    contactNumber NVARCHAR(15),
    role NVARCHAR(50),
    datejoin DATE
);

INSERT INTO orders (manager, status, branch_number, items)
VALUES
    ('Alice Johnson', 'Pending', 1, N'[{ "name": "Japanese Corn", "quantity": 2 }, { "name": "Japanese Beef", "quantity": 1 }]'),
    ('Bob Smith', 'Delivered', 2, N'[{ "name": "Ginger", "quantity": 1 }]'),
    ('Carol White', 'Delivering', 3, N'[{ "name": "Kimchi", "quantity": 5 }, { "name": "Taiwan Cauliflower", "quantity": 3 }]'),
    ('Dave Brown', 'Pending', 1, N'[{ "name": "Pasar Broccoli", "quantity": 2 }, { "name": "Jasmine Rice", "quantity": 4 }]');

INSERT INTO employees (name, contactNumber, role, datejoin)
VALUES 
('Emily Clark', '8212 3456', 'Host/Hostess', '2023-02-20'),
('Michael White', '9412 6543', 'Sous Chef', '2022-08-15'),
('Olivia Martinez', '8324 4567', 'Dishwasher', '2022-11-01'),
('Daniel Lewis', '9032 5432', 'Line Cook', '2021-09-05'),
('Sophia Harris', '8762 3459', 'Pastry Chef', '2021-12-20'),
('James Taylor', '8653 2764', 'Busser', '2020-06-10'),
('Ava Anderson', '8543 6789', 'Food Runner', '2020-10-01'),
('William Robinson', '9345 9876', 'Barista', '2019-04-15'),
('Isabella Walker', '8234 5678', 'Assistant Manager', '2019-05-01'),
('Ethan Hall', '9432 6789', 'Receptionist', '2018-08-15'),
('Mia Young', '9123 4567', 'Restaurant Supervisor', '2018-10-01'),
('Lucas King', '8345 6789', 'Executive Chef', '2017-12-05'),
('Charlotte Scott', '8456 7890', 'Catering Coordinator', '2017-01-12'),
('Noah Green', '8254 6789', 'Food & Beverage Manager', '2016-11-20'),
('Liam Adams', '8567 8901', 'Service Manager', '2015-06-25'),
('Amelia Nelson', '8675 4321', 'Host/Hostess', '2015-09-10'),
('Oliver Carter', '8765 3214', 'Restaurant Director', '2014-03-12'),
('Aiden Phillips', '9456 7890', 'Restaurant Coordinator', '2014-05-25'),
('Evelyn Gray', '9032 6781', 'Bar Manager', '2013-02-18'),
('Elijah Rivera', '8945 6789', 'Head Waiter/Waitress', '2012-07-20');


/*Database info:
  user: 'Perseus',
  password: '42656c6c',
  server: 'localhost',
  database: 'BedAssignment'*/