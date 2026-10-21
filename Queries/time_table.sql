

CREATE TABLE time_table (
    schedule_id INT AUTO_INCREMENT PRIMARY KEY,
    applying_grade VARCHAR(50) NOT NULL,
    selected_stream VARCHAR(50),
    curriculum_board VARCHAR(50) NOT NULL,
    day_of_week VARCHAR(20) NOT NULL,
    period_number INT NOT NULL,
    subject_name VARCHAR(100) NOT NULL,
    teacher_name VARCHAR(100),
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    room_number VARCHAR(20)
);



INSERT INTO time_table (applying_grade, selected_stream, curriculum_board, day_of_week, period_number, subject_name, teacher_name, start_time, end_time, room_number) VALUES 

-- ==========================================
-- 1. NURSERY (1 Period per day, Mon - Sat)
-- ==========================================
('NURSERY', NULL, 'CBSE', 'Monday', 1, 'Early Rhymes & Play', 'Ms. Priya', '09:00:00', '09:45:00', 'Pre-Primary Hall A'),
('NURSERY', NULL, 'CBSE', 'Tuesday', 1, 'Coloring & Fun', 'Mrs. Joshi', '09:00:00', '09:45:00', 'Pre-Primary Hall A'),
('NURSERY', NULL, 'CBSE', 'Wednesday', 1, 'Alphabet Activities', 'Ms. Priya', '09:00:00', '09:45:00', 'Pre-Primary Hall A'),
('NURSERY', NULL, 'CBSE', 'Thursday', 1, 'Number Rhymes', 'Mrs. Joshi', '09:00:00', '09:45:00', 'Pre-Primary Hall A'),
('NURSERY', NULL, 'CBSE', 'Friday', 1, 'Interactive Music', 'Ms. Priya', '09:00:00', '09:45:00', 'Pre-Primary Hall A'),
('NURSERY', NULL, 'CBSE', 'Saturday', 1, 'Fun Saturday Play', 'Ms. Priya', '09:00:00', '09:45:00', 'Pre-Primary Hall A'),

-- ==========================================
-- 2. JUNIOR KG (2 Periods per day, Mon - Sat)
-- ==========================================
('JR_KG', NULL, 'CBSE', 'Monday', 1, 'Alphabet Fun & Phonics', 'Mrs. Geeta', '09:00:00', '09:45:00', 'Pre-Primary Hall B'),
('JR_KG', NULL, 'CBSE', 'Monday', 2, 'Number Recognition (1-20)', 'Mrs. Geeta', '09:45:00', '10:30:00', 'Pre-Primary Hall B'),
('JR_KG', NULL, 'CBSE', 'Tuesday', 1, 'Drawing & Craft', 'Mr. Ramesh', '09:00:00', '09:45:00', 'Activity Room'),
('JR_KG', NULL, 'CBSE', 'Tuesday', 2, 'Phonics Practice', 'Mrs. Geeta', '09:45:00', '10:30:00', 'Pre-Primary Hall B'),
('JR_KG', NULL, 'CBSE', 'Wednesday', 1, 'Environmental Basics', 'Mrs. Geeta', '09:00:00', '09:45:00', 'Pre-Primary Hall B'),
('JR_KG', NULL, 'CBSE', 'Wednesday', 2, 'Outdoor Games', 'Mr. Ramesh', '09:45:00', '10:30:00', 'Playground'),
('JR_KG', NULL, 'CBSE', 'Thursday', 1, 'Shapes & Colors', 'Mrs. Geeta', '09:00:00', '09:45:00', 'Pre-Primary Hall B'),
('JR_KG', NULL, 'CBSE', 'Thursday', 2, 'Action Songs', 'Mrs. Geeta', '09:45:00', '10:30:00', 'Pre-Primary Hall B'),
('JR_KG', NULL, 'CBSE', 'Friday', 1, 'Story Telling', 'Mrs. Geeta', '09:00:00', '09:45:00', 'Pre-Primary Hall B'),
('JR_KG', NULL, 'CBSE', 'Friday', 2, 'Block Building', 'Mr. Ramesh', '09:45:00', '10:30:00', 'Activity Room'),
('JR_KG', NULL, 'CBSE', 'Saturday', 1, 'Activity & Games', 'Mrs. Geeta', '09:00:00', '09:45:00', 'Pre-Primary Hall B'),
('JR_KG', NULL, 'CBSE', 'Saturday', 2, 'Weekend Rhymes', 'Mrs. Geeta', '09:45:00', '10:30:00', 'Pre-Primary Hall B'),

-- ==========================================
-- 3. SENIOR KG (2 Periods per day, Mon - Sat)
-- ==========================================
('SR_KG', NULL, 'CBSE', 'Monday', 1, 'Basic Reading & Writing', 'Ms. Sunita', '09:00:00', '09:45:00', 'Pre-Primary Hall C'),
('SR_KG', NULL, 'CBSE', 'Monday', 2, 'Intro to Addition', 'Ms. Sunita', '09:45:00', '10:30:00', 'Pre-Primary Hall C'),
('SR_KG', NULL, 'CBSE', 'Tuesday', 1, 'Environmental Awareness', 'Mrs. Mehta', '09:00:00', '09:45:00', 'Pre-Primary Hall C'),
('SR_KG', NULL, 'CBSE', 'Tuesday', 2, 'Hindi Alphabets', 'Ms. Sunita', '09:45:00', '10:30:00', 'Pre-Primary Hall C'),
('SR_KG', NULL, 'CBSE', 'Wednesday', 1, 'Writing Practice', 'Ms. Sunita', '09:00:00', '09:45:00', 'Pre-Primary Hall C'),
('SR_KG', NULL, 'CBSE', 'Wednesday', 2, 'Drawing & Craft', 'Mr. Ramesh', '09:45:00', '10:30:00', 'Activity Room'),
('SR_KG', NULL, 'CBSE', 'Thursday', 1, 'Subtraction Basics', 'Ms. Sunita', '09:00:00', '09:45:00', 'Pre-Primary Hall C'),
('SR_KG', NULL, 'CBSE', 'Thursday', 2, 'General Knowledge', 'Mrs. Mehta', '09:45:00', '10:30:00', 'Pre-Primary Hall C'),
('SR_KG', NULL, 'CBSE', 'Friday', 1, 'English Sentences', 'Ms. Sunita', '09:00:00', '09:45:00', 'Pre-Primary Hall C'),
('SR_KG', NULL, 'CBSE', 'Friday', 2, 'Physical Education', 'Mr. Ramesh', '09:45:00', '10:30:00', 'Playground'),
('SR_KG', NULL, 'CBSE', 'Saturday', 1, 'Review & Quiz', 'Ms. Sunita', '09:00:00', '09:45:00', 'Pre-Primary Hall C'),
('SR_KG', NULL, 'CBSE', 'Saturday', 2, 'Fun Activity', 'Ms. Sunita', '09:45:00', '10:30:00', 'Pre-Primary Hall C'),

-- ==========================================
-- 4. CLASSES I TO X (5 Periods Mon-Fri, 3 Periods Saturday)
-- ==========================================
-- CLASS I
('CLASS_1', NULL, 'CBSE', 'Monday', 1, 'English Language', 'Mrs. Sharma', '08:00:00', '08:45:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Monday', 2, 'Basic Mathematics', 'Mr. Patel', '08:45:00', '09:30:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Monday', 3, 'Environmental Studies', 'Ms. Desai', '09:45:00', '10:30:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Monday', 4, 'Hindi Basics', 'Mrs. Trivedi', '10:30:00', '11:15:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Monday', 5, 'Art & Craft', 'Mr. Mehta', '11:15:00', '12:00:00', 'Art Hall'),

('CLASS_1', NULL, 'CBSE', 'Tuesday', 1, 'Basic Mathematics', 'Mr. Patel', '08:00:00', '08:45:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Tuesday', 2, 'English Reading', 'Mrs. Sharma', '08:45:00', '09:30:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Tuesday', 3, 'Environmental Studies', 'Ms. Desai', '09:45:00', '10:30:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Tuesday', 4, 'General Knowledge', 'Mrs. Sharma', '10:30:00', '11:15:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Tuesday', 5, 'Music & Rhymes', 'Ms. Priya', '11:15:00', '12:00:00', 'Activity Room'),

('CLASS_1', NULL, 'CBSE', 'Wednesday', 1, 'English Language', 'Mrs. Sharma', '08:00:00', '08:45:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Wednesday', 2, 'Basic Mathematics', 'Mr. Patel', '08:45:00', '09:30:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Wednesday', 3, 'Hindi Basics', 'Mrs. Trivedi', '09:45:00', '10:30:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Wednesday', 4, 'Environmental Studies', 'Ms. Desai', '10:30:00', '11:15:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Wednesday', 5, 'Computer Basics', 'Mr. Verma', '11:15:00', '12:00:00', 'Computer Lab 1'),

('CLASS_1', NULL, 'CBSE', 'Thursday', 1, 'Basic Mathematics', 'Mr. Patel', '08:00:00', '08:45:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Thursday', 2, 'English Reading', 'Mrs. Sharma', '08:45:00', '09:30:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Thursday', 3, 'Hindi Basics', 'Mrs. Trivedi', '09:45:00', '10:30:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Thursday', 4, 'Art & Craft', 'Mr. Mehta', '10:30:00', '11:15:00', 'Art Hall'),
('CLASS_1', NULL, 'CBSE', 'Thursday', 5, 'EVS Activity', 'Ms. Desai', '11:15:00', '12:00:00', 'Room-101'),

