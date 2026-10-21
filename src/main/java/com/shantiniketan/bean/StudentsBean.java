/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shantiniketan.bean;

import jakarta.servlet.http.Part;

/**
 *
 * @author Administrator
 */
public class StudentsBean {

	private int id;
	private String applyingGrade;
	private String selectedStream;
	private String curriculumBoard;

	private String firstName;
	private String middleName;
	private String lastName;
	private String dob;
	private String gender;
	private String bloodGroup;
	private String prevSchool;
	private String prevGradeScore;

	private String fatherName;
	private String motherName;
	private String primaryPhone;
	private String guardianEmail;
	private String residentialAddress;
	private String city;
	private String state;
	private String pincode;
	private String status;
	private String created_at;

	private boolean transportFacility;

	private Part studentPhoto;
	private Part birthCertificate;

	private String studentPhotoName;
	private String birthCertificateName;

	public StudentsBean() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStudentPhotoName() {
		return studentPhotoName;
	}

	public String getBirthCertificateName() {
		return birthCertificateName;
	}

	public void setStudentPhotoName(String studentPhotoName) {
		this.studentPhotoName = studentPhotoName;
	}

	public void setBirthCertificateName(String birthCertificateName) {
		this.birthCertificateName = birthCertificateName;
	}

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

	public String getApplyingGrade() {
		return applyingGrade;
	}

	public String getSelectedStream() {
		return selectedStream;
	}

	public String getCurriculumBoard() {
		return curriculumBoard;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getDob() {
		return dob;
	}

	public String getGender() {
		return gender;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public String getPrevSchool() {
		return prevSchool;
	}

	public String getPrevGradeScore() {
		return prevGradeScore;
	}

	public String getFatherName() {
		return fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public String getPrimaryPhone() {
		return primaryPhone;
	}

	public String getGuardianEmail() {
		return guardianEmail;
	}

	public String getResidentialAddress() {
		return residentialAddress;
	}

	public String getCity() {
		return city;
	}

	public String getState() {
		return state;
	}

	public String getPincode() {
		return pincode;
	}

	public boolean isTransportFacility() {
		return transportFacility;
	}

	public Part getStudentPhoto() {
		return studentPhoto;
	}

	public Part getBirthCertificate() {
		return birthCertificate;
	}

	public void setApplyingGrade(String applyingGrade) {
		this.applyingGrade = applyingGrade;
	}

	public void setSelectedStream(String selectedStream) {
		this.selectedStream = selectedStream;
	}

	public void setCurriculumBoard(String curriculumBoard) {
		this.curriculumBoard = curriculumBoard;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public void setPrevSchool(String prevSchool) {
		this.prevSchool = prevSchool;
	}

	public void setPrevGradeScore(String prevGradeScore) {
		this.prevGradeScore = prevGradeScore;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public void setPrimaryPhone(String primaryPhone) {
		this.primaryPhone = primaryPhone;
	}

	public void setGuardianEmail(String guardianEmail) {
		this.guardianEmail = guardianEmail;
	}

	public void setResidentialAddress(String residentialAddress) {
		this.residentialAddress = residentialAddress;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setState(String state) {
		this.state = state;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public void setTransportFacility(boolean transportFacility) {
		this.transportFacility = transportFacility;
	}

	public void setStudentPhoto(Part studentPhoto) {
		this.studentPhoto = studentPhoto;
	}

	public void setBirthCertificate(Part birthCertificate) {
		this.birthCertificate = birthCertificate;
	}

}
