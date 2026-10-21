CREATE TABLE staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    last_name VARCHAR(50) NOT NULL,
    current_role VARCHAR(100) NOT NULL,
    study_qualification VARCHAR(150) NOT NULL,
    work_experience_years INT NOT NULL,
    mobile VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    address TEXT NOT NULL,
    dob DATE NOT NULL,
    gender VARCHAR(20) NOT NULL,
    blood_group VARCHAR(10),
    joining_date DATE NOT NULL,
    passport_photo LONGBLOB
);
alter table staff add column role_type VARCHAR(100) NOT NULL after last_name;
ALTER TABLE staff MODIFY COLUMN passport_photo LONGBLOB;


INSERT INTO staff (first_name, middle_name, last_name, current_role, study_qualification, work_experience_years, mobile, email, address, dob, gender, blood_group, joining_date) VALUES 
-- Leadership & HODs
('Arundhati', 'Tarachand', 'Roy', 'Principal & Academic Director', 'Ph.D. in Educational Pedagogy', 24, '9876543210', 'arundhati.roy@shantiniketan.edu', 'Campus Bungalow 1, Knowledge Corridor, Ahmedabad', '1978-05-12', 'FEMALE', 'B+', '2010-06-01'),
('Rajiv', 'Ramesh', 'Sharma', 'Vice Principal (Academics)', 'M.Sc., B.Ed.', 18, '9876543211', 'rajiv.sharma@shantiniketan.edu', '45, Shanti Park, Ahmedabad', '1982-08-20', 'MALE', 'A+', '2012-07-15'),
('Meenakshi', 'Venkatraman', 'Dean', 'Dean of Science & STEM', 'Ph.D. in Physics', 16, '9876543212', 'meenakshi.dean@shantiniketan.edu', '12, Astron Society, Ahmedabad', '1985-03-14', 'FEMALE', 'O+', '2015-06-10'),
('Vikramaditya', 'Govind', 'Rao', 'Head of Commerce', 'M.Com, CA-Inter', 15, '9876543213', 'vikram.rao@shantiniketan.edu', '78, Heritage Avenue, Ahmedabad', '1984-11-05', 'MALE', 'AB+', '2016-04-01'),
('Parameshwaran', 'Madhavan', 'Nambiar', 'Director of Sports & Discipline', 'Retd. Indian Army Graduate', 22, '9876543214', 'pk.nambiar@shantiniketan.edu', 'Army Enclave, Ahmedabad', '1975-01-30', 'MALE', 'O-', '2018-01-10'),

