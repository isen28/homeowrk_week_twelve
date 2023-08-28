DROP DATABASE IF EXISTS movies_db;
CREATE DATABASE movies_db;

USE departments_db;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dep_name VARCHAR(100) NOT NULL
);

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dep_id INT,
    role TEXT NOT NULL,
    FOREIGN KEY (dep_id)
    REFERENCES department(id)
    ON DELETE SET NULL
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dep_id INT,
    role TEXT NOT NULL,
    FOREIGN KEY (dep_id)
    REFERENCES department(id)
    ON DELETE SET NULL
);