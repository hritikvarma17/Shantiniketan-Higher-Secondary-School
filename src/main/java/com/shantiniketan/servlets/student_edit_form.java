/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.shantiniketan.servlets;

import com.shantiniketan.bean.StudentsBean;
import com.shantiniketan.dao.StudentsDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
@WebServlet("/student_edit_form")
public class student_edit_form extends HttpServlet {

	/**
	 * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
	 * methods.
	 *
	 * @param request  servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException      if an I/O error occurs
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			/* TODO output your page here. You may use following sample code. */
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet student_edit_form</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>Servlet student_edit_form at " + request.getContextPath() + "</h1>");
			out.println("</body>");
			out.println("</html>");
		}
	}

	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
	// + sign on the left to edit the code.">
	/**
	 * Handles the HTTP <code>GET</code> method.
	 *
	 * @param request  servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException      if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//        processRequest(request, response);
// ---> ADD THIS SECURITY CHECK HERE <---
		HttpSession session = request.getSession(false);
		if (session == null || session.getAttribute("user") == null) {
			response.sendRedirect("log_in"); // Redirect unauthorized users to login
			return;
		}

		// 1. Handle image rendering request directly from the Database BLOB
		// This catches the request when the browser asks for 'getImage'
		String idParam = request.getParameter("id");
		String typeParam = request.getParameter("type");
		if (idParam != null && !idParam.isEmpty() && typeParam != null && !typeParam.isEmpty()) {
			int studentId = Integer.parseInt(idParam);
			byte[] imgData = StudentsDAO.getImageBytes(studentId, typeParam);

			if (imgData != null) {
				response.setContentType("image/jpeg");
				response.setContentLength(imgData.length);
				response.getOutputStream().write(imgData);
			}
			return; // Stops here so it streams the image instead of loading the table
		}

// 2. Render Student Table HTML (Standard pagination & view)
//        processRequest(request, response);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		// HTML Output with Bootstrap 5 Styling
		out.println("<!DOCTYPE html>");
		out.println("<html><head><title>All Student Records | Shantiniketan Higher Secondary School</title>");
		out.println(
				"<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css' rel='stylesheet'>");
		out.println(
				"<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css'>");
		out.println("<link rel='stylesheet' type='text/css' href='\" + request.getContextPath() + \"/style.css'>");
		out.println(
				"<link rel='stylesheet' type='text/css' href='\" + request.getContextPath() + \"/admission_style.css'>");
		out.println("</head><body class='bg-light'>");

		RequestDispatcher dispatcher = request.getRequestDispatcher("student_edit_nav_bar");
		dispatcher.include(request, response);

		out.println("<main class='admission-portal-wrapper'>");
		out.println("<div class='container'>");

		// Banner Card Header
		out.println("<div class='admission-header-card text-center text-white mb-4 shadow-sm p-4 p-md-5 rounded-4'>");
		out.println(
				"<span class='badge bg-warning text-dark px-3 py-2 rounded-pill fw-bold text-uppercase tracking-wider mb-2'>");
		out.println("Academic Session 2027-28");
		out.println("</span>");
		out.println("<h1 class='display-6 fw-bold mb-2'>Edit Student Information</h1>");
		out.println("<p class='lead opacity-90 mx-auto small mb-0' style='max-width: 680px;'>");
		out.println(
				"Please fill out the official form carefully. Fields marked with an asterisk (<span class='text-warning'>*</span>) are mandatory.");
		out.println("</p>");
		out.println("</div>");

		// Form Container Card
		out.println("<div class='card border-0 shadow-sm rounded-4 mb-5 admission-form-container'>");
		out.println("<div class='card-body p-4 p-md-5'>");

		String sid = request.getParameter("id");
		int id = Integer.parseInt(sid);

		StudentsBean s = StudentsDAO.getStudentById(id);

		out.println(
				"<form action='student_edit_process?id="+s.getId()+"' method='POST' enctype='multipart/form-data' id='admissionForm' class='needs-validation' novalidate>");

		// SECTION 1: Academic Choice
		out.println("<div class='form-section-title mb-4'>");
		out.println("<span class='step-num'>1</span>");
		out.println("<div>");
		out.println("<h5 class='fw-bold mb-0 text-dark'>Class & Curriculum Selection</h5>");
		out.println("<small class='text-muted'>Choose the grade and board you are seeking admission for</small>");
		out.println("</div>");
		out.println("</div>");

		out.println("<div class='row g-3 mb-4'>");
		out.println("<div class='col-md-6'>");

//		out.println("<input type='hidden' name='id' value='" + s.getId() + "'/>");
		String currentGrade = (s != null && s.getApplyingGrade() != null) ? s.getApplyingGrade() : "";
		out.println(
				"<label for='applyingGrade' class='form-label fw-semibold'>Applying For Grade <span class='text-danger'>*</span></label>");
		out.println("<select class='form-select custom-input' id='applyingGrade' name='applyingGrade'  required>");
		out.println("<option value='' disabled selected>-- Select Grade / Class --</option>");
		out.println("<optgroup label='Pre-Primary'>");
		out.println(
				"<option value='NURSERY' " + ("NURSERY".equals(currentGrade) ? "selected" : "") + ">Nursery</option>");
		out.println(
				"<option value='JR_KG' " + ("JR_KG".equals(currentGrade) ? "selected" : "") + ">Junior KG</option>");
		out.println(
				"<option value='SR_KG' " + ("SR_KG".equals(currentGrade) ? "selected" : "") + ">Senior KG</option>");
		out.println("</optgroup>");
		out.println("<optgroup label='Primary (I–V)'>");
		out.println(
				"<option value='CLASS_1' " + ("CLASS_1".equals(currentGrade) ? "selected" : "") + ">Class I</option>");
		out.println(
				"<option value='CLASS_2' " + ("CLASS_2".equals(currentGrade) ? "selected" : "") + ">Class II</option>");
		out.println("<option value='CLASS_3' " + ("CLASS_3".equals(currentGrade) ? "selected" : "")
				+ ">Class III</option>");
		out.println(
				"<option value='CLASS_4' " + ("CLASS_4".equals(currentGrade) ? "selected" : "") + ">Class IV</option>");
		out.println(
				"<option value='CLASS_5' " + ("CLASS_5".equals(currentGrade) ? "selected" : "") + ">Class V</option>");
		out.println("</optgroup>");
		out.println("<optgroup label='Secondary (VI–X)'>");
		out.println(
				"<option value='CLASS_6' " + ("CLASS_6".equals(currentGrade) ? "selected" : "") + ">Class VI</option>");
		out.println("<option value='CLASS_7' " + ("CLASS_7".equals(currentGrade) ? "selected" : "")
				+ ">Class VII</option>");
		out.println("<option value='CLASS_8' " + ("CLASS_8".equals(currentGrade) ? "selected" : "")
				+ ">Class VIII</option>");
		out.println(
				"<option value='CLASS_9' " + ("CLASS_9".equals(currentGrade) ? "selected" : "") + ">Class IX</option>");
		out.println("<option value='CLASS_10' " + ("CLASS_10".equals(currentGrade) ? "selected" : "")
				+ ">Class X</option>");
		out.println("</optgroup>");
		out.println("<optgroup label='Higher Secondary (XI–XII)'>");
		out.println("<option value='CLASS_11' " + ("CLASS_11".equals(currentGrade) ? "selected" : "")
				+ ">Class XI</option>");
		out.println("<option value='CLASS_12' " + ("CLASS_12".equals(currentGrade) ? "selected" : "")
				+ ">Class XII</option>");
		out.println("</optgroup>");
		out.println("</select>");
		out.println("<div class='invalid-feedback'>Please select an academic grade.</div>");
		out.println("</div>");

		out.println("<div class='col-md-6' id='streamContainer' style='display: "
				+ (("CLASS_11".equals(currentGrade) || "CLASS_12".equals(currentGrade)) ? "" : "none") + "'>");

		out.println(
				"<label for='selectedStream' class='form-label fw-semibold'>Higher Secondary Stream <span class='text-danger'>*</span></label>");
		out.println("<select class='form-select custom-input' id='selectedStream' name='selectedStream'>");
		out.println("<option value='' disabled selected>-- Choose Stream --</option>");

		out.println("<option value='SCIENCE_PCM'" + ("SCIENCE_PCM".equals(s.getSelectedStream()) ? "selected" : "")
				+ ">Science (Physics, Chemistry, Maths)</option>");
		out.println("<option value='SCIENCE_PCB'" + ("SCIENCE_PCB".equals(s.getSelectedStream()) ? "selected" : "")
				+ ">Science (Physics, Chemistry, Biology)</option>");
		out.println(
				"<option value='COMMERCE_MATHS'" + ("COMMERCE_MATHS".equals(s.getSelectedStream()) ? "selected" : "")
						+ ">Commerce (with Applied Mathematics)</option>");
		out.println("<option value='COMMERCE_IP'" + ("COMMERCE_IP".equals(s.getSelectedStream()) ? "selected" : "")
				+ ">Commerce (with Informatics Practices)</option>");
		out.println("</select>");
		out.println("<div class='invalid-feedback'>Please select a stream.</div>");
		out.println("</div>");

		out.println("<div class='col-md-6'>");
		out.println(
				"<label for='curriculumBoard' class='form-label fw-semibold'>Preferred Curriculum <span class='text-danger'>*</span></label>");
		out.println("<select class='form-select custom-input' id='curriculumBoard' name='curriculumBoard' required>");
		out.println("<option value='CBSE' selected>Central Board of Secondary Education (CBSE)</option>");
		out.println("<option value='STATE_BOARD'>State Board</option>");
		out.println("</select>");
		out.println("</div>");
		out.println("</div>");

		out.println("<hr class='my-4 opacity-25'>");

		// SECTION 2: Student Personal Information
		out.println("<div class='form-section-title mb-4'>");
		out.println("<span class='step-num'>2</span>");
		out.println("<div>");
		out.println("<h5 class='fw-bold mb-0 text-dark'>Student Particulars</h5>");
		out.println(
				"<small class='text-muted'>Enter student's legal name and date of birth as per birth certificate</small>");
		out.println("</div>");
		out.println("</div>");

		out.println("<div class='row g-3 mb-4'>");
		out.println("<div class='col-md-4'>");
		out.println(
				"<label for='firstName' class='form-label fw-semibold'>First Name <span class='text-danger'>*</span></label>");
		out.println("<input type='text' class='form-control custom-input' id='firstName' name='firstName' value='"
				+ s.getFirstName() + "' placeholder='e.g. Aarav' required>");
		out.println("<div class='invalid-feedback'>First name is required.</div>");
		out.println("</div>");
		out.println("<div class='col-md-4'>");
		out.println("<label for='middleName' class='form-label fw-semibold'>Middle Name</label>");
		out.println("<input type='text' class='form-control custom-input' id='middleName' name='middleName' value='"
				+ s.getMiddleName() + "' placeholder='Father Board / Middle Name'>");
		out.println("</div>");
		out.println("<div class='col-md-4'>");
		out.println(
				"<label for='lastName' class='form-label fw-semibold'>Last Name / Surname <span class='text-danger'>*</span></label>");
		out.println("<input type='text' class='form-control custom-input' id='lastName' name='lastName' value='"
				+ s.getLastName() + "' placeholder='e.g. Patel' required>");
		out.println("<div class='invalid-feedback'>Last name is required.</div>");
		out.println("</div>");

		out.println("<div class='col-md-4'>");
		out.println(
				"<label for='dob' class='form-label fw-semibold'>Date of Birth <span class='text-danger'>*</span></label>");
		out.println("<input type='date' class='form-control custom-input' id='dob' name='dob' value='" + s.getDob()
				+ "' required>");
		out.println("<div class='invalid-feedback'>Valid birth date is required.</div>");
		out.println("</div>");
		out.println("<div class='col-md-4'>");
		out.println(
				"<label for='gender' class='form-label fw-semibold'>Gender <span class='text-danger'>*</span></label>");
		out.println("<select class='form-select custom-input' id='gender' name='gender' required>");
		out.println("<option value='' disabled selected>-- Select Gender --</option>");

		out.println("<option value='MALE' " + ("MALE".equals(s.getGender()) ? "selected" : "") + ">Male</option>");
		out.println(
				"<option value='FEMALE' " + ("FEMALE".equals(s.getGender()) ? "selected" : "") + ">Female</option>");
		out.println("<option value='OTHER' " + ("OTHER".equals(s.getGender()) ? "selected" : "") + ">Other</option>");
		out.println("</select>");
		out.println("<div class='invalid-feedback'>Please choose a gender.</div>");
		out.println("</div>");
		out.println("<div class='col-md-4'>");
		out.println("<label for='bloodGroup' class='form-label fw-semibold'>Blood Group</label>");
		out.println("<select class='form-select custom-input' id='bloodGroup' name='bloodGroup'>");
		out.println("<option value='' selected>-- Not Known --</option>");
		out.println("<option value='A+' " + ("A+".equals(s.getBloodGroup()) ? "selected" : "")
				+ ">A+</option><option value='A-' " + ("A-".equals(s.getBloodGroup()) ? "selected" : "")
				+ ">A-</option>");
		out.println("<option value='B+' " + ("B+".equals(s.getBloodGroup()) ? "selected" : "")
				+ ">B+</option><option value='B-' " + ("B-".equals(s.getBloodGroup()) ? "selected" : "")
				+ ">B-</option>");
		out.println("<option value='O+' " + ("O+".equals(s.getBloodGroup()) ? "selected" : "")
				+ ">O+</option><option value='O-' " + ("O-".equals(s.getBloodGroup()) ? "selected" : "")
				+ ">O-</option>");
		out.println("<option value='AB+' " + ("AB+".equals(s.getBloodGroup()) ? "selected" : "")
				+ ">AB+</option><option value='AB-' " + ("AB-".equals(s.getBloodGroup()) ? "selected" : "")
				+ ">AB-</option>");
		out.println("</select>");
		out.println("</div>");

		out.println("<div class='col-md-6'>");
		out.println("<label for='prevSchool' class='form-label fw-semibold'>Previous School Attended</label>");
		out.println("<input type='text' class='form-control custom-input' id='prevSchool' name='prevSchool' value='"
				+ s.getPrevSchool() + "' placeholder='Leave blank if Pre-Primary'>");
		out.println("</div>");
		out.println("<div class='col-md-6'>");
		out.println("<label for='prevGradeScore' class='form-label fw-semibold'>Last Grade Percentage / GPA</label>");
		out.println(
				"<input type='text' class='form-control custom-input' id='prevGradeScore' name='prevGradeScore' value='"
						+ s.getPrevGradeScore() + "' placeholder='e.g. 92% or Grade A1'>");
		out.println("</div>");
		out.println("</div>");

		out.println("<hr class='my-4 opacity-25'>");

		// SECTION 3: Parent / Guardian Information
		out.println("<div class='form-section-title mb-4'>");
		out.println("<span class='step-num'>3</span>");
		out.println("<div>");
		out.println("<h5 class='fw-bold mb-0 text-dark'>Parent & Guardian Details</h5>");
		out.println("<small class='text-muted'>Contact details for all official communications and alerts</small>");
		out.println("</div>");
		out.println("</div>");

		out.println("<div class='row g-3 mb-4'>");
		out.println("<div class='col-md-6'>");
		out.println(
				"<label for='fatherName' class='form-label fw-semibold'>Father's Full Name <span class='text-danger'>*</span></label>");
		out.println("<input type='text' class='form-control custom-input' id='fatherName' name='fatherName' value='"
				+ s.getFatherName() + "' required>");
		out.println("<div class='invalid-feedback'>Father's name is required.</div>");
		out.println("</div>");
		out.println("<div class='col-md-6'>");
		out.println(
				"<label for='motherName' class='form-label fw-semibold'>Mother's Full Name <span class='text-danger'>*</span></label>");
		out.println("<input type='text' class='form-control custom-input' id='motherName' name='motherName' value='"
				+ s.getMotherName() + "' required>");
		out.println("<div class='invalid-feedback'>Mother's name is required.</div>");
		out.println("</div>");

		out.println("<div class='col-md-6'>");
		out.println(
				"<label for='primaryPhone' class='form-label fw-semibold'>Primary Contact Number <span class='text-danger'>*</span></label>");
		out.println("<div class='input-group'>");
		out.println("<span class='input-group-text bg-light text-muted border-end-0'>+91</span>");
		out.println(
				"<input type='tel' pattern='[0-9]{10}' class='form-control custom-input border-start-0' id='primaryPhone' name='primaryPhone' value='"
						+ s.getPrimaryPhone() + "' placeholder='10-digit mobile number' required>");
		out.println("</div>");
		out.println("<div class='invalid-feedback'>Enter a valid 10-digit phone number.</div>");
		out.println("</div>");
		out.println("<div class='col-md-6'>");
		out.println(
				"<label for='guardianEmail' class='form-label fw-semibold'>Email Address for Correspondence <span class='text-danger'>*</span></label>");
		out.println(
				"<input type='email' class='form-control custom-input' id='guardianEmail' name='guardianEmail' value='"
						+ s.getGuardianEmail() + "' placeholder='parent@example.com' required>");
		out.println("<div class='invalid-feedback'>Please provide a valid email.</div>");
		out.println("</div>");

		out.println("<div class='col-12'>");
		out.println(
				"<label for='residentialAddress' class='form-label fw-semibold'>Residential Address <span class='text-danger'>*</span></label>");
		out.println(
				"<textarea class='form-control custom-input' id='residentialAddress' name='residentialAddress' rows='2' placeholder='House/Flat No., Society, Landmark' required>"
						+ (s.getResidentialAddress() != null ? s.getResidentialAddress() : "") + "</textarea>");
		out.println("<div class='invalid-feedback'>Residential address is required.</div>");
		out.println("</div>");

		out.println("<div class='col-md-4'>");
		out.println("<label for='city' class='form-label fw-semibold'>City <span class='text-danger'>*</span></label>");
		out.println("<input type='text' class='form-control custom-input' id='city' name='city' value='" + s.getCity()
				+ "' placeholder='e.g. Ahmedabad' required>");
		out.println("</div>");
		out.println("<div class='col-md-4'>");
		out.println(
				"<label for='state' class='form-label fw-semibold'>State <span class='text-danger'>*</span></label>");
		out.println("<input type='text' class='form-control custom-input' id='state' name='state' value='"
				+ s.getState() + "' placeholder='e.g. Gujarat' required>");
		out.println("</div>");
		out.println("<div class='col-md-4'>");
		out.println(
				"<label for='pincode' class='form-label fw-semibold'>Pincode <span class='text-danger'>*</span></label>");
		out.println(
				"<input type='text' pattern='[0-9]{6}' class='form-control custom-input' id='pincode' name='pincode' value='"
						+ s.getPincode() + "' placeholder='6-digit postal code' required>");
		out.println("</div>");
		out.println("<div class='col-md-4'>");
		out.println(
				"<label for='status' class='form-label fw-semibold'>Student Status <span class='text-danger'>*</span></label>");
		out.println("<select class='form-select custom-input' id='status' name='status' required>");

		// Define your status options
		String[] statuses = { "Active", "Passed Out", "Transferred", "Dropped Out", "Inactive", "Suspended" };
		String currentStatus = s.getStatus() != null ? s.getStatus() : "";

		for (String stat : statuses) {
			// Check if this option matches the current student's status to mark it selected
			String selected = stat.equalsIgnoreCase(currentStatus) ? "selected" : "";
			out.println("<option value='" + stat + "' " + selected + ">" + stat + "</option>");
		}

		out.println("</select>");
		out.println("</div>");
		out.println("</div>");

		out.println("<hr class='my-4 opacity-25'>");

		// SECTION 4: Transportation & Document Upload
		out.println("<div class='form-section-title mb-4'>");
		out.println("<span class='step-num'>4</span>");
		out.println("<div>");
		out.println("<h5 class='fw-bold mb-0 text-dark'>Facilities & Verification Attachments</h5>");
		out.println(
				"<small class='text-muted'>Transport preferences and initial document files (PDF/JPG/PNG max 2MB each)</small>");
		out.println("</div>");
		out.println("</div>");

		out.println("<div class='row g-3 mb-4'>");
		out.println("<div class='col-md-12 mb-2'>");
		out.println("<div class='form-check form-switch p-2 bg-light rounded-3 d-flex align-items-center gap-3 ps-5'>");
		out.println(
				"<input class='form-check-input ms-n4' type='checkbox' role='switch' id='transportFacility' name='transportFacility'"
						+ (s.isTransportFacility() ? "checked" : "") + ">");
		out.println(
				"<label class='form-check-label fw-semibold text-dark mb-0' for='transportFacility'>Opt for School Bus Transport Facility (GPS Tracked)</label>");
		out.println("</div>");
		out.println("</div>");

//        out.println("<div class='col-md-6'>");
//        out.println("<label for='studentPhoto' class='form-label fw-semibold'>Student Passport Photo <span class='text-danger'>*</span></label>");
//        out.println("<input class='form-control custom-input' type='file' id='studentPhoto' name='studentPhoto' accept='image/*' required>");
//        out.println("<div class='form-text'>Recent colored passport size photo.</div>");
//        out.println("</div>");
//        out.println("<div class='col-md-6'>");
//        out.println("<label for='birthCertificate' class='form-label fw-semibold'>Birth Certificate / Transfer Certificate <span class='text-danger'>*</span></label>");
//        out.println("<input class='form-control custom-input' type='file' id='birthCertificate' name='birthCertificate' accept='.pdf,image/*' required>");
//        out.println("<div class='form-text'>PDF, JPEG or PNG format.</div>");
//        out.println("</div>");
//        out.println("</div>");
// Inside student_edit_form.java, replace the file input section with this:
// Replace the Student Photo preview and input section in student_edit_form.java with this:
		out.println("<div class='col-md-6'>");
		out.println("<label for='studentPhoto' class='form-label fw-semibold'>Student Passport Photo</label>");
		out.println("<div class='mb-2'>");
		out.println("<a href='student_edit_form?id=" + s.getId() + "&type=photo' target='_blank'>");
		out.println("<img src='student_edit_form?id=" + s.getId()
				+ "&type=photo' width='60' height='60' class='rounded-circle shadow-sm object-fit-cover border' alt='Current Photo'>");
		out.println("</a>");
		out.println(
				"<small class='text-muted d-block mt-1'>Current Photo (Click on image to view full size, Leave file choice empty to keep existing)</small>");
		out.println("</div>");
		out.println(
				"<input class='form-control custom-input' type='file' id='studentPhoto' name='studentPhoto' accept='image/*'>");
		out.println("<div class='form-text'>Recent colored passport size photo.</div>");
		out.println("</div>");

// Birth Certificate Preview & Input
		out.println("<div class='col-md-6'>");
		out.println(
				"<label for='birthCertificate' class='form-label fw-semibold'>Birth Certificate / Transfer Certificate</label>");
		out.println("<div class='mb-2'>");
		out.println("<a href='student_edit_form?id=" + s.getId() + "&type=cert' target='_blank'>");
		out.println("<img src='student_edit_form?id=" + s.getId()
				+ "&type=cert' width='60' height='60' class='rounded shadow-sm object-fit-cover border' alt='Current Cert'>");
		out.println("</a>");
		out.println(
				"<small class='text-muted d-block mt-1'>Current Certificate (Click on image to view full size, Leave file choice empty to keep existing)</small>");
		out.println("</div>");
		out.println(
				"<input class='form-control custom-input' type='file' id='birthCertificate' name='birthCertificate' accept='.pdf,image/*'>");
		out.println("<div class='form-text'>PDF, JPEG or PNG format.</div>");
		out.println("</div>");
		// Declaration Checkbox
		out.println("<div class='form-check mb-4 p-3 bg-light rounded-3'>");
		out.println(
				"<input class='form-check-input ms-0 me-2' type='checkbox' value='' id='declarationCheck' required>");
		out.println("<label class='form-check-label small text-muted' for='declarationCheck'>");
		out.println(
				"I hereby declare that all particulars stated in this application are true and complete to the best of my knowledge. I agree to abide by the disciplinary and academic rules of <strong>Shantiniketan Higher Secondary School</strong>.");
		out.println("</label>");
		out.println("<div class='invalid-feedback'>You must verify and agree prior to submitting.</div>");
		out.println("</div>");

		// Submit Button
		out.println("<div class='d-flex justify-content-between align-items-center pt-2'>");
		out.println(
				"<button type='reset' class='btn btn-outline-secondary px-4 py-2 rounded-pill fw-semibold'>Clear Form</button>");
		out.println(
				"<button type='submit' class='btn btn-emerald-apply px-5 py-2 rounded-pill fw-bold shadow'>Submit Application <i class='fa-solid fa-paper-plane ms-2'></i></button>");
		out.println("</div>");

		out.println("</form>");
		out.println("</div></div></div></main>");

		out.println(
				"<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js'></script>");
		out.println("<script src='script.js'></script>");
		out.println("</body></html>");
		out.close();

	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request  servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException      if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//        processRequest(request, response);
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