-- Teachers from Timetable
('Priya', 'Mohan', 'Sharma', 'Pre-Primary Teacher', 'B.El.Ed.', 5, '9876543215', 'priya@shantiniketan.edu', 'Sector 4, Gandhinagar', '1995-09-12', 'FEMALE', 'A+', '2021-06-01'),
('Pushpa', 'Shankarlal', 'Joshi', 'Primary & Pre-Primary Teacher', 'B.A., B.Ed.', 10, '9876543216', 'joshi@shantiniketan.edu', '14, Swagat Nagar, Ahmedabad', '1988-12-04', 'FEMALE', 'B-', '2017-06-15'),
('Geeta', 'Haribhai', 'Patel', 'Junior KG Teacher', 'M.A., NTT', 8, '9876543217', 'geeta@shantiniketan.edu', '22, Pushpak Flats, Ahmedabad', '1990-04-18', 'FEMALE', 'O+', '2019-07-01'),
('Ramesh', 'Dahyabhai', 'Solanki', 'Art & Activity Instructor', 'B.F.A.', 12, '9876543218', 'ramesh@shantiniketan.edu', '5, Artist Colony, Ahmedabad', '1986-07-25', 'MALE', 'AB-', '2015-05-20'),
('Sunita', 'Natwarlal', 'Verma', 'Senior KG Teacher', 'B.Sc., B.Ed.', 9, '9876543219', 'sunita@shantiniketan.edu', '89, Green Park, Ahmedabad', '1992-02-14', 'FEMALE', 'A-', '2020-07-01'),
('Sarla', 'Manilal', 'Mehta', 'General Knowledge & Environment Teacher', 'M.Sc., B.Ed.', 11, '9876543220', 'mehta@shantiniketan.edu', '33, Shanti Niketan Road, Ahmedabad', '1987-10-09', 'FEMALE', 'B+', '2016-06-10'),
('Anita', 'Jagdish', 'Sharma', 'Primary English Teacher', 'M.A. English, B.Ed.', 14, '9876543221', 'sharma@shantiniketan.edu', '101, Titanium City, Ahmedabad', '1983-06-22', 'FEMALE', 'O+', '2014-07-01'),
('Mukesh', 'Ranchhodbhai', 'Patel', 'Mathematics & IT Teacher', 'B.Tech, B.Ed.', 7, '9876543222', 'patel@shantiniketan.edu', '56, Patan Society, Ahmedabad', '1993-11-30', 'MALE', 'A+', '2021-06-01'),
('Neha', 'Ganpatbhai', 'Desai', 'EVS & Environmental Studies Teacher', 'M.Sc. Botany, B.Ed.', 6, '9876543223', 'desai@shantiniketan.edu', '7, Naranpura, Ahmedabad', '1994-03-05', 'FEMALE', 'AB+', '2022-07-01'),
('Hansa', 'Jashvantbhai', 'Trivedi', 'Hindi Language Teacher', 'M.A. Hindi, B.Ed.', 13, '9876543224', 'trivedi@shantiniketan.edu', '88, Brahmin Society, Ahmedabad', '1985-09-19', 'FEMALE', 'O-', '2015-06-01'),
('Dinesh', 'Bhikhabhai', 'Solanki', 'Primary Mathematics Teacher', 'B.Sc. Mathematics, B.Ed.', 10, '9876543225', 'solanki@shantiniketan.edu', '19, Chandkheda, Ahmedabad', '1989-12-01', 'MALE', 'B+', '2017-07-01'),
('Geetha', 'Gopalakrishnan', 'Nair', 'English Literature & SST Teacher', 'M.A., B.Ed.', 12, '9876543226', 'nair@shantiniketan.edu', '44, Kerala House, Ahmedabad', '1986-04-11', 'FEMALE', 'A+', '2016-06-15'),
('Soumitra', 'Bimal', 'Sen', 'Science & English Senior Teacher', 'Ph.D. in Chemistry', 15, '9876543227', 'sen@shantiniketan.edu', '3, Tagore Nagar, Ahmedabad', '1981-08-27', 'MALE', 'O+', '2013-05-10'),
('Vidya', 'Shankar', 'Kulkarni', 'Social Studies Teacher', 'M.A. History, B.Ed.', 9, '9876543228', 'kulkarni@shantiniketan.edu', '9, Deccan Lane, Ahmedabad', '1991-01-23', 'FEMALE', 'B-', '2020-06-15'),
('Subramanian', 'Natarajan', 'Iyer', 'Secondary Science Teacher', 'Ph.D. in Biological Sciences', 14, '9876543229', 'iyer@shantiniketan.edu', '65, Kaveri Homes, Ahmedabad', '1983-05-08', 'MALE', 'AB+', '2014-06-01'),
('Hiren', 'Amritlal', 'Dave', 'Mathematics Teacher (Middle School)', 'M.Sc. Maths, B.Ed.', 11, '9876543230', 'dave@shantiniketan.edu', '21, Satellite Road, Ahmedabad', '1988-07-16', 'MALE', 'A+', '2017-06-01'),
('Lalitha', 'Venugopal', 'Rao', 'Social Science Teacher', 'M.A. Geography, B.Ed.', 13, '9876543231', 'rao@shantiniketan.edu', '50, Sindhu Bhavan Road, Ahmedabad', '1984-02-28', 'FEMALE', 'O+', '2015-07-01'),
('Radhika', 'Raghavan', 'Menon', 'English Core Teacher', 'M.A. English Lit', 10, '9876543232', 'menon@shantiniketan.edu', '14, Malabar Hills, Ahmedabad', '1989-10-05', 'FEMALE', 'B+', '2018-06-01'),
('Shantilal', 'Muljibhai', 'Acharya', 'Sanskrit & Languages Teacher', 'M.A. Sanskrit', 17, '9876543233', 'acharya@shantiniketan.edu', '32, Gita Mandir, Ahmedabad', '1980-11-21', 'MALE', 'O-', '2011-06-15'),
('Rajesh', 'Madhavlal', 'Verma', 'Secondary Mathematics & IT Teacher', 'M.Sc. Computer Science', 12, '9876543234', 'verma@shantiniketan.edu', '77, Cyber Heights, Ahmedabad', '1986-06-15', 'MALE', 'A-', '2016-07-01'),
('Kothapalli', 'Subba', 'Rao', 'Senior Physics Professor', 'Ph.D. in Physics', 20, '9876543235', 'kr.rao@shantiniketan.edu', '10, Science Faculty Quarters, Ahmedabad', '1979-04-03', 'MALE', 'B+', '2009-07-01'),
('Anita', 'Bipinbhai', 'Roy', 'Biology Faculty & NEET Mentor', 'Ph.D. in Biotechnology', 15, '9876543236', 'anita.roy@shantiniketan.edu', '19, Biotech Enclave, Ahmedabad', '1984-09-09', 'FEMALE', 'AB+', '2015-06-01'),
('Chirag', 'Navnitbhai', 'Parikh', 'Commerce & Accountancy Teacher', 'M.Com, B.Ed.', 14, '9876543237', 'parikh@shantiniketan.edu', '41, Stock Exchange Road, Ahmedabad', '1985-12-11', 'MALE', 'O+', '2015-07-01'),
('Hemant', 'Champaklal', 'Thakkar', 'Economics & Business Studies Professor', 'Ph.D. in Economics', 18, '9876543238', 'thakkar@shantiniketan.edu', '55, Arthashastra Vihar, Ahmedabad', '1981-03-17', 'MALE', 'A+', '2012-06-01'),

