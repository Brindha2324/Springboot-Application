-- Create database
CREATE DATABASE medical_app;
USE medical_app;

-- Create users table for user login and registration
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

-- Create patients table for patient registration
CREATE TABLE Patientsregistration (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10),
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    additional_info TEXT
);

-- Create appointments table for booking appointments
CREATE TABLE bookappointment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    appointmentdate DATE NOT NULL,
    timeslot VARCHAR(20) NOT NULL,
    doctorlist VARCHAR(100) NOT NULL
);

-- Create submit form table
CREATE TABLE submitform (
    id INT AUTO_INCREMENT PRIMARY KEY,
    form_field1 VARCHAR(255),
    form_field2 VARCHAR(255),
    form_field3 VARCHAR(255),
    form_field4 VARCHAR(255)
);

-- Create doctor login table
CREATE TABLE doctorlogin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

-- Create admin login table
CREATE TABLE adminlogin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

-- Create seminar details table
CREATE TABLE seminardetails (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    description TEXT
);

-- Create doctor table
CREATE TABLE Doctor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100),
    contact_info VARCHAR(255)
);

-- Insert initial data into the user table
INSERT INTO user (username, password) VALUES ('user1', 'password1');
INSERT INTO user (username, password) VALUES ('user2', 'password2');

-- Insert initial data into the doctorlogin table
INSERT INTO doctorlogin (username, password) VALUES ('doctor1', 'docpassword1');
INSERT INTO doctorlogin (username, password) VALUES ('doctor2', 'docpassword2');

-- Insert initial data into the adminlogin table
INSERT INTO adminlogin (username, password) VALUES ('admin', 'adminpassword');

-- Insert initial data into the seminardetails table
INSERT INTO seminardetails (title, date, description) VALUES ('Seminar 1', '2024-07-15', 'Description for Seminar 1');
INSERT INTO seminardetails (title, date, description) VALUES ('Seminar 2', '2024-07-20', 'Description for Seminar 2');

-- Insert initial data into the Doctor table
INSERT INTO Doctor (name, specialty, contact_info) VALUES ('Dr. John ', 'Cardiologist', 'contact@hospital.com');
INSERT INTO Doctor (name, specialty, contact_info) VALUES ('Dr. Dr. Hari', 'Dermatologist', 'contact@hospital.com');

-- Example data for Patientsregistration table
INSERT INTO Patientsregistration (name, age, gender, address, city, state, country, email, phone, additional_info) VALUES
('Alice ', 29, 'Female', '123 Main St', 'Springfield', 'IL', 'USA', 'alice@example.com', '555-1234', 'No known allergies'),
('Williams', 45, 'Male', '456 Elm St', 'Greenville', 'TX', 'USA', 'williams@example.com', '555-5678', 'Diabetic');

-- Example data for bookappointment table
INSERT INTO bookappointment (username, appointmentdate, timeslot, doctorlist) VALUES
('user1', '2024-07-15', '10:00 AM', 'Dr. John'),
('user2', '2024-07-20', '2:00 PM', 'Dr. Hari');

-- Example data for submitform table
INSERT INTO submitform (form_field1, form_field2, form_field3, form_field4) VALUES
('data1', 'data2', 'data3', 'data4'),
('data5', 'data6', 'data7', 'data8');

-- Sample queries to verify data insertion
SELECT * FROM user;
SELECT * FROM doctorlogin;
SELECT * FROM adminlogin;
SELECT * FROM seminardetails;
SELECT * FROM Doctor;
SELECT * FROM Patientsregistration;
SELECT * FROM bookappointment;
SELECT * FROM submitform;

