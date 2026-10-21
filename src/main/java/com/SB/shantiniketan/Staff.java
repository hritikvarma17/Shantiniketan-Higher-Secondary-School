package com.SB.shantiniketan;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import java.time.LocalDate;

@Entity
public class Staff {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int staffId;
	private String firstName;
	private String middleName;
	private String lastName;
	private String roleType;
	private String currentRole;
	private String studyQualification;
	private int workExperienceYears;
	private String mobile;
	private String email;
	private String address;
	private LocalDate dob;
	private String gender;
	private String bloodGroup;
	private LocalDate joiningDate;
	@Column(name = "passport_photo", columnDefinition = "LONGBLOB")
	private byte[] passportPhoto;

	public Staff() {
	}

	public Staff(int staffId, String firstName, String middleName, String lastName, String roleType, String currentRole,
			String studyQualification, int workExperienceYears, String mobile, String email, String address,
			LocalDate dob, String gender, String bloodGroup, LocalDate joiningDate, byte[] passportPhoto) {
		super();
		this.staffId = staffId;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.roleType = roleType;
		this.currentRole = currentRole;
		this.studyQualification = studyQualification;
		this.workExperienceYears = workExperienceYears;
		this.mobile = mobile;
		this.email = email;
		this.address = address;
		this.dob = dob;
		this.gender = gender;
		this.bloodGroup = bloodGroup;
		this.joiningDate = joiningDate;
		this.passportPhoto = passportPhoto;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getRoleType() {
		return roleType;
	}

	public void setRoleType(String roleType) {
		this.roleType = roleType;
	}

	public String getCurrentRole() {
		return currentRole;
	}

	public void setCurrentRole(String currentRole) {
		this.currentRole = currentRole;
	}

	public String getStudyQualification() {
		return studyQualification;
	}

	public void setStudyQualification(String studyQualification) {
		this.studyQualification = studyQualification;
	}

	public int getWorkExperienceYears() {
		return workExperienceYears;
	}

	public void setWorkExperienceYears(int workExperienceYears) {
		this.workExperienceYears = workExperienceYears;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public LocalDate getJoiningDate() {
		return joiningDate;
	}

	public void setJoiningDate(LocalDate joiningDate) {
		this.joiningDate = joiningDate;
	}

	public byte[] getPassportPhoto() {
		return passportPhoto;
	}

	public void setPassportPhoto(byte[] passportPhoto) {
		this.passportPhoto = passportPhoto;
	}

}