-- IT & Admin Staff
('Suresh', 'Hirabhai', 'Kumar', 'IT Systems Administrator', 'B.C.A, Network Certified', 8, '9876543239', 'suresh.it@shantiniketan.edu', 'Server Room Block, Ahmedabad', '1992-05-20', 'MALE', 'O+', '2020-01-10'),
('Kiran', 'Kantibhai', 'Patel', 'Front Desk Administrative Officer', 'B.Com, Diploma in Secretarial Practice', 7, '9876543240', 'kiran.admin@shantiniketan.edu', 'Admin Block, Ahmedabad', '1994-08-15', 'FEMALE', 'A+', '2021-03-01'),

-- Support & Maintenance Staff (Peons, Cleaning)
('Magan', 'Govindbhai', 'Bhai', 'Campus Support Attendant (Peon)', 'High School', 10, '9876543241', 'magan.peon@shantiniketan.edu', 'Staff Quarters, Ahmedabad', '1980-02-10', 'MALE', 'O+', '2016-01-15'),
('Ramila', 'Ramanbhai', 'Parmar', 'Housekeeping & Sanitation Staff', 'Middle School', 12, '9876543242', 'ramila.clean@shantiniketan.edu', 'Vastrapur, Ahmedabad', '1983-07-12', 'FEMALE', 'B+', '2017-02-01');

 UPDATE staff SET staff_id = staff_id + 1000;
 
-- 2. Update Leadership & HODs
UPDATE staff SET role_type = 'Leadership & HOD' WHERE staff_id BETWEEN 1001 AND 1005;
-- UPDATE staff SET role_type = 'Leadership & HOD' WHERE role_type = 'Leadership & HODs';
-- 3. Update Teachers
UPDATE staff SET role_type = 'Teacher' WHERE staff_id BETWEEN 1006 AND 1029;
-- UPDATE staff SET role_type = 'Teacher' WHERE role_type = 'Teachers';
-- 4. Update IT & Admin Staff
UPDATE staff SET role_type = 'IT & Admin' WHERE staff_id BETWEEN 1030 AND 1031;

