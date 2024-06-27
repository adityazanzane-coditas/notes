-- Exercise 1:
-- Create a stored procedure that inserts a new patient record into the 'patient' table with provided details.
DELIMITER //
CREATE PROCEDURE insertIntoPatients (IN patient_id INT, IN patient_name VARCHAR(20), IN patient_age INT, IN patient_phone DECIMAL(10,0))
BEGIN
    INSERT INTO patients VALUES (patient_id, patient_name, patient_age, patient_phone);
END//
DELIMITER ;
CALL insertIntoPatients(7, "Jack", 20, 8748463883);
SELECT * FROM patients;

-- Exercise 2:
-- Update the existing stored procedure to calculate and return the total amount billed for a given prescription ID.

DELIMITER //
CREATE PROCEDURE getTotalAmountBilled (IN prescription_id INT, OUT total_amount DECIMAL(10,2))
BEGIN
    SELECT SUM(amount) INTO total_amount FROM billing WHERE prescription_id = prescription_id;
END//
DELIMITER ;
-- Call the stored procedure to get the total amount billed for a specific prescription ID
CALL getTotalAmountBilled(1007, @total_amount);
-- Display the total amount billed
SELECT @total_amount AS total_amount_billed;