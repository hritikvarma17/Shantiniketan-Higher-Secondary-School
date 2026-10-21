/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.shantiniketan.servlets;

import com.shantiniketan.bean.StudentsBean;
import com.shantiniketan.dao.StudentsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
 
@WebServlet("/student_edit_process")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB per file
        maxRequestSize = 1024 * 1024 * 50 // 50MB total request size
)
public class student_edit_process extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet student_edit_process</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet student_edit_process at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
// Security check: ensure user is logged in
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect("log_in");
            return;
        }

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
        // Retrieving student ID and form parameters
        String idParam = request.getParameter("id");
        int id = Integer.parseInt(idParam);

        String applyingGrade = request.getParameter("applyingGrade");
        String selectedStream = request.getParameter("selectedStream");
        String curriculumBoard = request.getParameter("curriculumBoard");

        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String bloodGroup = request.getParameter("bloodGroup");
        String prevSchool = request.getParameter("prevSchool");
        String prevGradeScore = request.getParameter("prevGradeScore");

        String fatherName = request.getParameter("fatherName");
        String motherName = request.getParameter("motherName");
        String primaryPhone = request.getParameter("primaryPhone");
        String guardianEmail = request.getParameter("guardianEmail");
        String residentialAddress = request.getParameter("residentialAddress");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String pincode = request.getParameter("pincode");
        String status = request.getParameter("status");

        // Checkbox returns "on" or null
        boolean transportFacility = (request.getParameter("transportFacility") != null);

        // Handling file uploads
        Part studentPhoto = request.getPart("studentPhoto");
        Part birthCertificate = request.getPart("birthCertificate");

        // Populating StudentsBean
        StudentsBean s = new StudentsBean();
        s.setId(id);
        s.setApplyingGrade(applyingGrade);
        s.setSelectedStream(selectedStream);
        s.setCurriculumBoard(curriculumBoard);
        s.setFirstName(firstName);
        s.setMiddleName(middleName);
        s.setLastName(lastName);
        s.setDob(dob);
        s.setGender(gender);
        s.setBloodGroup(bloodGroup);
        s.setPrevSchool(prevSchool);
        s.setPrevGradeScore(prevGradeScore);
        s.setFatherName(fatherName);
        s.setMotherName(motherName);
        s.setPrimaryPhone(primaryPhone);
        s.setGuardianEmail(guardianEmail);
        s.setResidentialAddress(residentialAddress);
        s.setCity(city);
        s.setState(state);
        s.setPincode(pincode);
        s.setStatus(status);
        s.setTransportFacility(transportFacility);
        s.setStudentPhoto(studentPhoto);
        s.setBirthCertificate(birthCertificate);

        // Update record using DAO
        int statusUpdate = StudentsDAO.updateStudent(s);

        if (statusUpdate > 0) {
            response.sendRedirect("students"); // Redirect back to student records list upon success
        } else {
            out.println("<h3 style='color:red;'>Sorry! Unable to update student record.</h3>");
        }
        }catch(Exception e) {
        	out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head><title>File Size Error</title>");
            out.println("<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css' rel='stylesheet'>");
            out.println("</head>");
            out.println("<body class='bg-light d-flex align-items-center justify-content-center vh-100'>");
            out.println("<div class='card border-0 shadow-sm rounded-4 p-5 text-center bg-white' style='max-width: 500px;'>");
            out.println("<h3 class='fw-bold text-danger mb-2'>File Size Too Large!</h3>");
            out.println("<p class='text-muted mb-4'>The uploaded file exceeds the maximum allowed size limit of 10MB per file. Please go back and upload a smaller file.</p>");
            
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }finally {
        out.close();
        } 

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
