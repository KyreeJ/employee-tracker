DROP DATABASE IF EXISTS departments_db;
CREATE DATABASE departments_db;

\c departments_db;

CREATE TABLE department (
   id SERIAL PRIMARY KEY,
  department_name VARCHAR(30) Unique NOT NULL
);

CREATE TABLE role (
  id SERIAL PRIMARY KEY,
  title VARCHAR(30) Unique NOT NULL,
  salary Decimal NOT NULL,
  department_id INTEGER NOT NULL,
  Foreign KEY (department_id)
  references department (id)
  ON DELETE SET NULL


);

CREATE TABLE employee (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INTEGER NOT NULL,
  manager_id INTEGER,
  Foreign KEY (role_id) references role(id)
  ON DELETE SET NULL,
  Foreign KEY (manager_id)
  references employee (id)
  ON DELETE SET NULL
);