-- 5. Update Support & Maintenance Staff
UPDATE staff SET role_type = 'Support & Maintenance' WHERE staff_id BETWEEN 1032 AND 1033;
-- UPDATE staff SET role_type = 'Support & Maintenance' where role_type = 'Support & Maintenance Staff' ;

INSERT INTO staff (
    first_name, 
    middle_name, 
    last_name, 
    role_type, 
    current_role, 
    study_qualification, 
    work_experience_years, 
    mobile, 
    email, 
    address, 
    dob, 
    gender, 
    blood_group, 
    joining_date, 
    passport_photo
) VALUES 
-- 8 Bus Drivers
('Ramesh', 'L.', 'Patel', 'Driver', 'Bus Driver', 'High School', 6, '9824012345', 'ramesh.patel@shantiniketan.com', 'Ahmedabad, Gujarat', '1982-04-15', 'Male', 'O+', '2022-06-01', NULL),
('Suresh', 'M.', 'Kumar', 'Driver', 'Bus Driver', 'High School', 5, '9824012346', 'suresh.kumar@shantiniketan.com', 'Ahmedabad, Gujarat', '1985-07-22', 'Male', 'B+', '2022-06-01', NULL),
('Mahesh', 'K.', 'Joshi', 'Driver', 'Bus Driver', 'Secondary', 8, '9824012347', 'mahesh.joshi@shantiniketan.com', 'Ahmedabad, Gujarat', '1980-03-10', 'Male', 'A+', '2021-05-15', NULL),
('Dinesh', 'R.', 'Shah', 'Driver', 'Bus Driver', 'High School', 10, '9824012348', 'dinesh.shah@shantiniketan.com', 'Ahmedabad, Gujarat', '1978-11-05', 'Male', 'AB+', '2020-04-10', NULL),
('Rajesh', 'B.', 'Parmar', 'Driver', 'Bus Driver', 'Secondary', 7, '9824012349', 'rajesh.parmar@shantiniketan.com', 'Ahmedabad, Gujarat', '1983-09-18', 'Male', 'O-', '2022-07-01', NULL),
('Ketan', 'S.', 'Dave', 'Driver', 'Bus Driver', 'High School', 4, '9824012350', 'ketan.dave@shantiniketan.com', 'Ahmedabad, Gujarat', '1988-01-25', 'Male', 'B-', '2023-01-10', NULL),
('Jayesh', 'V.', 'Makwana', 'Driver', 'Bus Driver', 'High School', 5, '9824012351', 'jayesh.makwana@shantiniketan.com', 'Ahmedabad, Gujarat', '1986-12-12', 'Male', 'A-', '2022-08-15', NULL),
('Chirag', 'H.', 'Solanki', 'Driver', 'Bus Driver', 'Secondary', 6, '9824012352', 'chirag.solanki@shantiniketan.com', 'Ahmedabad, Gujarat', '1984-06-30', 'Male', 'O+', '2021-11-20', NULL),

-- 1 School Car Driver
('Hitesh', 'N.', 'Rathod', 'Driver', 'Staff Car Driver', 'High School', 8, '9824023456', 'hitesh.rathod@shantiniketan.com', 'Ahmedabad, Gujarat', '1982-10-05', 'Male', 'B+', '2021-03-01', NULL),

-- 1 Transport/Utility Van Driver
('Pravin', 'D.', 'Thakor', 'Driver', 'Transport Van Driver', 'Secondary', 7, '9824034567', 'pravin.thakor@shantiniketan.com', 'Ahmedabad, Gujarat', '1985-02-20', 'Male', 'O+', '2022-02-10', NULL);



-- update staff set passport_photo = LOAD_FILE('E:\Code\Project\Shantiniketan - SMS\JSP\Shantiniketan_higher_secondary_school\web\Images\Dr. Arundhati Roy - Principal - Copy.png') where staff_id=1001;


 
