
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL UNIQUE,
    middle_name VARCHAR(100) NOT NULL UNIQUE,
    last_name VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    username VARCHAR(50) NOT NULL UNIQUE,  
    password VARCHAR(255) NOT NULL,
    role VARCHAR(70) NOT NULL, -- e.g., ADMIN, TEACHER, STUDENT
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);





INSERT INTO users (first_name,middle_name,last_name,email,username,password,role) VALUES (
    'Rajiv',
    'Ramesh',
    'Sharma',
    'rajiv.sharma@shantiniketan.edu', 
    'arundhati',
    'arundhati',
    'Principal & Academic Director'
);
