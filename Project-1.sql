-->> Creating a Table for patients
create table patients(
Patients_Name VARCHAR(200),
Patients_Age int,
Patients_Address VARCHAR(1000),
Patients_Mobile_Number VARCHAR(20),

);
-->> Inserting the patients records
insert into patients ( Patients_Name , Patients_Age, Patients_Address ,Patients_Mobile_Number)Values
("Venkatesh Reddy",     42,   "12/34, Lakshmi Nagar, Banjarahills, Hyderabad, Telangana",   "+91 9845723198"),
("Sreeja Krishnan",     30,   "45, Krishna Villa, T. Nagar, Chennai, Tamil Nadu",           "+91 9885544231"),
("Prakash Kumar",	    55,   "23, Meenakshi Apartments, Mylapore, Chennai, Tamil Nadu",	"+91 9945771223"),
("Lakshmi Nair",        29,   "57,Parvathi Nagar, Kochi, Kerala",	                        "+91 9898003245"),
("Ravi Kumar",          32,   "38/2 , Maruthi Layout, Whitefield, Bangalore, Karnataka",    "+91 9884432789"),
("Divya Nandakumar",    38,	   " 3, Siva Nagar, Trivandrum, Kerala",	                    "+91 9945123456"),
("Arvind Venkataraman", 40,	  "109, Nandanavana, Madurai, Tamil Nadu",	                    "+91 9888321567"),
("Priya Lakshmi",       26,   "34, Krishnan Street, Rajahmundry, Andhra Pradesh",	        "+91 9864312790"),
("Karthik Subramanian", 45,   "4/5, Sundaram Residency, Coimbatore, Tamil Nadu",	        "+91 9654219876"),
("Anjali Shenoy",	    31,   " 121, Ravindra Enclave, Mangalore, Karnataka",	            "+91 9743234567");



-->>  Creating a Table for Doctors
create table doctor (
Doctor_Name VARCHAR(1000),
Doctor_Age int,
Doctor_Specialization VARCHAR(200),
Doctor_Position VARCHAR(1000)
);

-->> Inserting the doctors records

insert  into doctor (Doctor_Name ,Doctor_Age, Doctor_Specialization,Doctor_Position)values
("Dr. Arun Krishnan", 42, "Cardiology", "Senior Consultant"),
("Dr. Radhika Venkatesan", 36, "Neurology", "Consultant"),
("Dr. Sanjay Mohan", 48, "Orthopedics", "Head of Department"),
("Dr. Kavya Natarajan", 33, "Pediatrics", "Consultant"),
("Dr. Rajeshwar Rao", 46, "Gastroenterology", "Senior Consultant"),
("Dr. Vidya Ravi", 40, "Dermatology", "Consultant"),
("Dr. Vishnu Murthy", 34, "Ophthalmology", "Consultant"),
("Dr. Asha Nair", 45, "Gynecology", "Senior Consultant"),
("Dr. Vikram Reddy", 38, "Oncology", "Consultant"),
("Dr. Anitha Suresh", 44, "Endocrinology", "Senior Consultant");


-->>  Creating a Table for appointments

CREATE TABLE appointments (
    Appointment_ID INT PRIMARY KEY,
    Doctor_ID INT,
    Patient_ID INT,
    Appointment_Date DATE,
    Appointment_Time TIME,
    FOREIGN KEY (Doctor_ID) REFERENCES doctor(Doctor_ID),
    FOREIGN KEY (Patient_ID) REFERENCES patients(Patient_ID)
);

-->> Inserting the appointments records

INSERT INTO appointments (Appointment_ID, Doctor_ID, Patient_ID, Appointment_Date, Appointment_Time)
VALUES 
(1, 1, 1, '2025-01-10', '09:00:00'),
(2, 2, 2, '2025-01-11', '10:00:00'),
(3, 3, 3, '2025-01-12', '11:00:00'),
(4, 4, 4, '2025-01-13', '12:00:00'),
(5, 5, 5, '2025-01-14', '13:00:00'),
(6, 6, 6, '2025-01-15', '14:00:00'),
(7, 7, 7, '2025-01-16', '15:00:00'),
(8, 8, 8, '2025-01-17', '16:00:00'),
(9, 9, 9, '2025-01-18', '17:00:00'),
(10, 10, 10, '2025-01-19', '18:00:00');





create table Receipt(
Serial_Number int,
Patient_Name  varchar(100),
Patient_Age int,
Doctor_Name varchar(200),
Consultation_Fee int,
Treatment_Fee int,
Total_Fee int
);


INSERT INTO Receipt (Serial_Number, Patient_Name, Patient_Age, Doctor_Name, Consultation_Fee, Treatment_Fee, Total_Fee) VALUES
(1, "Venkatesh Reddy", 42, "Dr. Arun Krishnan", 500, 2000, 500 + 2000),
(2, "Sreeja Krishnan", 30, "Dr. Radhika Venkatesan", 600, 2500, 600 + 2500),
(3, "Prakash Kumar", 55, "Dr. Sanjay Mohan", 700, 3000, 700 + 3000),
(4, "Lakshmi Nair", 29, "Dr. Kavya Natarajan", 400, 1500, 400 + 1500),
(5, "Ravi Kumar", 32, "Dr. Rajeshwar Rao", 800, 3500, 800 + 3500),
(6, "Divya Nandakumar", 38, "Dr. Vidya Ravi", 450, 1800, 450 + 1800),
(7, "Arvind Venkataraman", 40, "Dr. Vishnu Murthy", 750, 3200, 750 + 3200),
(8, "Priya Lakshmi", 26, "Dr. Asha Nair", 500, 2000, 500 + 2000),
(9, "Karthik Subramanian", 45, "Dr. Vikram Reddy", 850, 3700, 850 + 3700),
(10, "Anjali Shenoy", 31, "Dr. Anitha Suresh", 550, 2200, 550 + 2200);



