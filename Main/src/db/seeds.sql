-- seeds.sql

-- Create Roles
INSERT INTO department (id, department_name) VALUES
(1, 'Appliances'),
(2, 'information technology'),
(3, 'utilities'),
(4, 'Human resources'),
(5, 'Marketing');

-- Create Salaries
INSERT INTO role (id, title, salary, department_id) VALUES
(1,'Software Engineer',80000,1),
(2,'Project Manager', 90000,2),
(3,'Data Analyst',70000,3),
(4,'HR Specialist',60000,4),
(5,'Marketing Coordinator', 55000,5),
(6,'senior manager',95000,3);

-- Create Employees
INSERT INTO employee (id, first_name,last_name , role_id, manager_id) VALUES
(1, 'Alice', 'Smith', 1,NULL ),
(2, 'Bob','Johnson', 2,NULL),
(3, 'Charlie', 'Brown', 3, NULL),
(4, 'Diana', 'Prince', 4, NULL),
(5, 'Eve', 'Adams', 5, NULL);

-- Insert Managers
INSERT INTO employee (id,first_name,last_name, role_id,manager_id) VALUES
(6,'Alice' ,'Johnson',6, NULL),
(7,'Bob' , 'Smith',6,NULL),
(8,'Carol','Lee', 6, NULL);

-- Insert Employees under Managers
INSERT INTO employee (id,first_name,last_name,role_id,manager_id) VALUES
(9,'Mark' , 'Brown' ,1,1),
(10,'Eve' , 'Davis',2,2),
(11,'Frank', 'Wilson',3,3),
(12,'Grace', 'Taylor',4,4 ),
(13,'Hank', 'Miller',5,5),
(14,'Ivy', 'Martinez',1,1),
(15,'Jack', 'Anderson',2,2),
(16,'Kathy', 'Thomas',3,3);

