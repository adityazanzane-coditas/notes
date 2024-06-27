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

