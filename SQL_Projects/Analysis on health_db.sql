-- Analysis on health_db

-- 1. Find all the patients in the state “Fct Abuja” and “Plateau”
SELECT patient_id, patient_name, gender, state
FROM patients
WHERE state IN ('Fct Abuja', 'Plateau');

-- 2. Retrieve the total number of male and female patients
SELECT gender, COUNT(*) AS total_patients
FROM patients
GROUP BY gender;

-- 3. List doctors and their specialties in states where confirmed appointments exist
SELECT DISTINCT d.doctor_name, d.specialty, d.state
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
WHERE a.status = 'Confirmed';
