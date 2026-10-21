/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shantiniketan.dao;

import com.shantiniketan.bean.StudentsBean;
import com.shantiniketan.dao.LoginDAO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class StudentsDAO {

	public static int saveStudent(StudentsBean e) {
		int status = 0;
		int generatedId = 0;
		try {
			Connection con = LoginDAO.getConn();
			PreparedStatement ps = con.prepareStatement(
					"INSERT INTO students (applying_grade, selected_stream, curriculum_board, first_name, middle_name, last_name, dob, gender, blood_group, prev_school, prev_grade_score, father_name, mother_name, primary_phone, guardian_email, residential_address, city, state, pincode, status, transport_facility, student_photo, birth_certificate) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
					Statement.RETURN_GENERATED_KEYS);

			ps.setString(1, e.getApplyingGrade());
			ps.setString(2, e.getSelectedStream());
			ps.setString(3, e.getCurriculumBoard());
			ps.setString(4, e.getFirstName());
			ps.setString(5, e.getMiddleName());
			ps.setString(6, e.getLastName());
			ps.setString(7, e.getDob());
			ps.setString(8, e.getGender());
			ps.setString(9, e.getBloodGroup());
			ps.setString(10, e.getPrevSchool());
			ps.setString(11, e.getPrevGradeScore());
			ps.setString(12, e.getFatherName());
			ps.setString(13, e.getMotherName());
			ps.setString(14, e.getPrimaryPhone());
			ps.setString(15, e.getGuardianEmail());
			ps.setString(16, e.getResidentialAddress());
			ps.setString(17, e.getCity());
			ps.setString(18, e.getState());
			ps.setString(19, e.getPincode());
			
			ps.setString(20, e.getStatus() != null ? e.getStatus() : "Active");
			
			ps.setBoolean(21, e.isTransportFacility());

			// Storing Part input streams directly into BLOB columns
			if (e.getStudentPhoto() != null && e.getStudentPhoto().getSize() > 0) {
				ps.setBinaryStream(22, e.getStudentPhoto().getInputStream(), (int) e.getStudentPhoto().getSize());
			} else {
				ps.setNull(22, java.sql.Types.BLOB);
			}

			if (e.getBirthCertificate() != null && e.getBirthCertificate().getSize() > 0) {
				ps.setBinaryStream(23, e.getBirthCertificate().getInputStream(),
						(int) e.getBirthCertificate().getSize());
			} else {
				ps.setNull(23, java.sql.Types.BLOB);
			}

			status = ps.executeUpdate();

			if (status > 0) {
				ResultSet rs = ps.getGeneratedKeys();
				if (rs.next()) {
					generatedId = rs.getInt(1); // Capture the newly generated ID
				}
			}

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return generatedId;
	}

	// 2. Add a helper method to fetch image bytes by student ID and column type
	// ("photo" or "cert")
	public static byte[] getImageBytes(int studentId, String type) {
		byte[] imageBytes = null;
		String columnName = "cert".equals(type) ? "birth_certificate" : "student_photo";
		try {
			Connection con = LoginDAO.getConn();
			PreparedStatement ps = con.prepareStatement("SELECT " + columnName + " FROM students WHERE id = ?");
			ps.setInt(1, studentId);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				imageBytes = rs.getBytes(columnName);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return imageBytes;
	}

	// Assumes you have a Student bean/model class created
	public static List<StudentsBean> searchStudents(String searchQuery) {
		List<StudentsBean> studentList = new ArrayList<>();
		String sql = "SELECT * FROM students WHERE id LIKE ? OR first_name LIKE ? OR applying_grade LIKE ?";

		try (Connection conn = LoginDAO.getConn(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			String searchPattern = "%" + searchQuery.trim() + "%";
			pstmt.setString(1, searchPattern);
			pstmt.setString(2, searchPattern);
			pstmt.setString(3, searchPattern);

			try (ResultSet rs = pstmt.executeQuery()) {
				while (rs.next()) {
					StudentsBean student = new StudentsBean();
					student.setId(rs.getInt("id"));
					student.setApplyingGrade(rs.getString("applying_grade"));
					student.setSelectedStream(rs.getString("selected_stream"));
					student.setCurriculumBoard(rs.getString("curriculum_board"));
					student.setFirstName(rs.getString("first_name"));
					student.setMiddleName(rs.getString("middle_name"));
					student.setLastName(rs.getString("last_name"));
					student.setDob(rs.getString("dob"));
					student.setGender(rs.getString("gender"));
					student.setBloodGroup(rs.getString("blood_group"));
					student.setPrevSchool(rs.getString("prev_school"));
					student.setPrevGradeScore(rs.getString("prev_grade_score"));
					student.setFatherName(rs.getString("father_name"));
					student.setMotherName(rs.getString("mother_name"));
					student.setPrimaryPhone(rs.getString("primary_phone"));
					student.setGuardianEmail(rs.getString("guardian_email"));
					student.setResidentialAddress(rs.getString("residential_address"));
					student.setCity(rs.getString("city"));
					student.setState(rs.getString("state"));
					student.setPincode(rs.getString("pincode"));
					student.setStatus(rs.getString("status"));
					student.setTransportFacility(rs.getBoolean("transport_facility"));
					student.setStudentPhotoName(rs.getString("student_photo"));
					student.setBirthCertificateName(rs.getString("birth_certificate"));
					student.setCreated_at(rs.getString("created_at"));

					studentList.add(student);
				}
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return studentList;
	}

	// Add this method to update file names after they are renamed on disk
//    public static void updateStudentFiles(int id, String photoName, String certName) {
//        try {
//            Connection con = LoginDAO.getConn();
//            PreparedStatement ps = con.prepareStatement(
//                    "UPDATE students SET student_photo = ?, birth_certificate = ? WHERE id = ?");
//            ps.setString(1, photoName);
//            ps.setString(2, certName);
//            ps.setInt(3, id);
//            ps.executeUpdate();
//            con.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
	public static List<StudentsBean> getStudentsByPage(int pageid, int total) {
		List<StudentsBean> list = new ArrayList<>();
		int start = (pageid - 1) * total;
		try {
			Connection con = LoginDAO.getConn();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM students ORDER BY id DESC LIMIT ?, ?");
			ps.setInt(1, start);
			ps.setInt(2, total);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				StudentsBean e = new StudentsBean();
				e.setId(rs.getInt("id"));
				e.setApplyingGrade(rs.getString("applying_grade"));
				e.setSelectedStream(rs.getString("selected_stream"));
				e.setCurriculumBoard(rs.getString("curriculum_board"));
				e.setFirstName(rs.getString("first_name"));
				e.setMiddleName(rs.getString("middle_name"));
				e.setLastName(rs.getString("last_name"));
				e.setDob(rs.getString("dob"));
				e.setGender(rs.getString("gender"));
				e.setBloodGroup(rs.getString("blood_group"));
				e.setPrevSchool(rs.getString("prev_school"));
				e.setPrevGradeScore(rs.getString("prev_grade_score"));
				e.setFatherName(rs.getString("father_name"));
				e.setMotherName(rs.getString("mother_name"));
				e.setPrimaryPhone(rs.getString("primary_phone"));
				e.setGuardianEmail(rs.getString("guardian_email"));
				e.setResidentialAddress(rs.getString("residential_address"));
				e.setCity(rs.getString("city"));
				e.setState(rs.getString("state"));
				e.setPincode(rs.getString("pincode"));
				e.setStatus(rs.getString("status"));
				e.setTransportFacility(rs.getBoolean("transport_facility"));
				e.setStudentPhotoName(rs.getString("student_photo"));
				e.setBirthCertificateName(rs.getString("birth_certificate"));
				e.setCreated_at(rs.getString("created_at"));

// For files/images, fetching stored file names
				// Note: Make sure to add string file name getters/setters in StudentsBean if
				// using Strings for file columns
				list.add(e);
			}
			rs.close();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	public static StudentsBean getStudentById(int id) {
		StudentsBean s = new StudentsBean();

		try {
			Connection con = LoginDAO.getConn();
			PreparedStatement ps = con.prepareStatement("select * from students where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				s.setId(rs.getInt(1));
				s.setApplyingGrade(rs.getString(2));
				s.setSelectedStream(rs.getString(3));
				s.setCurriculumBoard(rs.getString(4));
				s.setFirstName(rs.getString(5));
				s.setMiddleName(rs.getString(6));
				s.setLastName(rs.getString(7));
				s.setDob(rs.getString(8));
				s.setGender(rs.getString(9));
				s.setBloodGroup(rs.getString(10));
				s.setPrevSchool(rs.getString(11));
				s.setPrevGradeScore(rs.getString(12));
				s.setFatherName(rs.getString(13));
				s.setMotherName(rs.getString(14));
				s.setPrimaryPhone(rs.getString(15));
				s.setGuardianEmail(rs.getString(16));
				s.setResidentialAddress(rs.getString(17));
				s.setCity(rs.getString(18));
				s.setState(rs.getString(19));
				s.setPincode(rs.getString(20));
				s.setStatus(rs.getString(21));
				s.setTransportFacility(rs.getBoolean(22));

				s.setStudentPhotoName(rs.getString(23));
				s.setBirthCertificateName(rs.getString(24));

				s.setCreated_at(rs.getString(25));
			}
			rs.close();
			ps.close();
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return s;
	}

	public static int updateStudent(StudentsBean s) {
		int status = 0;
		try {
			Connection con = LoginDAO.getConn();
			PreparedStatement ps = con.prepareStatement(
					"UPDATE students SET applying_grade=?, selected_stream=?, curriculum_board=?, first_name=?, middle_name=?, last_name=?, dob=?, gender=?, blood_group=?, prev_school=?, prev_grade_score=?, father_name=?, mother_name=?, primary_phone=?, guardian_email=?, residential_address=?, city=?, state=?, pincode=?, status=?, transport_facility=?"
							+ (s.getStudentPhoto() != null && s.getStudentPhoto().getSize() > 0 ? ", student_photo=? "
									: "")
							+ (s.getBirthCertificate() != null && s.getBirthCertificate().getSize() > 0
									? ", birth_certificate=? "
									: "")
							+ " WHERE id=?");

			ps.setString(1, s.getApplyingGrade());
			ps.setString(2, s.getSelectedStream());
			ps.setString(3, s.getCurriculumBoard());
			ps.setString(4, s.getFirstName());
			ps.setString(5, s.getMiddleName());
			ps.setString(6, s.getLastName());
			ps.setString(7, s.getDob());
			ps.setString(8, s.getGender());
			ps.setString(9, s.getBloodGroup());
			ps.setString(10, s.getPrevSchool());
			ps.setString(11, s.getPrevGradeScore());
			ps.setString(12, s.getFatherName());
			ps.setString(13, s.getMotherName());
			ps.setString(14, s.getPrimaryPhone());
			ps.setString(15, s.getGuardianEmail());
			ps.setString(16, s.getResidentialAddress());
			ps.setString(17, s.getCity());
			ps.setString(18, s.getState());
			ps.setString(19, s.getPincode());
			ps.setString(20, s.getStatus());
			ps.setBoolean(21, s.isTransportFacility());

			int paramIndex = 22;
			if (s.getStudentPhoto() != null && s.getStudentPhoto().getSize() > 0) {
				ps.setBinaryStream(paramIndex++, s.getStudentPhoto().getInputStream(),
						(int) s.getStudentPhoto().getSize());
			}

			if (s.getBirthCertificate() != null && s.getBirthCertificate().getSize() > 0) {
				ps.setBinaryStream(paramIndex++, s.getBirthCertificate().getInputStream(),
						(int) s.getBirthCertificate().getSize());
			}

			ps.setInt(paramIndex, s.getId());

			status = ps.executeUpdate(); 
			
			ps.close();
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public static int deleteStudent(int id) {
		int status = 0;
		try {
			Connection con = LoginDAO.getConn();
			PreparedStatement ps = con.prepareStatement("delete from students where id=?");
			ps.setInt(1, id);
			status = ps.executeUpdate();
 
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public static long getStudentsCount() {
		long count = 0;
		try {
			Connection con = LoginDAO.getConn();
			PreparedStatement ps = con.prepareStatement("select count(id) from students");
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				count = rs.getInt(1); // Gets the first column value from the result row
			}
 
			rs.close();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return count;
	}
	
	public static long getStaffCount() {
		long count = 0;
		try {
			Connection con = LoginDAO.getConn();
			PreparedStatement ps = con.prepareStatement("select count(staff_id) from staff");
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				count = rs.getInt(1); // Gets the first column value from the result row
			}
 
			rs.close();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return count;
	}
	
	public static long getUsersCount() {
		long count = 0;
		try {
			Connection con = LoginDAO.getConn();
			PreparedStatement ps = con.prepareStatement("select count(id) from users");
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				count = rs.getInt(1); // Gets the first column value from the result row
			}
 
			rs.close();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return count;
	}
	
	public static long getTransportCount() {
		long count = 0;
		try {
			Connection con = LoginDAO.getConn();
			PreparedStatement ps = con.prepareStatement("select count(transport_id) from transport");
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				count = rs.getInt(1); // Gets the first column value from the result row
			}
			
			rs.close();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}

}
