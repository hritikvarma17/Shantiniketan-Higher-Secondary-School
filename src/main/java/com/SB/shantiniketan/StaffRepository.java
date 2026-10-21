package com.SB.shantiniketan;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface StaffRepository extends JpaRepository<Staff, Integer> {

	@Query("SELECT s FROM Staff s WHERE LOWER(s.firstName) LIKE LOWER(CONCAT('%', :keyword, '%')) "
			+ "OR CAST(s.staffId AS string) LIKE LOWER(CONCAT('%', :keyword, '%')) "
			+ "OR LOWER(s.currentRole) LIKE LOWER(CONCAT('%', :keyword, '%'))")
	List<Staff> searchStaff(@Param("keyword") String keyword);

	List<Staff> findByCurrentRoleContainingIgnoreCase(String role);
//    List<Staff> findByNameContainingIgnoreCase(String first_name);

//    List<Student> findByCourse(String course); 
//    List<Student> findByCity(String city); 
//    Student findByEmail(String email);
}