('CLASS_1', NULL, 'CBSE', 'Friday', 1, 'English Language', 'Mrs. Sharma', '08:00:00', '08:45:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Friday', 2, 'Basic Mathematics', 'Mr. Patel', '08:45:00', '09:30:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Friday', 3, 'Environmental Studies', 'Ms. Desai', '09:45:00', '10:30:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Friday', 4, 'Story Telling', 'Mrs. Sharma', '10:30:00', '11:15:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:15:00', '12:00:00', 'Playground'),

('CLASS_1', NULL, 'CBSE', 'Saturday', 1, 'Activity & Craft', 'Mr. Mehta', '08:00:00', '08:45:00', 'Art Hall'),
('CLASS_1', NULL, 'CBSE', 'Saturday', 2, 'Light Mathematics', 'Mr. Patel', '08:45:00', '09:30:00', 'Room-101'),
('CLASS_1', NULL, 'CBSE', 'Saturday', 3, 'Sports & Play', 'Mr. Ramesh', '09:45:00', '10:30:00', 'Playground'),

-- CLASS II
('CLASS_2', NULL, 'CBSE', 'Monday', 1, 'English Grammar', 'Mrs. Sharma', '08:00:00', '08:45:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Monday', 2, 'Mathematics', 'Mr. Patel', '08:45:00', '09:30:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Monday', 3, 'EVS & Nature', 'Ms. Desai', '09:45:00', '10:30:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Monday', 4, 'Hindi Reader', 'Mrs. Trivedi', '10:30:00', '11:15:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Monday', 5, 'Computer Basics', 'Mr. Verma', '11:15:00', '12:00:00', 'Computer Lab 1'),

('CLASS_2', NULL, 'CBSE', 'Tuesday', 1, 'Mathematics', 'Mr. Patel', '08:00:00', '08:45:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Tuesday', 2, 'English Literature', 'Mrs. Sharma', '08:45:00', '09:30:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Tuesday', 3, 'Hindi Grammar', 'Mrs. Trivedi', '09:45:00', '10:30:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Tuesday', 4, 'EVS Activity', 'Ms. Desai', '10:30:00', '11:15:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Tuesday', 5, 'Art & Craft', 'Mr. Mehta', '11:15:00', '12:00:00', 'Art Hall'),

('CLASS_2', NULL, 'CBSE', 'Wednesday', 1, 'English Grammar', 'Mrs. Sharma', '08:00:00', '08:45:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Wednesday', 2, 'Mathematics', 'Mr. Patel', '08:45:00', '09:30:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Wednesday', 3, 'EVS & Nature', 'Ms. Desai', '09:45:00', '10:30:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Wednesday', 4, 'General Knowledge', 'Mrs. Sharma', '10:30:00', '11:15:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Wednesday', 5, 'Music', 'Ms. Priya', '11:15:00', '12:00:00', 'Activity Room'),

('CLASS_2', NULL, 'CBSE', 'Thursday', 1, 'Mathematics', 'Mr. Patel', '08:00:00', '08:45:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Thursday', 2, 'English Literature', 'Mrs. Sharma', '08:45:00', '09:30:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Thursday', 3, 'Hindi Reader', 'Mrs. Trivedi', '09:45:00', '10:30:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Thursday', 4, 'Computer Lab', 'Mr. Verma', '10:30:00', '11:15:00', 'Computer Lab 1'),
('CLASS_2', NULL, 'CBSE', 'Thursday', 5, 'EVS Project', 'Ms. Desai', '11:15:00', '12:00:00', 'Room-102'),

