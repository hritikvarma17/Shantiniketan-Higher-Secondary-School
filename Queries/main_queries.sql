create database shantiniketan_higher_secondary_school;
use shantiniketan_higher_secondary_school;

show tables;

select * from users;
select * from students;
select * from time_table;
select * from staff;
select * from transport;
desc staff;
desc students;
desc users;


-- ALTER TABLE staff RENAME TO school_staff;

select count(staff_id) from staff;
select * from staff where email='arundhati.roy@shantiniketan.edu';
select count(distinct teacher_name) from time_table;


  