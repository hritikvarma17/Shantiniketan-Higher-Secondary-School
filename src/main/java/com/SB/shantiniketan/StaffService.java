package com.SB.shantiniketan;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface StaffService {
 
	List<Staff> getAllStaff();
    void saveStaff(Staff staff, MultipartFile file) throws Exception; // Updated to handle file
    Staff getStaffById(int id); 
    void updateStaff(Staff staff, MultipartFile file) throws Exception; 
    void deleteStaff(int id); 
    List<Staff> searchStaff(String keyword);
//    List<Staff> searchByName(String first_name); 
//    List<Student> searchByCourse(String course); 
//    List<Student> searchByCity(String city); 
//    Student searchByEmail(String email);

}