('CLASS_2', NULL, 'CBSE', 'Friday', 1, 'English Grammar', 'Mrs. Sharma', '08:00:00', '08:45:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Friday', 2, 'Mathematics', 'Mr. Patel', '08:45:00', '09:30:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Friday', 3, 'Hindi Grammar', 'Mrs. Trivedi', '09:45:00', '10:30:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Friday', 4, 'Library', 'Mrs. Sharma', '10:30:00', '11:15:00', 'Library'),
('CLASS_2', NULL, 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:15:00', '12:00:00', 'Playground'),

('CLASS_2', NULL, 'CBSE', 'Saturday', 1, 'Activity & Craft', 'Mr. Mehta', '08:00:00', '08:45:00', 'Art Hall'),
('CLASS_2', NULL, 'CBSE', 'Saturday', 2, 'Fun Mathematics', 'Mr. Patel', '08:45:00', '09:30:00', 'Room-102'),
('CLASS_2', NULL, 'CBSE', 'Saturday', 3, 'Sports & Games', 'Mr. Ramesh', '09:45:00', '10:30:00', 'Playground'),

-- CLASS III
('CLASS_3', NULL, 'CBSE', 'Monday', 1, 'Mathematics', 'Mr. Solanki', '08:00:00', '08:50:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Monday', 2, 'English Literature', 'Mrs. Nair', '08:50:00', '09:40:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Monday', 3, 'Science Explorations', 'Dr. Sen', '09:55:00', '10:45:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Monday', 4, 'Social Studies', 'Ms. Kulkarni', '10:45:00', '11:35:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Monday', 5, 'Hindi Literature', 'Mrs. Trivedi', '11:35:00', '12:25:00', 'Room-103'),

('CLASS_3', NULL, 'CBSE', 'Tuesday', 1, 'Science Explorations', 'Dr. Sen', '08:00:00', '08:50:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Tuesday', 2, 'Mathematics', 'Mr. Solanki', '08:50:00', '09:40:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Tuesday', 3, 'English Grammar', 'Mrs. Nair', '09:55:00', '10:45:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Tuesday', 4, 'Social Studies', 'Ms. Kulkarni', '10:45:00', '11:35:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Tuesday', 5, 'Computer Science', 'Mr. Verma', '11:35:00', '12:25:00', 'Computer Lab 1'),

('CLASS_3', NULL, 'CBSE', 'Wednesday', 1, 'Mathematics', 'Mr. Solanki', '08:00:00', '08:50:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Wednesday', 2, 'Hindi Literature', 'Mrs. Trivedi', '08:50:00', '09:40:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Wednesday', 3, 'English Literature', 'Mrs. Nair', '09:55:00', '10:45:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Wednesday', 4, 'Science Lab', 'Dr. Sen', '10:45:00', '11:35:00', 'Science Lab A'),
('CLASS_3', NULL, 'CBSE', 'Wednesday', 5, 'Art & Craft', 'Mr. Mehta', '11:35:00', '12:25:00', 'Art Hall'),

('CLASS_3', NULL, 'CBSE', 'Thursday', 1, 'Computer Science', 'Mr. Verma', '08:00:00', '08:50:00', 'Computer Lab 1'),
('CLASS_3', NULL, 'CBSE', 'Thursday', 2, 'English Grammar', 'Mrs. Nair', '08:50:00', '09:40:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Thursday', 3, 'Mathematics', 'Mr. Solanki', '09:55:00', '10:45:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Thursday', 4, 'Social Studies', 'Ms. Kulkarni', '10:45:00', '11:35:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Thursday', 5, 'Hindi Grammar', 'Mrs. Trivedi', '11:35:00', '12:25:00', 'Room-103'),

('CLASS_3', NULL, 'CBSE', 'Friday', 1, 'Science Explorations', 'Dr. Sen', '08:00:00', '08:50:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Friday', 2, 'Social Studies', 'Ms. Kulkarni', '08:50:00', '09:40:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Friday', 3, 'Mathematics', 'Mr. Solanki', '09:55:00', '10:45:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Friday', 4, 'Library', 'Mrs. Nair', '10:45:00', '11:35:00', 'Library'),
('CLASS_3', NULL, 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:35:00', '12:25:00', 'Playground'),

('CLASS_3', NULL, 'CBSE', 'Saturday', 1, 'Sports & Games', 'Mr. Ramesh', '08:00:00', '08:50:00', 'Playground'),
('CLASS_3', NULL, 'CBSE', 'Saturday', 2, 'Mathematics Practice', 'Mr. Solanki', '08:50:00', '09:40:00', 'Room-103'),
('CLASS_3', NULL, 'CBSE', 'Saturday', 3, 'Drawing & Craft', 'Mr. Mehta', '09:55:00', '10:45:00', 'Art Hall'),

-- CLASS IV
('CLASS_4', NULL, 'CBSE', 'Monday', 1, 'English Literature', 'Mrs. Nair', '08:00:00', '08:50:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Monday', 2, 'Mathematics', 'Mr. Solanki', '08:50:00', '09:40:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Monday', 3, 'General Science', 'Dr. Sen', '09:55:00', '10:45:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Monday', 4, 'Computer Basics', 'Mr. Verma', '10:45:00', '11:35:00', 'Computer Lab 1'),
('CLASS_4', NULL, 'CBSE', 'Monday', 5, 'Social Studies', 'Ms. Kulkarni', '11:35:00', '12:25:00', 'Room-104'),

('CLASS_4', NULL, 'CBSE', 'Tuesday', 1, 'General Science', 'Dr. Sen', '08:00:00', '08:50:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Tuesday', 2, 'Computer Basics', 'Mr. Verma', '08:50:00', '09:40:00', 'Computer Lab 1'),
('CLASS_4', NULL, 'CBSE', 'Tuesday', 3, 'Mathematics', 'Mr. Solanki', '09:55:00', '10:45:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Tuesday', 4, 'English Grammar', 'Mrs. Nair', '10:45:00', '11:35:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Tuesday', 5, 'Hindi Reader', 'Mrs. Trivedi', '11:35:00', '12:25:00', 'Room-104'),

('CLASS_4', NULL, 'CBSE', 'Wednesday', 1, 'Social Studies', 'Ms. Kulkarni', '08:00:00', '08:50:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Wednesday', 2, 'Mathematics', 'Mr. Solanki', '08:50:00', '09:40:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Wednesday', 3, 'English Literature', 'Mrs. Nair', '09:55:00', '10:45:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Wednesday', 4, 'General Science', 'Dr. Sen', '10:45:00', '11:35:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Wednesday', 5, 'Creative Arts', 'Mr. Mehta', '11:35:00', '12:25:00', 'Art Hall'),

('CLASS_4', NULL, 'CBSE', 'Thursday', 1, 'Hindi Reader', 'Mrs. Trivedi', '08:00:00', '08:50:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Thursday', 2, 'General Science', 'Dr. Sen', '08:50:00', '09:40:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Thursday', 3, 'Social Studies', 'Ms. Kulkarni', '09:55:00', '10:45:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Thursday', 4, 'Mathematics', 'Mr. Solanki', '10:45:00', '11:35:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Thursday', 5, 'English Grammar', 'Mrs. Nair', '11:35:00', '12:25:00', 'Room-104'),

('CLASS_4', NULL, 'CBSE', 'Friday', 1, 'English Grammar', 'Mrs. Nair', '08:00:00', '08:50:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Friday', 2, 'Social Studies', 'Ms. Kulkarni', '08:50:00', '09:40:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Friday', 3, 'Mathematics', 'Mr. Solanki', '09:55:00', '10:45:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Friday', 4, 'Library', 'Mrs. Nair', '10:45:00', '11:35:00', 'Library'),
('CLASS_4', NULL, 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:35:00', '12:25:00', 'Playground'),

('CLASS_4', NULL, 'CBSE', 'Saturday', 1, 'Creative Arts', 'Mr. Mehta', '08:00:00', '08:50:00', 'Art Hall'),
('CLASS_4', NULL, 'CBSE', 'Saturday', 2, 'Mathematics Quiz', 'Mr. Solanki', '08:50:00', '09:40:00', 'Room-104'),
('CLASS_4', NULL, 'CBSE', 'Saturday', 3, 'Sports & Games', 'Mr. Ramesh', '09:55:00', '10:45:00', 'Playground'),

-- CLASS V
('CLASS_5', NULL, 'CBSE', 'Monday', 1, 'Advanced Mathematics', 'Mr. Solanki', '08:00:00', '08:50:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Monday', 2, 'Science', 'Dr. Sen', '08:50:00', '09:40:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Monday', 3, 'Social Science', 'Ms. Kulkarni', '09:55:00', '10:45:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Monday', 4, 'Hindi Grammar', 'Mrs. Trivedi', '10:45:00', '11:35:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Monday', 5, 'English Literature', 'Mrs. Nair', '11:35:00', '12:25:00', 'Room-105'),

('CLASS_5', NULL, 'CBSE', 'Tuesday', 1, 'Social Science', 'Ms. Kulkarni', '08:00:00', '08:50:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Tuesday', 2, 'Hindi Grammar', 'Mrs. Trivedi', '08:50:00', '09:40:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Tuesday', 3, 'Advanced Mathematics', 'Mr. Solanki', '09:55:00', '10:45:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Tuesday', 4, 'Science', 'Dr. Sen', '10:45:00', '11:35:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Tuesday', 5, 'Computer Studies', 'Mr. Verma', '11:35:00', '12:25:00', 'Computer Lab 1'),

('CLASS_5', NULL, 'CBSE', 'Wednesday', 1, 'English Literature', 'Mrs. Nair', '08:00:00', '08:50:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Wednesday', 2, 'Advanced Mathematics', 'Mr. Solanki', '08:50:00', '09:40:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Wednesday', 3, 'Science', 'Dr. Sen', '09:55:00', '10:45:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Wednesday', 4, 'Social Science', 'Ms. Kulkarni', '10:45:00', '11:35:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Wednesday', 5, 'Art & Craft', 'Mr. Mehta', '11:35:00', '12:25:00', 'Art Hall'),

('CLASS_5', NULL, 'CBSE', 'Thursday', 1, 'Science Lab Activity', 'Dr. Sen', '08:00:00', '08:50:00', 'Science Lab A'),
('CLASS_5', NULL, 'CBSE', 'Thursday', 2, 'Computer Studies', 'Mr. Verma', '08:50:00', '09:40:00', 'Computer Lab 1'),
('CLASS_5', NULL, 'CBSE', 'Thursday', 3, 'Advanced Mathematics', 'Mr. Solanki', '09:55:00', '10:45:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Thursday', 4, 'Hindi Grammar', 'Mrs. Trivedi', '10:45:00', '11:35:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Thursday', 5, 'English Literature', 'Mrs. Nair', '11:35:00', '12:25:00', 'Room-105'),

('CLASS_5', NULL, 'CBSE', 'Friday', 1, 'Social Science', 'Ms. Kulkarni', '08:00:00', '08:50:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Friday', 2, 'English Core', 'Mrs. Nair', '08:50:00', '09:40:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Friday', 3, 'Science', 'Dr. Sen', '09:55:00', '10:45:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Friday', 4, 'Library', 'Mrs. Nair', '10:45:00', '11:35:00', 'Library'),
('CLASS_5', NULL, 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:35:00', '12:25:00', 'Playground'),

('CLASS_5', NULL, 'CBSE', 'Saturday', 1, 'Sports & Club Activities', 'Mr. Ramesh', '08:00:00', '08:50:00', 'Playground'),
('CLASS_5', NULL, 'CBSE', 'Saturday', 2, 'Mathematics Practice', 'Mr. Solanki', '08:50:00', '09:40:00', 'Room-105'),
('CLASS_5', NULL, 'CBSE', 'Saturday', 3, 'Science Workshop', 'Dr. Sen', '09:55:00', '10:45:00', 'Science Lab A'),

-- CLASS VI
('CLASS_6', NULL, 'CBSE', 'Monday', 1, 'Science (Physics/Chem)', 'Dr. Iyer', '08:00:00', '08:50:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Monday', 2, 'Mathematics', 'Mr. Dave', '08:50:00', '09:40:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Monday', 3, 'Social Science (History)', 'Mrs. Rao', '09:55:00', '10:45:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Monday', 4, 'English Core', 'Ms. Menon', '10:45:00', '11:35:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Monday', 5, 'Hindi Course A', 'Mrs. Trivedi', '11:35:00', '12:25:00', 'Room-201'),

('CLASS_6', NULL, 'CBSE', 'Tuesday', 1, 'Social Science (History)', 'Mrs. Rao', '08:00:00', '08:50:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Tuesday', 2, 'English Core', 'Ms. Menon', '08:50:00', '09:40:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Tuesday', 3, 'Mathematics', 'Mr. Dave', '09:55:00', '10:45:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Tuesday', 4, 'Science (Biology)', 'Dr. Iyer', '10:45:00', '11:35:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Tuesday', 5, 'Computer Science', 'Mr. Patel', '11:35:00', '12:25:00', 'Computer Lab 2'),

('CLASS_6', NULL, 'CBSE', 'Wednesday', 1, 'Mathematics', 'Mr. Dave', '08:00:00', '08:50:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Wednesday', 2, 'Science (Biology)', 'Dr. Iyer', '08:50:00', '09:40:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Wednesday', 3, 'Hindi Course A', 'Mrs. Trivedi', '09:55:00', '10:45:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Wednesday', 4, 'Social Science (Geography)', 'Mrs. Rao', '10:45:00', '11:35:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Wednesday', 5, 'English Core', 'Ms. Menon', '11:35:00', '12:25:00', 'Room-201'),

('CLASS_6', NULL, 'CBSE', 'Thursday', 1, 'Computer Science', 'Mr. Patel', '08:00:00', '08:50:00', 'Computer Lab 2'),
('CLASS_6', NULL, 'CBSE', 'Thursday', 2, 'Social Science (Civics)', 'Mrs. Rao', '08:50:00', '09:40:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Thursday', 3, 'Mathematics', 'Mr. Dave', '09:55:00', '10:45:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Thursday', 4, 'Science Lab', 'Dr. Iyer', '10:45:00', '11:35:00', 'Science Lab B'),
('CLASS_6', NULL, 'CBSE', 'Thursday', 5, 'Hindi Course A', 'Mrs. Trivedi', '11:35:00', '12:25:00', 'Room-201'),

('CLASS_6', NULL, 'CBSE', 'Friday', 1, 'Hindi Course A', 'Mrs. Trivedi', '08:00:00', '08:50:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Friday', 2, 'Mathematics', 'Mr. Dave', '08:50:00', '09:40:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Friday', 3, 'Science (Physics/Chem)', 'Dr. Iyer', '09:55:00', '10:45:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Friday', 4, 'Library', 'Ms. Menon', '10:45:00', '11:35:00', 'Library'),
('CLASS_6', NULL, 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:35:00', '12:25:00', 'Playground'),

('CLASS_6', NULL, 'CBSE', 'Saturday', 1, 'Library & Value Education', 'Ms. Menon', '08:00:00', '08:50:00', 'Library'),
('CLASS_6', NULL, 'CBSE', 'Saturday', 2, 'Mathematics Practice', 'Mr. Dave', '08:50:00', '09:40:00', 'Room-201'),
('CLASS_6', NULL, 'CBSE', 'Saturday', 3, 'Sports & Yoga', 'Mr. Ramesh', '09:55:00', '10:45:00', 'Playground'),

-- CLASS VII
('CLASS_7', NULL, 'CBSE', 'Monday', 1, 'Mathematics', 'Mr. Dave', '08:00:00', '08:50:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Monday', 2, 'Science (Biology)', 'Dr. Iyer', '08:50:00', '09:40:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Monday', 3, 'Social Science (Geography)', 'Mrs. Rao', '09:55:00', '10:45:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Monday', 4, 'Sanskrit / Third Lang.', 'Mr. Acharya', '10:45:00', '11:35:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Monday', 5, 'English Literature', 'Ms. Menon', '11:35:00', '12:25:00', 'Room-202'),

('CLASS_7', NULL, 'CBSE', 'Tuesday', 1, 'Social Science (Geography)', 'Mrs. Rao', '08:00:00', '08:50:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Tuesday', 2, 'Sanskrit / Third Lang.', 'Mr. Acharya', '08:50:00', '09:40:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Tuesday', 3, 'Mathematics', 'Mr. Dave', '09:55:00', '10:45:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Tuesday', 4, 'Science (Physics)', 'Dr. Iyer', '10:45:00', '11:35:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Tuesday', 5, 'Computer Science', 'Mr. Patel', '11:35:00', '12:25:00', 'Computer Lab 2'),

('CLASS_7', NULL, 'CBSE', 'Wednesday', 1, 'Science (Physics)', 'Dr. Iyer', '08:00:00', '08:50:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Wednesday', 2, 'Mathematics', 'Mr. Dave', '08:50:00', '09:40:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Wednesday', 3, 'English Literature', 'Ms. Menon', '09:55:00', '10:45:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Wednesday', 4, 'Social Science (History)', 'Mrs. Rao', '10:45:00', '11:35:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Wednesday', 5, 'Hindi Course A', 'Mrs. Trivedi', '11:35:00', '12:25:00', 'Room-202'),

('CLASS_7', NULL, 'CBSE', 'Thursday', 1, 'English Literature', 'Ms. Menon', '08:00:00', '08:50:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Thursday', 2, 'Social Science (History)', 'Mrs. Rao', '08:50:00', '09:40:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Thursday', 3, 'Mathematics', 'Mr. Dave', '09:55:00', '10:45:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Thursday', 4, 'Science Lab', 'Dr. Iyer', '10:45:00', '11:35:00', 'Science Lab B'),
('CLASS_7', NULL, 'CBSE', 'Thursday', 5, 'Sanskrit / Third Lang.', 'Mr. Acharya', '11:35:00', '12:25:00', 'Room-202'),

('CLASS_7', NULL, 'CBSE', 'Friday', 1, 'Computer Science', 'Mr. Patel', '08:00:00', '08:50:00', 'Computer Lab 2'),
('CLASS_7', NULL, 'CBSE', 'Friday', 2, 'Mathematics', 'Mr. Dave', '08:50:00', '09:40:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Friday', 3, 'Science (Biology)', 'Dr. Iyer', '09:55:00', '10:45:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Friday', 4, 'Library', 'Ms. Menon', '10:45:00', '11:35:00', 'Library'),
('CLASS_7', NULL, 'CBSE', 'Friday', 5, 'Sports & Physical Training', 'Mr. Ramesh', '11:35:00', '12:25:00', 'Playground'),

('CLASS_7', NULL, 'CBSE', 'Saturday', 1, 'Sports & Physical Training', 'Mr. Ramesh', '08:00:00', '08:50:00', 'Playground'),
('CLASS_7', NULL, 'CBSE', 'Saturday', 2, 'Mathematics Tutorial', 'Mr. Dave', '08:50:00', '09:40:00', 'Room-202'),
('CLASS_7', NULL, 'CBSE', 'Saturday', 3, 'General Science Quiz', 'Dr. Iyer', '09:55:00', '10:45:00', 'Room-202'),

-- CLASS VIII
('CLASS_8', NULL, 'CBSE', 'Monday', 1, 'Science (Chemistry)', 'Dr. Iyer', '08:00:00', '08:50:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Monday', 2, 'Mathematics', 'Mr. Dave', '08:50:00', '09:40:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Monday', 3, 'English Literature', 'Ms. Menon', '09:55:00', '10:45:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Monday', 4, 'Social Science (Civics)', 'Mrs. Rao', '10:45:00', '11:35:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Monday', 5, 'Hindi Course A', 'Mrs. Trivedi', '11:35:00', '12:25:00', 'Room-203'),

('CLASS_8', NULL, 'CBSE', 'Tuesday', 1, 'English Literature', 'Ms. Menon', '08:00:00', '08:50:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Tuesday', 2, 'Social Science (Civics)', 'Mrs. Rao', '08:50:00', '09:40:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Tuesday', 3, 'Mathematics', 'Mr. Dave', '09:55:00', '10:45:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Tuesday', 4, 'Science (Physics)', 'Dr. Iyer', '10:45:00', '11:35:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Tuesday', 5, 'Computer Applications', 'Mr. Patel', '11:35:00', '12:25:00', 'Computer Lab 2'),

('CLASS_8', NULL, 'CBSE', 'Wednesday', 1, 'Mathematics', 'Mr. Dave', '08:00:00', '08:50:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Wednesday', 2, 'Science (Physics)', 'Dr. Iyer', '08:50:00', '09:40:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Wednesday', 3, 'Hindi Course A', 'Mrs. Trivedi', '09:55:00', '10:45:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Wednesday', 4, 'Social Science (Geography)', 'Mrs. Rao', '10:45:00', '11:35:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Wednesday', 5, 'English Literature', 'Ms. Menon', '11:35:00', '12:25:00', 'Room-203'),

('CLASS_8', NULL, 'CBSE', 'Thursday', 1, 'Hindi Course A', 'Mrs. Trivedi', '08:00:00', '08:50:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Thursday', 2, 'Social Science (Geography)', 'Mrs. Rao', '08:50:00', '09:40:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Thursday', 3, 'Mathematics', 'Mr. Dave', '09:55:00', '10:45:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Thursday', 4, 'Science Lab', 'Dr. Iyer', '10:45:00', '11:35:00', 'Science Lab B'),
('CLASS_8', NULL, 'CBSE', 'Thursday', 5, 'English Grammar', 'Ms. Menon', '11:35:00', '12:25:00', 'Room-203'),

('CLASS_8', NULL, 'CBSE', 'Friday', 1, 'Computer Applications', 'Mr. Patel', '08:00:00', '08:50:00', 'Computer Lab 2'),
('CLASS_8', NULL, 'CBSE', 'Friday', 2, 'Mathematics', 'Mr. Dave', '08:50:00', '09:40:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Friday', 3, 'Science (Chemistry)', 'Dr. Iyer', '09:55:00', '10:45:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Friday', 4, 'Library', 'Ms. Menon', '10:45:00', '11:35:00', 'Library'),
('CLASS_8', NULL, 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:35:00', '12:25:00', 'Playground'),

('CLASS_8', NULL, 'CBSE', 'Saturday', 1, 'Art & Craft / Club', 'Mr. Mehta', '08:00:00', '08:50:00', 'Art Hall'),
('CLASS_8', NULL, 'CBSE', 'Saturday', 2, 'Mathematics Practice', 'Mr. Dave', '08:50:00', '09:40:00', 'Room-203'),
('CLASS_8', NULL, 'CBSE', 'Saturday', 3, 'Sports & Games', 'Mr. Ramesh', '09:55:00', '10:45:00', 'Playground'),

-- CLASS IX
('CLASS_9', NULL, 'CBSE', 'Monday', 1, 'Algebra & Geometry (Maths)', 'Mr. Verma', '08:00:00', '08:50:00', 'Room-301'),
('CLASS_9', NULL, 'CBSE', 'Monday', 2, 'Physical Science', 'Dr. Iyer', '08:50:00', '09:40:00', 'Science Lab B'),
('CLASS_9', NULL, 'CBSE', 'Monday', 3, 'Democratic Politics (SST)', 'Mrs. Nair', '09:55:00', '10:45:00', 'Room-301'),
('CLASS_9', NULL, 'CBSE', 'Monday', 4, 'Information Technology', 'Mr. Patel', '10:45:00', '11:35:00', 'Computer Lab 2'),
('CLASS_9', NULL, 'CBSE', 'Monday', 5, 'English Communicative', 'Mr. Sen', '11:35:00', '12:25:00', 'Room-301'),

('CLASS_9', NULL, 'CBSE', 'Tuesday', 1, 'Democratic Politics (SST)', 'Mrs. Nair', '08:00:00', '08:50:00', 'Room-301'),
('CLASS_9', NULL, 'CBSE', 'Tuesday', 2, 'Information Technology', 'Mr. Patel', '08:50:00', '09:40:00', 'Computer Lab 2'),
('CLASS_9', NULL, 'CBSE', 'Tuesday', 3, 'Algebra & Geometry (Maths)', 'Mr. Verma', '09:55:00', '10:45:00', 'Room-301'),
('CLASS_9', NULL, 'CBSE', 'Tuesday', 4, 'Biology & Chemistry', 'Dr. Iyer', '10:45:00', '11:35:00', 'Science Lab B'),
('CLASS_9', NULL, 'CBSE', 'Tuesday', 5, 'Hindi Course A', 'Mrs. Trivedi', '11:35:00', '12:25:00', 'Room-301'),

('CLASS_9', NULL, 'CBSE', 'Wednesday', 1, 'Algebra & Geometry (Maths)', 'Mr. Verma', '08:00:00', '08:50:00', 'Room-301'),
('CLASS_9', NULL, 'CBSE', 'Wednesday', 2, 'Biology & Chemistry', 'Dr. Iyer', '08:50:00', '09:40:00', 'Science Lab B'),
('CLASS_9', NULL, 'CBSE', 'Wednesday', 3, 'English Communicative', 'Mr. Sen', '09:55:00', '10:45:00', 'Room-301'),
('CLASS_9', NULL, 'CBSE', 'Wednesday', 4, 'Economics & History (SST)', 'Mrs. Nair', '10:45:00', '11:35:00', 'Room-301'),
('CLASS_9', NULL, 'CBSE', 'Wednesday', 5, 'Hindi Course A', 'Mrs. Trivedi', '11:35:00', '12:25:00', 'Room-301'),

('CLASS_9', NULL, 'CBSE', 'Thursday', 1, 'English Communicative', 'Mr. Sen', '08:00:00', '08:50:00', 'Room-301'),
('CLASS_9', NULL, 'CBSE', 'Thursday', 2, 'Economics & History (SST)', 'Mrs. Nair', '08:50:00', '09:40:00', 'Room-301'),
('CLASS_9', NULL, 'CBSE', 'Thursday', 3, 'Algebra & Geometry (Maths)', 'Mr. Verma', '09:55:00', '10:45:00', 'Room-301'),
('CLASS_9', NULL, 'CBSE', 'Thursday', 4, 'Physical Science', 'Dr. Iyer', '10:45:00', '11:35:00', 'Science Lab B'),
('CLASS_9', NULL, 'CBSE', 'Thursday', 5, 'Information Technology', 'Mr. Patel', '11:35:00', '12:25:00', 'Computer Lab 2'),

('CLASS_9', NULL, 'CBSE', 'Friday', 1, 'Algebra & Geometry (Maths)', 'Mr. Verma', '08:00:00', '08:50:00', 'Room-301'),
('CLASS_9', NULL, 'CBSE', 'Friday', 2, 'Hindi Course A', 'Mrs. Trivedi', '08:50:00', '09:40:00', 'Room-301'),
('CLASS_9', NULL, 'CBSE', 'Friday', 3, 'Physical Science', 'Dr. Iyer', '09:55:00', '10:45:00', 'Science Lab B'),
('CLASS_9', NULL, 'CBSE', 'Friday', 4, 'Library', 'Mr. Sen', '10:45:00', '11:35:00', 'Library'),
('CLASS_9', NULL, 'CBSE', 'Friday', 5, 'Sports & Yoga', 'Mr. Ramesh', '11:35:00', '12:25:00', 'Playground'),

('CLASS_9', NULL, 'CBSE', 'Saturday', 1, 'Sports & Yoga', 'Mr. Ramesh', '08:00:00', '08:50:00', 'Playground'),
('CLASS_9', NULL, 'CBSE', 'Saturday', 2, 'Mathematics Problem Solving', 'Mr. Verma', '08:50:00', '09:40:00', 'Room-301'),
('CLASS_9', NULL, 'CBSE', 'Saturday', 3, 'Science Practical Review', 'Dr. Iyer', '09:55:00', '10:45:00', 'Science Lab B'),

-- CLASS X
('CLASS_10', NULL, 'CBSE', 'Monday', 1, 'Mathematics', 'Mr. Verma', '08:00:00', '08:50:00', 'Room-302'),
('CLASS_10', NULL, 'CBSE', 'Monday', 2, 'Science (Physics/Chem)', 'Dr. Iyer', '08:50:00', '09:40:00', 'Science Lab A'),
('CLASS_10', NULL, 'CBSE', 'Monday', 3, 'Social Science', 'Mrs. Nair', '09:55:00', '10:45:00', 'Room-302'),
('CLASS_10', NULL, 'CBSE', 'Monday', 4, 'English Literature', 'Mr. Sen', '10:45:00', '11:35:00', 'Room-302'),
('CLASS_10', NULL, 'CBSE', 'Monday', 5, 'Information Technology', 'Mr. Patel', '11:35:00', '12:25:00', 'Computer Lab 2'),

('CLASS_10', NULL, 'CBSE', 'Tuesday', 1, 'Social Science', 'Mrs. Nair', '08:00:00', '08:50:00', 'Room-302'),
('CLASS_10', NULL, 'CBSE', 'Tuesday', 2, 'English Literature', 'Mr. Sen', '08:50:00', '09:40:00', 'Room-302'),
('CLASS_10', NULL, 'CBSE', 'Tuesday', 3, 'Mathematics', 'Mr. Verma', '09:55:00', '10:45:00', 'Room-302'),
('CLASS_10', NULL, 'CBSE', 'Tuesday', 4, 'Biology & Environmental Sci.', 'Dr. Iyer', '10:45:00', '11:35:00', 'Science Lab A'),
('CLASS_10', NULL, 'CBSE', 'Tuesday', 5, 'Hindi Course A', 'Mrs. Trivedi', '11:35:00', '12:25:00', 'Room-302'),

('CLASS_10', NULL, 'CBSE', 'Wednesday', 1, 'Advanced Mathematics', 'Mr. Verma', '08:00:00', '08:50:00', 'Room-302'),
('CLASS_10', NULL, 'CBSE', 'Wednesday', 2, 'Biology & Environmental Sci.', 'Dr. Iyer', '08:50:00', '09:40:00', 'Science Lab A'),
('CLASS_10', NULL, 'CBSE', 'Wednesday', 3, 'English Literature', 'Mr. Sen', '09:55:00', '10:45:00', 'Room-302'),
('CLASS_10', NULL, 'CBSE', 'Wednesday', 4, 'Social Science', 'Mrs. Nair', '10:45:00', '11:35:00', 'Room-302'),
('CLASS_10', NULL, 'CBSE', 'Wednesday', 5, 'Information Technology', 'Mr. Patel', '11:35:00', '12:25:00', 'Computer Lab 2'),

('CLASS_10', NULL, 'CBSE', 'Thursday', 1, 'Information Technology', 'Mr. Patel', '08:00:00', '08:50:00', 'Computer Lab 2'),
('CLASS_10', NULL, 'CBSE', 'Thursday', 2, 'Social Science', 'Mrs. Nair', '08:50:00', '09:40:00', 'Room-302'),
('CLASS_10', NULL, 'CBSE', 'Thursday', 3, 'Mathematics', 'Mr. Verma', '09:55:00', '10:45:00', 'Room-302'),
('CLASS_10', NULL, 'CBSE', 'Thursday', 4, 'Science (Physics/Chem)', 'Dr. Iyer', '10:45:00', '11:35:00', 'Science Lab A'),
('CLASS_10', NULL, 'CBSE', 'Thursday', 5, 'Hindi Course A', 'Mrs. Trivedi', '11:35:00', '12:25:00', 'Room-302'),

('CLASS_10', NULL, 'CBSE', 'Friday', 1, 'Mathematics', 'Mr. Verma', '08:00:00', '08:50:00', 'Room-302'),
('CLASS_10', NULL, 'CBSE', 'Friday', 2, 'Hindi Course A', 'Mrs. Trivedi', '08:50:00', '09:40:00', 'Room-302'),
('CLASS_10', NULL, 'CBSE', 'Friday', 3, 'Science (Physics/Chem)', 'Dr. Iyer', '09:55:00', '10:45:00', 'Science Lab A'),
('CLASS_10', NULL, 'CBSE', 'Friday', 4, 'Library', 'Mr. Sen', '10:45:00', '11:35:00', 'Library'),
('CLASS_10', NULL, 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:35:00', '12:25:00', 'Playground'),

('CLASS_10', NULL, 'CBSE', 'Saturday', 1, 'Board Exam Revision & Counseling', 'Mr. Sen', '08:00:00', '08:50:00', 'Room-302'),
('CLASS_10', NULL, 'CBSE', 'Saturday', 2, 'Maths Mock Assessment', 'Mr. Verma', '08:50:00', '09:40:00', 'Room-302'),
('CLASS_10', NULL, 'CBSE', 'Saturday', 3, 'Science Lab Diagnostics', 'Dr. Iyer', '09:55:00', '10:45:00', 'Science Lab A'),

-- ==========================================
-- 5. HIGHER SECONDARY SECTION (CLASS XI & XII Streams) - 5 Periods Mon-Fri, 3 Periods Saturday
-- ==========================================
-- Class XI - Science (PCM)
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Monday', 1, 'Advanced Physics', 'Dr. K. R. Rao', '08:00:00', '08:55:00', 'Physics Lab'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Monday', 2, 'Organic & Inorganic Chemistry', 'Mrs. Joshi', '08:55:00', '09:50:00', 'Chemistry Lab'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Monday', 3, 'Calculus & Algebra (Maths)', 'Mr. Shah', '10:05:00', '11:00:00', 'Room-401'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Monday', 4, 'English Core', 'Ms. Menon', '11:00:00', '11:55:00', 'Room-401'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Monday', 5, 'Computer Science / IP', 'Mr. Patel', '11:55:00', '12:50:00', 'Computer Lab 3'),

('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Tuesday', 1, 'Calculus & Algebra (Maths)', 'Mr. Shah', '08:00:00', '08:55:00', 'Room-401'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Tuesday', 2, 'English Core', 'Ms. Menon', '08:55:00', '09:50:00', 'Room-401'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Tuesday', 3, 'Advanced Physics', 'Dr. K. R. Rao', '10:05:00', '11:00:00', 'Physics Lab'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Tuesday', 4, 'Organic & Inorganic Chemistry', 'Mrs. Joshi', '11:00:00', '11:55:00', 'Chemistry Lab'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Tuesday', 5, 'General Studies', 'Mr. Sen', '11:55:00', '12:50:00', 'Room-401'),

('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Wednesday', 1, 'Advanced Physics Practicals', 'Dr. K. R. Rao', '08:00:00', '09:50:00', 'Physics Lab'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Wednesday', 2, 'Calculus & Algebra (Maths)', 'Mr. Shah', '10:05:00', '11:00:00', 'Room-401'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Wednesday', 3, 'English Core', 'Ms. Menon', '11:00:00', '11:55:00', 'Room-401'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Wednesday', 4, 'Organic & Inorganic Chemistry', 'Mrs. Joshi', '11:55:00', '12:50:00', 'Chemistry Lab'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Wednesday', 5, 'Library / Seminar', 'Ms. Menon', '12:50:00', '13:30:00', 'Library'),

('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Thursday', 1, 'Chemistry Practicals', 'Mrs. Joshi', '08:00:00', '09:50:00', 'Chemistry Lab'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Thursday', 2, 'Advanced Physics', 'Dr. K. R. Rao', '10:05:00', '11:00:00', 'Physics Lab'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Thursday', 3, 'Calculus & Algebra (Maths)', 'Mr. Shah', '11:00:00', '11:55:00', 'Room-401'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Thursday', 4, 'English Core', 'Ms. Menon', '11:55:00', '12:50:00', 'Room-401'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Thursday', 5, 'Computer Science / IP', 'Mr. Patel', '12:50:00', '13:30:00', 'Computer Lab 3'),

('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Friday', 1, 'Calculus & Algebra (Maths)', 'Mr. Shah', '08:00:00', '08:55:00', 'Room-401'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Friday', 2, 'English Core', 'Ms. Menon', '08:55:00', '09:50:00', 'Room-401'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Friday', 3, 'Advanced Physics', 'Dr. K. R. Rao', '10:05:00', '11:00:00', 'Physics Lab'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Friday', 4, 'Organic & Inorganic Chemistry', 'Mrs. Joshi', '11:00:00', '11:55:00', 'Chemistry Lab'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:55:00', '12:50:00', 'Playground'),

('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Saturday', 1, 'Problem Solving & JEE Prep', 'Mr. Shah', '08:00:00', '08:55:00', 'Room-401'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Saturday', 2, 'Physics Doubt Resolution', 'Dr. K. R. Rao', '08:55:00', '09:50:00', 'Physics Lab'),
('CLASS_11', 'SCIENCE_PCM', 'CBSE', 'Saturday', 3, 'Chemistry Quiz & Review', 'Mrs. Joshi', '10:05:00', '11:00:00', 'Chemistry Lab'),

-- Class XI - Science (PCB)
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Monday', 1, 'Advanced Physics', 'Dr. K. R. Rao', '08:00:00', '08:55:00', 'Physics Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Monday', 2, 'Organic & Inorganic Chemistry', 'Mrs. Joshi', '08:55:00', '09:50:00', 'Chemistry Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Monday', 3, 'Botany & Zoology (Biology)', 'Dr. Anita Roy', '10:05:00', '11:00:00', 'Biology Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Monday', 4, 'English Core', 'Ms. Menon', '11:00:00', '11:55:00', 'Room-402'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Monday', 5, 'Physical Education', 'Mr. Ramesh', '11:55:00', '12:50:00', 'Playground'),

('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Tuesday', 1, 'Botany & Zoology (Biology)', 'Dr. Anita Roy', '08:00:00', '08:55:00', 'Biology Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Tuesday', 2, 'English Core', 'Ms. Menon', '08:55:00', '09:50:00', 'Room-402'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Tuesday', 3, 'Advanced Physics', 'Dr. K. R. Rao', '10:05:00', '11:00:00', 'Physics Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Tuesday', 4, 'Organic & Inorganic Chemistry', 'Mrs. Joshi', '11:00:00', '11:55:00', 'Chemistry Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Tuesday', 5, 'General Studies', 'Mr. Sen', '11:55:00', '12:50:00', 'Room-402'),

('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Wednesday', 1, 'Biology Practicals', 'Dr. Anita Roy', '08:00:00', '09:50:00', 'Biology Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Wednesday', 2, 'Botany & Zoology (Biology)', 'Dr. Anita Roy', '10:05:00', '11:00:00', 'Biology Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Wednesday', 3, 'English Core', 'Ms. Menon', '11:00:00', '11:55:00', 'Room-402'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Wednesday', 4, 'Organic & Inorganic Chemistry', 'Mrs. Joshi', '11:55:00', '12:50:00', 'Chemistry Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Wednesday', 5, 'Library', 'Ms. Menon', '12:50:00', '13:30:00', 'Library'),

('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Thursday', 1, 'Physics Practicals', 'Dr. K. R. Rao', '08:00:00', '09:50:00', 'Physics Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Thursday', 2, 'Advanced Physics', 'Dr. K. R. Rao', '10:05:00', '11:00:00', 'Physics Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Thursday', 3, 'Botany & Zoology (Biology)', 'Dr. Anita Roy', '11:00:00', '11:55:00', 'Biology Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Thursday', 4, 'English Core', 'Ms. Menon', '11:55:00', '12:50:00', 'Room-402'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Thursday', 5, 'Organic & Inorganic Chemistry', 'Mrs. Joshi', '12:50:00', '13:30:00', 'Chemistry Lab'),

('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Friday', 1, 'Botany & Zoology (Biology)', 'Dr. Anita Roy', '08:00:00', '08:55:00', 'Biology Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Friday', 2, 'English Core', 'Ms. Menon', '08:55:00', '09:50:00', 'Room-402'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Friday', 3, 'Advanced Physics', 'Dr. K. R. Rao', '10:05:00', '11:00:00', 'Physics Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Friday', 4, 'Organic & Inorganic Chemistry', 'Mrs. Joshi', '11:00:00', '11:55:00', 'Chemistry Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:55:00', '12:50:00', 'Playground'),

('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Saturday', 1, 'NEET Prep & Seminar', 'Dr. Anita Roy', '08:00:00', '08:55:00', 'Biology Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Saturday', 2, 'Physics Concept Check', 'Dr. K. R. Rao', '08:55:00', '09:50:00', 'Physics Lab'),
('CLASS_11', 'SCIENCE_PCB', 'CBSE', 'Saturday', 3, 'Chemistry Test Series', 'Mrs. Joshi', '10:05:00', '11:00:00', 'Chemistry Lab'),

-- Class XI - Commerce (with Applied Mathematics)
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Monday', 1, 'Financial Accountancy', 'Mr. Parikh', '08:00:00', '08:55:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Monday', 2, 'Business Studies', 'Dr. Thakkar', '08:55:00', '09:50:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Monday', 3, 'Applied Mathematics', 'Mr. Shah', '10:05:00', '11:00:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Monday', 4, 'Microeconomics', 'Mrs. Desai', '11:00:00', '11:55:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Monday', 5, 'English Core', 'Ms. Menon', '11:55:00', '12:50:00', 'Room-403'),

('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Tuesday', 1, 'Applied Mathematics', 'Mr. Shah', '08:00:00', '08:55:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Tuesday', 2, 'Microeconomics', 'Mrs. Desai', '08:55:00', '09:50:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Tuesday', 3, 'Financial Accountancy', 'Mr. Parikh', '10:05:00', '11:00:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Tuesday', 4, 'Business Studies', 'Dr. Thakkar', '11:00:00', '11:55:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Tuesday', 5, 'English Core', 'Ms. Menon', '11:55:00', '12:50:00', 'Room-403'),

('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Wednesday', 1, 'Financial Accountancy', 'Mr. Parikh', '08:00:00', '08:55:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Wednesday', 2, 'Business Studies', 'Dr. Thakkar', '08:55:00', '09:50:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Wednesday', 3, 'Applied Mathematics', 'Mr. Shah', '10:05:00', '11:00:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Wednesday', 4, 'Microeconomics', 'Mrs. Desai', '11:00:00', '11:55:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Wednesday', 5, 'Library', 'Ms. Menon', '11:55:00', '12:50:00', 'Library'),

('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Thursday', 1, 'Applied Mathematics', 'Mr. Shah', '08:00:00', '08:55:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Thursday', 2, 'Microeconomics', 'Mrs. Desai', '08:55:00', '09:50:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Thursday', 3, 'Financial Accountancy', 'Mr. Parikh', '10:05:00', '11:00:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Thursday', 4, 'Business Studies', 'Dr. Thakkar', '11:00:00', '11:55:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Thursday', 5, 'English Core', 'Ms. Menon', '11:55:00', '12:50:00', 'Room-403'),

('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Friday', 1, 'Financial Accountancy', 'Mr. Parikh', '08:00:00', '08:55:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Friday', 2, 'Applied Mathematics', 'Mr. Shah', '08:55:00', '09:50:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Friday', 3, 'Business Studies', 'Dr. Thakkar', '10:05:00', '11:00:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Friday', 4, 'Microeconomics', 'Mrs. Desai', '11:00:00', '11:55:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:55:00', '12:50:00', 'Playground'),

('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Saturday', 1, 'Business Case Studies', 'Dr. Thakkar', '08:00:00', '08:55:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Saturday', 2, 'Accountancy Problem Solving', 'Mr. Parikh', '08:55:00', '09:50:00', 'Room-403'),
('CLASS_11', 'COMMERCE_MATHS', 'CBSE', 'Saturday', 3, 'Applied Math Practice', 'Mr. Shah', '10:05:00', '11:00:00', 'Room-403'),

-- Class XI - Commerce (with Informatics Practices)
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Monday', 1, 'Financial Accountancy', 'Mr. Parikh', '08:00:00', '08:55:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Monday', 2, 'Business Studies', 'Dr. Thakkar', '08:55:00', '09:50:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Monday', 3, 'Informatics Practices (IP)', 'Mr. Patel', '10:05:00', '11:00:00', 'Computer Lab 3'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Monday', 4, 'Microeconomics', 'Mrs. Desai', '11:00:00', '11:55:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Monday', 5, 'English Core', 'Ms. Menon', '11:55:00', '12:50:00', 'Room-404'),

('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Tuesday', 1, 'Informatics Practices (IP)', 'Mr. Patel', '08:00:00', '08:55:00', 'Computer Lab 3'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Tuesday', 2, 'Microeconomics', 'Mrs. Desai', '08:55:00', '09:50:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Tuesday', 3, 'Financial Accountancy', 'Mr. Parikh', '10:05:00', '11:00:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Tuesday', 4, 'Business Studies', 'Dr. Thakkar', '11:00:00', '11:55:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Tuesday', 5, 'English Core', 'Ms. Menon', '11:55:00', '12:50:00', 'Room-404'),

('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Wednesday', 1, 'Financial Accountancy', 'Mr. Parikh', '08:00:00', '08:55:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Wednesday', 2, 'Business Studies', 'Dr. Thakkar', '08:55:00', '09:50:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Wednesday', 3, 'Informatics Practices (IP)', 'Mr. Patel', '10:05:00', '11:00:00', 'Computer Lab 3'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Wednesday', 4, 'Microeconomics', 'Mrs. Desai', '11:00:00', '11:55:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Wednesday', 5, 'Library', 'Ms. Menon', '11:55:00', '12:50:00', 'Library'),

('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Thursday', 1, 'Informatics Practices (IP)', 'Mr. Patel', '08:00:00', '08:55:00', 'Computer Lab 3'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Thursday', 2, 'Microeconomics', 'Mrs. Desai', '08:55:00', '09:50:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Thursday', 3, 'Financial Accountancy', 'Mr. Parikh', '10:05:00', '11:00:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Thursday', 4, 'Business Studies', 'Dr. Thakkar', '11:00:00', '11:55:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Thursday', 5, 'English Core', 'Ms. Menon', '11:55:00', '12:50:00', 'Room-404'),

('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Friday', 1, 'Financial Accountancy', 'Mr. Parikh', '08:00:00', '08:55:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Friday', 2, 'IP Practical Lab', 'Mr. Patel', '08:55:00', '09:50:00', 'Computer Lab 3'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Friday', 3, 'Business Studies', 'Dr. Thakkar', '10:05:00', '11:00:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Friday', 4, 'Microeconomics', 'Mrs. Desai', '11:00:00', '11:55:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:55:00', '12:50:00', 'Playground'),

('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Saturday', 1, 'Commerce Project Work', 'Dr. Thakkar', '08:00:00', '08:55:00', 'Room-404'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Saturday', 2, 'Python Database Coding Lab', 'Mr. Patel', '08:55:00', '09:50:00', 'Computer Lab 3'),
('CLASS_11', 'COMMERCE_IP', 'CBSE', 'Saturday', 3, 'Accountancy Review', 'Mr. Parikh', '10:05:00', '11:00:00', 'Room-404'),

-- Class XII - Science (PCM)
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Monday', 1, 'Quantum & Nuclear Physics', 'Dr. K. R. Rao', '08:00:00', '08:55:00', 'Physics Lab'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Monday', 2, 'Physical & Coordination Chemistry', 'Mrs. Joshi', '08:55:00', '09:50:00', 'Chemistry Lab'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Monday', 3, 'Vectors & 3D Geometry (Maths)', 'Mr. Shah', '10:05:00', '11:00:00', 'Room-501'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Monday', 4, 'English Elective', 'Mr. Sen', '11:00:00', '11:55:00', 'Room-501'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Monday', 5, 'Computer Science / IP', 'Mr. Patel', '11:55:00', '12:50:00', 'Computer Lab 3'),

('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Tuesday', 1, 'Vectors & 3D Geometry (Maths)', 'Mr. Shah', '08:00:00', '08:55:00', 'Room-501'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Tuesday', 2, 'English Elective', 'Mr. Sen', '08:55:00', '09:50:00', 'Room-501'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Tuesday', 3, 'Quantum & Nuclear Physics', 'Dr. K. R. Rao', '10:05:00', '11:00:00', 'Physics Lab'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Tuesday', 4, 'Physical & Coordination Chemistry', 'Mrs. Joshi', '11:00:00', '11:55:00', 'Chemistry Lab'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Tuesday', 5, 'General Studies', 'Mr. Sen', '11:55:00', '12:50:00', 'Room-501'),

('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Wednesday', 1, 'Advanced Physics Lab', 'Dr. K. R. Rao', '08:00:00', '09:50:00', 'Physics Lab'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Wednesday', 2, 'Vectors & 3D Geometry (Maths)', 'Mr. Shah', '10:05:00', '11:00:00', 'Room-501'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Wednesday', 3, 'English Elective', 'Mr. Sen', '11:00:00', '11:55:00', 'Room-501'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Wednesday', 4, 'Physical & Coordination Chemistry', 'Mrs. Joshi', '11:55:00', '12:50:00', 'Chemistry Lab'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Wednesday', 5, 'Library / Seminar', 'Mr. Sen', '12:50:00', '13:30:00', 'Library'),

('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Thursday', 1, 'Advanced Chemistry Lab', 'Mrs. Joshi', '08:00:00', '09:50:00', 'Chemistry Lab'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Thursday', 2, 'Quantum & Nuclear Physics', 'Dr. K. R. Rao', '10:05:00', '11:00:00', 'Physics Lab'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Thursday', 3, 'Vectors & 3D Geometry (Maths)', 'Mr. Shah', '11:00:00', '11:55:00', 'Room-501'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Thursday', 4, 'English Elective', 'Mr. Sen', '11:55:00', '12:50:00', 'Room-501'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Thursday', 5, 'Computer Science / IP', 'Mr. Patel', '12:50:00', '13:30:00', 'Computer Lab 3'),

('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Friday', 1, 'Vectors & 3D Geometry (Maths)', 'Mr. Shah', '08:00:00', '08:55:00', 'Room-501'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Friday', 2, 'English Elective', 'Mr. Sen', '08:55:00', '09:50:00', 'Room-501'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Friday', 3, 'Quantum & Nuclear Physics', 'Dr. K. R. Rao', '10:05:00', '11:00:00', 'Physics Lab'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Friday', 4, 'Physical & Coordination Chemistry', 'Mrs. Joshi', '11:00:00', '11:55:00', 'Chemistry Lab'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:55:00', '12:50:00', 'Playground'),

('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Saturday', 1, 'Board Exam & Entrance Mock Tests', 'Mr. Shah', '08:00:00', '08:55:00', 'Room-501'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Saturday', 2, 'Advanced Physics Problem Solving', 'Dr. K. R. Rao', '08:55:00', '09:50:00', 'Physics Lab'),
('CLASS_12', 'SCIENCE_PCM', 'CBSE', 'Saturday', 3, 'Chemistry Coordination Compounds', 'Mrs. Joshi', '10:05:00', '11:00:00', 'Chemistry Lab'),

-- Class XII - Science (PCB)
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Monday', 1, 'Quantum & Nuclear Physics', 'Dr. K. R. Rao', '08:00:00', '08:55:00', 'Physics Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Monday', 2, 'Physical & Coordination Chemistry', 'Mrs. Joshi', '08:55:00', '09:50:00', 'Chemistry Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Monday', 3, 'Genetics & Biotechnology (Biology)', 'Dr. Anita Roy', '10:05:00', '11:00:00', 'Biology Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Monday', 4, 'English Elective', 'Mr. Sen', '11:00:00', '11:55:00', 'Room-502'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Monday', 5, 'Physical Education', 'Mr. Ramesh', '11:55:00', '12:50:00', 'Playground'),

('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Tuesday', 1, 'Genetics & Biotechnology (Biology)', 'Dr. Anita Roy', '08:00:00', '08:55:00', 'Biology Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Tuesday', 2, 'English Elective', 'Mr. Sen', '08:55:00', '09:50:00', 'Room-502'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Tuesday', 3, 'Quantum & Nuclear Physics', 'Dr. K. R. Rao', '10:05:00', '11:00:00', 'Physics Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Tuesday', 4, 'Physical & Coordination Chemistry', 'Mrs. Joshi', '11:00:00', '11:55:00', 'Chemistry Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Tuesday', 5, 'General Studies', 'Mr. Sen', '11:55:00', '12:50:00', 'Room-502'),

('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Wednesday', 1, 'Advanced Biology Lab', 'Dr. Anita Roy', '08:00:00', '09:50:00', 'Biology Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Wednesday', 2, 'Genetics & Biotechnology (Biology)', 'Dr. Anita Roy', '10:05:00', '11:00:00', 'Biology Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Wednesday', 3, 'English Elective', 'Mr. Sen', '11:00:00', '11:55:00', 'Room-502'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Wednesday', 4, 'Physical & Coordination Chemistry', 'Mrs. Joshi', '11:55:00', '12:50:00', 'Chemistry Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Wednesday', 5, 'Library', 'Mr. Sen', '12:50:00', '13:30:00', 'Library'),

('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Thursday', 1, 'Advanced Physics Lab', 'Dr. K. R. Rao', '08:00:00', '09:50:00', 'Physics Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Thursday', 2, 'Quantum & Nuclear Physics', 'Dr. K. R. Rao', '10:05:00', '11:00:00', 'Physics Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Thursday', 3, 'Genetics & Biotechnology (Biology)', 'Dr. Anita Roy', '11:00:00', '11:55:00', 'Biology Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Thursday', 4, 'English Elective', 'Mr. Sen', '11:55:00', '12:50:00', 'Room-502'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Thursday', 5, 'Physical & Coordination Chemistry', 'Mrs. Joshi', '12:50:00', '13:30:00', 'Chemistry Lab'),

('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Friday', 1, 'Genetics & Biotechnology (Biology)', 'Dr. Anita Roy', '08:00:00', '08:55:00', 'Biology Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Friday', 2, 'English Elective', 'Mr. Sen', '08:55:00', '09:50:00', 'Room-502'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Friday', 3, 'Quantum & Nuclear Physics', 'Dr. K. R. Rao', '10:05:00', '11:00:00', 'Physics Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Friday', 4, 'Physical & Coordination Chemistry', 'Mrs. Joshi', '11:00:00', '11:55:00', 'Chemistry Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:55:00', '12:50:00', 'Playground'),

('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Saturday', 1, 'Board Exam & NEET Mock Tests', 'Dr. Anita Roy', '08:00:00', '08:55:00', 'Biology Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Saturday', 2, 'Physics Nuclear Focus', 'Dr. K. R. Rao', '08:55:00', '09:50:00', 'Physics Lab'),
('CLASS_12', 'SCIENCE_PCB', 'CBSE', 'Saturday', 3, 'Chemistry Organic Revision', 'Mrs. Joshi', '10:05:00', '11:00:00', 'Chemistry Lab'),

-- Class XII - Commerce (with Applied Mathematics)
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Monday', 1, 'Corporate Accounting', 'Mr. Parikh', '08:00:00', '08:55:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Monday', 2, 'Principles of Management (BST)', 'Dr. Thakkar', '08:55:00', '09:50:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Monday', 3, 'Advanced Applied Mathematics', 'Mr. Shah', '10:05:00', '11:00:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Monday', 4, 'Macroeconomics', 'Mrs. Desai', '11:00:00', '11:55:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Monday', 5, 'English Core', 'Ms. Menon', '11:55:00', '12:50:00', 'Room-503'),

('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Tuesday', 1, 'Advanced Applied Mathematics', 'Mr. Shah', '08:00:00', '08:55:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Tuesday', 2, 'Macroeconomics', 'Mrs. Desai', '08:55:00', '09:50:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Tuesday', 3, 'Corporate Accounting', 'Mr. Parikh', '10:05:00', '11:00:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Tuesday', 4, 'Principles of Management (BST)', 'Dr. Thakkar', '11:00:00', '11:55:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Tuesday', 5, 'English Core', 'Ms. Menon', '11:55:00', '12:50:00', 'Room-503'),

('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Wednesday', 1, 'Corporate Accounting', 'Mr. Parikh', '08:00:00', '08:55:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Wednesday', 2, 'Principles of Management (BST)', 'Dr. Thakkar', '08:55:00', '09:50:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Wednesday', 3, 'Advanced Applied Mathematics', 'Mr. Shah', '10:05:00', '11:00:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Wednesday', 4, 'Macroeconomics', 'Mrs. Desai', '11:00:00', '11:55:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Wednesday', 5, 'Library', 'Ms. Menon', '11:55:00', '12:50:00', 'Library'),

('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Thursday', 1, 'Advanced Applied Mathematics', 'Mr. Shah', '08:00:00', '08:55:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Thursday', 2, 'Macroeconomics', 'Mrs. Desai', '08:55:00', '09:50:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Thursday', 3, 'Corporate Accounting', 'Mr. Parikh', '10:05:00', '11:00:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Thursday', 4, 'Principles of Management (BST)', 'Dr. Thakkar', '11:00:00', '11:55:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Thursday', 5, 'English Core', 'Ms. Menon', '11:55:00', '12:50:00', 'Room-503'),

('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Friday', 1, 'Corporate Accounting', 'Mr. Parikh', '08:00:00', '08:55:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Friday', 2, 'Macroeconomics', 'Mrs. Desai', '08:55:00', '09:50:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Friday', 3, 'Principles of Management (BST)', 'Dr. Thakkar', '10:05:00', '11:00:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Friday', 4, 'Advanced Applied Mathematics', 'Mr. Shah', '11:00:00', '11:55:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:55:00', '12:50:00', 'Playground'),

('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Saturday', 1, 'Accountancy Revision & Mock Tests', 'Mr. Parikh', '08:00:00', '08:55:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Saturday', 2, 'Business Studies Case Solving', 'Dr. Thakkar', '08:55:00', '09:50:00', 'Room-503'),
('CLASS_12', 'COMMERCE_MATHS', 'CBSE', 'Saturday', 3, 'Applied Math Assessment', 'Mr. Shah', '10:05:00', '11:00:00', 'Room-503'),

-- Class XII - Commerce (with Informatics Practices)
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Monday', 1, 'Corporate Accounting', 'Mr. Parikh', '08:00:00', '08:55:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Monday', 2, 'Principles of Management (BST)', 'Dr. Thakkar', '08:55:00', '09:50:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Monday', 3, 'Advanced IP & Python Database', 'Mr. Patel', '10:05:00', '11:00:00', 'Computer Lab 3'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Monday', 4, 'Macroeconomics', 'Mrs. Desai', '11:00:00', '11:55:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Monday', 5, 'English Core', 'Ms. Menon', '11:55:00', '12:50:00', 'Room-504'),

('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Tuesday', 1, 'Advanced IP & Python Database', 'Mr. Patel', '08:00:00', '08:55:00', 'Computer Lab 3'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Tuesday', 2, 'Macroeconomics', 'Mrs. Desai', '08:55:00', '09:50:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Tuesday', 3, 'Corporate Accounting', 'Mr. Parikh', '10:05:00', '11:00:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Tuesday', 4, 'Principles of Management (BST)', 'Dr. Thakkar', '11:00:00', '11:55:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Tuesday', 5, 'English Core', 'Ms. Menon', '11:55:00', '12:50:00', 'Room-504'),

('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Wednesday', 1, 'Corporate Accounting', 'Mr. Parikh', '08:00:00', '08:55:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Wednesday', 2, 'Principles of Management (BST)', 'Dr. Thakkar', '08:55:00', '09:50:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Wednesday', 3, 'Advanced IP & Python Database', 'Mr. Patel', '10:05:00', '11:00:00', 'Computer Lab 3'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Wednesday', 4, 'Macroeconomics', 'Mrs. Desai', '11:00:00', '11:55:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Wednesday', 5, 'Library', 'Ms. Menon', '11:55:00', '12:50:00', 'Library'),

('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Thursday', 1, 'Advanced IP & Python Database', 'Mr. Patel', '08:00:00', '08:55:00', 'Computer Lab 3'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Thursday', 2, 'Macroeconomics', 'Mrs. Desai', '08:55:00', '09:50:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Thursday', 3, 'Corporate Accounting', 'Mr. Parikh', '10:05:00', '11:00:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Thursday', 4, 'Principles of Management (BST)', 'Dr. Thakkar', '11:00:00', '11:55:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Thursday', 5, 'English Core', 'Ms. Menon', '11:55:00', '12:50:00', 'Room-504'),

('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Friday', 1, 'Corporate Accounting', 'Mr. Parikh', '08:00:00', '08:55:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Friday', 2, 'IP Practical Lab', 'Mr. Patel', '08:55:00', '09:50:00', 'Computer Lab 3'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Friday', 3, 'Principles of Management (BST)', 'Dr. Thakkar', '10:05:00', '11:00:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Friday', 4, 'Macroeconomics', 'Mrs. Desai', '11:00:00', '11:55:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Friday', 5, 'Sports & Games', 'Mr. Ramesh', '11:55:00', '12:50:00', 'Playground'),

('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Saturday', 1, 'Business & IT Project Consultations', 'Dr. Thakkar', '08:00:00', '08:55:00', 'Room-504'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Saturday', 2, 'Python SQL Database Lab', 'Mr. Patel', '08:55:00', '09:50:00', 'Computer Lab 3'),
('CLASS_12', 'COMMERCE_IP', 'CBSE', 'Saturday', 3, 'Corporate Accounting Review', 'Mr. Parikh', '10:05:00', '11:00:00', 'Room-504');






update time_table set curriculum_board='CBSE' where applying_grade='CLASS_11';