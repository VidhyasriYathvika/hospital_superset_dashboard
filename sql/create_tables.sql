CREATE TABLE patients (
  patient_id SERIAL PRIMARY KEY,
  age INT,
  gender VARCHAR(10),
  insurance_type VARCHAR(50),
  branch VARCHAR(50)
);


CREATE TABLE admissions (
  admission_id SERIAL PRIMARY KEY,
  patient_id INT,
  department VARCHAR(50),
  admit_time TIMESTAMP,
  discharge_time TIMESTAMP,
  admission_type VARCHAR(20)
);

CREATE TABLE doctors (
  doctor_id SERIAL PRIMARY KEY,
  department VARCHAR(50),
  available_hours INT,
  booked_hours INT
);

CREATE TABLE billing (
  admission_id INT,
  cost NUMERIC
);

CREATE TABLE outcomes (
  admission_id INT,
  outcome VARCHAR(20),
  readmitted_30_days VARCHAR(5)
);

INSERT INTO patients (age, gender, insurance_type, branch) VALUES
(25,'Male','Private','Chennai'),
(30,'Female','Government','Chennai'),
(45,'Male','Private','Bangalore'),
(52,'Female','Private','Bangalore'),
(60,'Male','Government','Hyderabad'),
(35,'Female','Private','Hyderabad'),
(40,'Male','Private','Chennai'),
(55,'Female','Government','Chennai'),
(65,'Male','Private','Bangalore'),
(28,'Female','Private','Bangalore'),
(33,'Male','Government','Hyderabad'),
(48,'Female','Private','Hyderabad'),
(50,'Male','Private','Chennai'),
(38,'Female','Government','Chennai'),
(42,'Male','Private','Bangalore'),
(57,'Female','Private','Bangalore'),
(62,'Male','Government','Hyderabad'),
(29,'Female','Private','Hyderabad'),
(46,'Male','Private','Chennai'),
(53,'Female','Government','Chennai');

INSERT INTO admissions (patient_id, department, admit_time, discharge_time, admission_type) VALUES
(1,'Cardiology','2025-01-01 10:00','2025-01-05 12:00','Scheduled'),
(2,'Orthopedics','2025-01-02 11:00','2025-01-06 10:00','Scheduled'),
(3,'Emergency','2025-01-03 08:30','2025-01-04 18:00','Emergency'),
(4,'Oncology','2025-01-04 09:00','2025-01-10 15:00','Scheduled'),
(5,'General Medicine','2025-01-05 10:00','2025-01-07 11:00','Scheduled'),
(6,'Pediatrics','2025-01-06 14:00','2025-01-08 10:00','Scheduled'),
(7,'Emergency','2025-01-07 16:00','2025-01-07 23:00','Emergency'),
(8,'Cardiology','2025-01-08 09:00','2025-01-12 12:00','Scheduled'),
(9,'Orthopedics','2025-01-09 11:00','2025-01-15 14:00','Scheduled'),
(10,'General Medicine','2025-01-10 10:30','2025-01-12 09:00','Scheduled'),
(11,'Emergency','2025-01-11 22:00','2025-01-12 08:00','Emergency'),
(12,'Oncology','2025-01-12 09:00','2025-01-20 16:00','Scheduled'),
(13,'Cardiology','2025-01-13 08:00','2025-01-17 10:00','Scheduled'),
(14,'Pediatrics','2025-01-14 10:00','2025-01-16 09:00','Scheduled'),
(15,'Orthopedics','2025-01-15 11:00','2025-01-19 14:00','Scheduled'),
(16,'General Medicine','2025-01-16 09:30','2025-01-18 10:00','Scheduled'),
(17,'Emergency','2025-01-17 20:00','2025-01-18 06:00','Emergency'),
(18,'Oncology','2025-01-18 09:00','2025-01-25 15:00','Scheduled'),
(19,'Cardiology','2025-01-19 10:00','2025-01-23 12:00','Scheduled'),
(20,'General Medicine','2025-01-20 08:30','2025-01-22 09:00','Scheduled');


INSERT INTO doctors (department, available_hours, booked_hours) VALUES
('Cardiology',160,130),
('Orthopedics',160,140),
('Emergency',160,155),
('Oncology',160,120),
('Pediatrics',160,110),
('General Medicine',160,145);

INSERT INTO billing (admission_id, cost) VALUES
(1,85000),(2,40000),(3,15000),(4,120000),(5,20000),
(6,18000),(7,12000),(8,90000),(9,50000),(10,22000),
(11,13000),(12,140000),(13,88000),(14,16000),(15,45000),
(16,21000),(17,14000),(18,150000),(19,87000),(20,23000);

INSERT INTO outcomes (admission_id, outcome, readmitted_30_days) VALUES
(1,'Recovered','No'),
(2,'Recovered','No'),
(3,'Improved','Yes'),
(4,'Improved','No'),
(5,'Recovered','No'),
(6,'Recovered','No'),
(7,'Recovered','No'),
(8,'Improved','Yes'),
(9,'Recovered','No'),
(10,'Recovered','No'),
(11,'Improved','Yes'),
(12,'Improved','No'),
(13,'Recovered','No'),
(14,'Recovered','No'),
(15,'Recovered','No'),
(16,'Recovered','No'),
(17,'Improved','Yes'),
(18,'Transferred','No'),
(19,'Recovered','No'),
(20,'Recovered','No');

SELECT * FROM patients;
SELECT COUNT(*) FROM admissions;
SELECT COUNT(*) FROM billing;
SELECT COUNT(*) FROM outcomes;
ALTER USER postgres WITH PASSWORD 'postgres123';
