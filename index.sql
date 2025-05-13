CREATE DATABASE IF NOT EXISTS schoolSystem; -- create the database

USE schoolSystem; -- specify the database

-- creating tables

CREATE TABLE students (
  RegNO INT NOT NULL PRIMARY KEY,
  StudentName VARCHAR(50),
  Grade INT
);

CREATE TABLE teachers (
  ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  TeacherName VARCHAR(50),
  Phone VARCHAR(50)
);

-- subjects

CREATE TABLE math_marks (
  ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  RegNO VARCHAR(50),
  StudentName VARCHAR(100),
  FOREIGN KEY (RegNO) REFERENCE students(RegNO)
);

CREATE TABLE eng_marks (
  ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  RegNO VARCHAR(50),
  StudentName VARCHAR(100),
  FOREIGN KEY (RegNO) REFERENCE students(RegNO)
);

CREATE TABLE phys_marks (
  ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  RegNO VARCHAR(50),
  StudentName VARCHAR(100),
  FOREIGN KEY (RegNO) REFERENCE students(RegNO)
);

-- grades

CREATE TABLE grade_1_scores (
  ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  RegNO VARCHAR(50),
  StudentName VARCHAR(100)
  MathScore INT,
  EngScore INT,
  Phys_Score INT,,
  FOREIGN KEY (RegNO) REFERENCE students(RegNO)
);
