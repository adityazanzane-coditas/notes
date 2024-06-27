CREATE DATABASE Hospital;
use hospital;

CREATE TABLE Patients (
patient_id int primary key , 
patient_name varchar(50),
age int,
phone_number decimal(10,2)
);

Alter table patients modify phone_number decimal(10,0);

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(50),
    specialization VARCHAR(50)
);

CREATE TABLE Prescriptions (
prescription_id int , 
patient_id int, 
doctor_id int,
symptoms varchar(50),
medication varchar(50),
primary key(prescription_id, patient_id, doctor_id)
);

drop table Prescriptions;

CREATE TABLE Billing (
billing_id int , 
prescription_id int, 
total_amount int,
primary key(billing_id, prescription_id)
);

ALTER TABLE Prescriptions
ADD CONSTRAINT `fk_patient_id` FOREIGN KEY Prescriptions(patient_id)
REFERENCES Patients (patient_id);

ALTER TABLE Prescriptions
ADD CONSTRAINT `fk_doctor_id` FOREIGN KEY Prescriptions(doctor_id)
REFERENCES Doctors (doctor_id);

ALTER TABLE Billing
ADD CONSTRAINT `fk_prescription_id` FOREIGN KEY Billing(prescription_id)
REFERENCES Prescriptions (prescription_id);

INSERT INTO Patients(patient_id, patient_name, age, phone_number)
values (1, 'John Jason', 28, 7989674590),
(2, 'Aron Ray', 32, 7689403293),
(3, 'Richard Son', 40, 7567473892),
(4, 'David Grand', 57, 9787585743),
(5, 'Michael Roy', 19, 8675866474);

INSERT INTO Doctors(doctor_id, doctor_name, specialization)
values (101, 'Roy', 'Cardiologist'),
(102, 'Joy', 'Neurologist'),
(103, 'Boy', 'Gynecologist'),
(104, 'Toy', 'Paediatrics'),
(105, 'Soy', 'Psychiatrists');


INSERT INTO Prescriptions(prescription_id, patient_id, doctor_id, symptoms, medication)
values (1001, 5, 105, 'Psyco', 'Mental-treatment'),
(1002, 4, 104, ' Infectious Diseases', 'Palliative Medicine'),
(1003, 3, 103, 'Treatment for his wife', 'Medicine'),
(1004, 2, 102, 'Neuromuscular disease', 'Operation'),
(1005, 1, 101, 'Heart failure', 'Heart operation');

INSERT INTO Billing(billing_id, prescription_id, total_amount)
values(10001, 1005, 4000000),
(10002, 1004, 2000000),
(10003, 1003, 235000),
(10004, 1002, 11000),
(10005, 1001, 125000);

-- Exercises/Assignments:
-- Retrieve the names and ages of all patients.
-- Display the prescription details, including patient names, doctor names, symptoms, and medications. Order them by patient names in alphabetical ORDER
-- Calculate the total revenue generated by the hospital from all billing transactions.
-- Retrieve a comprehensive report that includes the patient names, doctor names, prescription details (symptoms and medications), and the total billing amount for each patient's prescription. If a patient does not have any prescriptions, still include their name in the report with NULL values for prescription details and billing amount.

Select patient_name and age from patients;
Select p.patient_name, d.doctor_name, pr.symptoms, pr.medication
From Patients p
Join Prescriptions pr on p.patient_id = pr.patient_id
Join Doctors d on pr.doctor_id = d.doctor_id
Order by p.patient_name asc;

Select sum(total_amount) as total_revenue
From Billing;

Select p.patient_name, d.doctor_name, pr.symptoms, pr.medication
From Patients p
Left Join Prescriptions pr on p.patient_id=pr.patient_id
Left Join Doctors d on pr.doctor_id = d.doctor_id
Left Join Billing b on pr.prescription_id = b.prescription_id
Order by p.patient_name asc;

-- Exercise 1: WITHOUT USING JOINS
-- Write a SQL query to list the names and ages of patients who have prescriptions written by doctors specializing in 'Cardiology'.
-- Extend the query to also display the doctor's name and specialization for each prescription.
-- For each doctor, find the total number of prescriptions they have written and display it along with their name and specialization.
-- For prescriptions written by doctors specializing in 'Orthopedics', find the patient with the highest total amount billed. 
-- Include the patient's name and the total amount.

-- 1
SELECT p.patient_name and p.age,
(SELECT d.doctor_name FROM Doctors d WHERE d.doctor_id = pr.doctor_id) AS doctor_name,
(SELECT d.specialization FROM Doctors d WHERE d.doctor_id = pr.doctor_id) AS specialization
FROM Patients p, Prescriptions pr
WHERE
p.patient_id = pr.patient_id
AND
pr.doctor_id IN (SELECT doctor_id FROM doctors WHERE specialization = 'Cardiologist');

-- 2
INSERT INTO Doctors(doctor_id, doctor_name, specialization)
values (106, 'John', 'Orthopedics');

INSERT INTO Patients(patient_id, patient_name, age, phone_number)
values (6, 'Gerald Jason', 32, 7676854940);

INSERT INTO Prescriptions
values (1006, 6, 106, 'Fever', 'Aspirin');

INSERT INTO Prescriptions
values (1007, 6, 106, 'Fever', 'Aspirin');

INSERT INTO Billing(billing_id, prescription_id, total_amount)
values(10006, 1006, 4000000);
INSERT INTO Billing(billing_id, prescription_id, total_amount)
values(10007, 1006, 31000);

SELECT d.doctor_name, d.specialization ,count(doctor_name)
FROM Doctors d, Prescriptions pr
WHERE d.doctor_id = pr.doctor_id
GROUP by d.doctor_name,d.specialization;

SELECT * FROM Prescriptions;

-- 3
SELECT patients.patient_name, sum(total_amount) AS Total_Amount FROM billing,patients WHERE prescription_id IN(
SELECT prescription_id FROM prescriptions
WHERE prescriptions.doctor_id IN (
SELECT doctor_id FROM doctors
WHERE doctors.specialization ="Orthopedics"))
AND patients.patient_id IN (SELECT patient_id FROM prescriptions WHERE prescriptions.prescription_id
 = billing.prescription_id)
GROUP BY patients.patient_name;



-- Exercise 1:
-- Create a view that displays patient information (name, age) for prescriptions written by doctors in the 'Cardiology' specialization.

CREATE VIEW Patient_Information as SELECT p.patient_name, p.age FROM Patients p
INNER JOIN Prescriptions pr
INNER JOIN Doctors d on d.doctor_id = pr.doctor_id WHERE d.specialization = 'Cardiologist';
SELECT * FROM Patient_Information;

-- Exercise 2:
-- Create a view that shows the total amount billed for each prescription, including patient name and doctor name.
CREATE VIEW Total_Bill as SELECT p.patient_name, d.doctor_name, sum(b.total_amount) FROM Patients p
INNER JOIN Prescriptions pr on p.patient_id = pr.patient_id 
INNER JOIN Billing b on pr.prescription_id = b.prescription_id
INNER JOIN Doctors d on d.doctor_id = pr.doctor_id
GROUP BY p.patient_name, d.doctor_name;
SELECT * FROM Total_Bill;
