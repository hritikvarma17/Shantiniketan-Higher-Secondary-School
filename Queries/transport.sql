CREATE TABLE transport (
    transport_id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_company VARCHAR(100) NOT NULL,
    vehicle_model VARCHAR(100) NOT NULL,
    vehicle_image LONGBLOB,
    number_plate_no VARCHAR(50) NOT NULL,
    driver_name VARCHAR(100),
    driver_mobile_no VARCHAR(20),
    seating_capacity INT,
    ac_non_ac VARCHAR(20),
    insurance_expiry_date DATE,
    status VARCHAR(50)
);

INSERT INTO transport (vehicle_company, vehicle_model, vehicle_image, number_plate_no, driver_name, driver_mobile_no, seating_capacity, ac_non_ac, insurance_expiry_date, status) VALUES 
-- 8 Buses
('Ashok Leyland', 'Viking School Bus', NULL, 'GJ-01-AB-1001', 'Ramesh Patel', '9824012345', 50, 'AC', '2027-06-15', 'Active'),
('Tata', 'Starbus', NULL, 'GJ-01-AB-1002', 'Suresh Kumar', '9824012346', 45, 'Non-AC', '2027-08-20', 'Active'),
('Eicher', 'Skyline Pro', NULL, 'GJ-01-AB-1003', 'Mahesh Joshi', '9824012347', 40, 'AC', '2027-11-10', 'Active'),
('Volvo', '9400 Intercity Bus', NULL, 'GJ-01-AB-1004', 'Dinesh Shah', '9824012348', 55, 'AC', '2027-03-12', 'Active'),
('Ashok Leyland', 'Falcon', NULL, 'GJ-01-AB-1005', 'Rajesh Parmar', '9824012349', 50, 'Non-AC', '2027-05-25', 'Active'),
('Tata', 'Ultra School Bus', NULL, 'GJ-01-AB-1006', 'Ketan Dave', '9824012350', 35, 'AC', '2027-09-19', 'Active'),
('Force', 'Traveller School Bus', NULL, 'GJ-01-AB-1007', 'Jayesh Makwana', '9824012351', 26, 'AC', '2027-01-15', 'Active'),
('Mahindra', 'Tourister', NULL, 'GJ-01-AB-1008', 'Chirag Solanki', '9824012352', 32, 'Non-AC', '2027-07-04', 'Active'),

-- 1 School Car
('Maruti Suzuki', 'Ertiga (School Staff Car)', NULL, 'GJ-01-CD-2001', 'Hitesh Rathod', '9824023456', 7, 'AC', '2027-10-10', 'Active'),

-- 1 Transport Vehicle (Utility/Goods/Material Van)
('Mahindra', 'Supro Cargo Van', NULL, 'GJ-01-EF-3001', 'Pravin Thakor', '9824034567', 4, 'Non-AC', '2027-12-01', 'Active');