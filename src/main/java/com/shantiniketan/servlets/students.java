package com.shantiniketan.servlets;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import com.shantiniketan.bean.StudentsBean;
import com.shantiniketan.dao.StudentsDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.format.DateTimeFormatter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author Administrator
 */
@WebServlet({"/getImage", "/students"})
public class students extends HttpServlet {

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
            out.println("<title>Servlet students</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet students at " + request.getContextPath() + "</h1>");
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
        if (idParam != null && !idParam.isEmpty()) {
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

        // Pagination setup
        String spageid = request.getParameter("page");
        int pageid = (spageid == null) ? 1 : Integer.parseInt(spageid);
        int total = 10; // Records per page

        if (pageid > 1) {
            pageid = (pageid - 1) * total + 1; // Adjusting offset logic if required by your pagination flow
        }
        // Simplified page number mapping: pass standard page number directly
        int actualPage = spageid == null ? 1 : Integer.parseInt(spageid);
        List<StudentsBean> list = null;

        // HTML Output with Bootstrap 5 Styling
        out.println("<!DOCTYPE html>");
        out.println("<html><head><title>All Student Records | Shantiniketan Higher Secondary School</title>");
        out.println("<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css' rel='stylesheet'>");
        out.println("<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css'>");
        out.println("<link rel='stylesheet' type='text/css' href='\" + request.getContextPath() + \"/style.css'>");
        out.println("</head><body class='bg-light'>");

        RequestDispatcher dispatcher = request.getRequestDispatcher("students_nav_bar");
        dispatcher.include(request, response);

        out.println("<div style='margin-top:69px;' class='container-fluid py-4 px-4'>");
        out.println("<div class='d-flex justify-content-between align-items-center mb-4'>");
        out.println("<h2 class='fw-bold text-dark'><i class='fa-solid fa-database me-2 text-warning fw-bold'></i>Students Records</h2>");

        String searchQuery = request.getParameter("searchQuery");
        if (searchQuery == null) {
            searchQuery = "";
        }
        out.println("<div class='search-container'>");
        out.println("<form action='students' method='GET'>");
        out.println("<input type='text' name='searchQuery' placeholder='Search by FName or Grade or ID' value='" + searchQuery + "'>");
        out.println("<button type='submit'>Search</button>");
        out.println("<a href='students' class='reset-btn'>Reset</a>");
        out.println("</form>");
        out.println("</div>");

        out.println("<a href='admission' class='btn btn-warning rounded-pill px-4 fw-semibold'><i class='fa-solid fa-plus me-1'></i> New Admission</a>");
        out.println("</div>");

        // Scrollable container for many columns
        out.println("<div class='card border-0 shadow-sm rounded-4'>");
        out.println("<div class='card-body p-0'>");
        out.println("<div class='table-responsive'>");
        out.println("<table class='table table-bordered table-hover align-middle text-wrap mb-0'>");
        out.println("<thead class='table-dark text-uppercase fs-7 text-center'><tr>");

        // Table Headers for every column
        out.println("<th>ID</th>");
        out.println("<th>Grade</th><th>Stream & Board</th>");
        out.println("<th>First Name</th><th>Middle Name</th><th>Last Name</th>");
        out.println("<th>DOB</th><th>Gender</th><th>Blood Group</th>");
        out.println("<th>Prev School</th><th>Prev Score</th>");
        out.println("<th>Father's Name</th><th>Mother's Name</th>");
//        out.println("<th>Phone</th><th>Email</th>");
        out.println("<th>Contact Details</th>");
        out.println("<th>Address</th>");
//        out.println("<th>City</th><th>State</th><th>Pincode</th>");
        out.println("<th>Admission Date</th><th>Status</th><th>Trans port</th>");
//        out.println("<th>Photo</th><th>Birth Cert</th>");
        out.println("<th>Images</th>");
        out.println("<th class='text-center pe-3'>Actions</th>");
        out.println("</tr></thead><tbody>");

        if (searchQuery.trim().isEmpty()) {
            list = StudentsDAO.getStudentsByPage(actualPage, total);
        } else {
            list = StudentsDAO.searchStudents(searchQuery);
        }

        for (StudentsBean e : list) {
            out.println("<tr>");
            out.println("<td class='ps-3 fw-semibold'>#" + e.getId() + "</td>");
            out.println("<td>" + e.getApplyingGrade() + "</td>");
            out.println("<td>" + (e.getSelectedStream() != null ? e.getSelectedStream()+"-" : "") + e.getCurriculumBoard() + "</td>");
//            out.println("<td>" + e.getCurriculumBoard() + "</td>");
            out.println("<td>" + e.getFirstName() + "</td>");
            out.println("<td>" + (e.getMiddleName() != null ? e.getMiddleName() : "-") + "</td>");
            out.println("<td>" + e.getLastName() + "</td>");
            out.println("<td>" + e.getDob() + "</td>");
            out.println("<td>" + e.getGender() + "</td>");
            out.println("<td>" + (e.getBloodGroup() != null ? e.getBloodGroup() : "-") + "</td>");
            out.println("<td>" + (e.getPrevSchool() != null ? e.getPrevSchool() : "-") + "</td>");
            out.println("<td>" + (e.getPrevGradeScore() != null ? e.getPrevGradeScore() : "-") + "</td>");
            out.println("<td>" + e.getFatherName() + "</td>");
            out.println("<td>" + e.getMotherName() + "</td>");
            out.println("<td>" + e.getPrimaryPhone() + " " + e.getGuardianEmail() + "</td>");
//            out.println("<td>" + e.getGuardianEmail() + "</td>");
            out.println("<td>" + e.getResidentialAddress() + ", " + e.getCity() + ", " + e.getState() + "- " + e.getPincode() + "</td>");
//            out.println("<td>" + e.getCity() + "</td>");
//            out.println("<td>" + e.getState() + "</td>");
//            out.println("<td>" + e.getPincode() + "</td>"); 

         // 1. Create the formatter
         DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");

         // 2. Format the date directly from your getter
         String formattedDate = e.getCreated_at().formatted(formatter);

         // 3. Print the HTML table cell
         out.println("<td>" + formattedDate + "</td>");
            
            String status = e.getStatus(); // Assuming getStatus() returns a String
            String badgeClass = "bg-secondary"; // Default badge color

            if (status != null) {
                switch (status.trim().toLowerCase()) {
                    case "active":
                        badgeClass = "bg-success";      // Green
                        break;
                    case "passed out":
                        badgeClass = "bg-primary";      // Blue
                        break;
                    case "transferred":
                        badgeClass = "bg-info text-dark"; // Light Blue / Cyan
                        break;
                    case "dropped out":
                        badgeClass = "bg-warning text-dark"; // Yellow / Orange
                        break;
                    case "suspended":
                        badgeClass = "bg-danger";       // Red
                        break;
                    case "inactive":
                        badgeClass = "bg-secondary";    // Gray
                        break;
                    default:
                        badgeClass = "bg-dark";         // Dark fallback
                        break;
                }
            }

            out.println("<td><span class='badge " + badgeClass + "'>" + (status != null ? status : "Unknown") + "</span></td>");
            
            out.println("<td>" + (e.isTransportFacility() ? "<span class='badge bg-success'>Yes</span>" : "<span class='badge bg-secondary'>No</span>") + "</td>");

            // Student Photo column pointing to database stream
//            out.println("<td><img src='getImage?id=" + e.getId() + "&type=photo' width='45' height='45' class='rounded-circle shadow-sm object-fit-cover border'></td>");

            // Birth Certificate column pointing to database stream
//            out.println("<td><a href='getImage?id=" + e.getId() + "&type=cert' target='_blank'><img src='getImage?id=" + e.getId() + "&type=cert' width='45' height='45' class='rounded shadow-sm object-fit-cover border'></a></td>");

            out.println("<td><img src='getImage?id=" + e.getId() + "&type=photo' width='55' height='55' class='rounded-circle shadow-sm object-fit-cover border'><img src='getImage?id=" + e.getId() + "&type=cert' width='55' height='55' class='rounded shadow-sm object-fit-cover border'></td>");
            out.println("<td class='text-center pe-3'>");
            out.println("<a href='student_edit_form?id=" + e.getId() + "' class='text-primary me-2' title='Edit'><i class='fa-solid fa-pen-to-square'></i></a>");
            out.println("<a href='student_delete_process?id=" + e.getId() + "' class='text-danger' title='Delete' onclick='return confirm(\"Are you sure?\");'><i class='fa-solid fa-trash'></i></a>");
            out.println("</td>");
            out.println("</tr>");
        }

        out.println("</tbody></table>");
        out.println("</div></div></div>");

        if (searchQuery.trim().isEmpty()) {
            // Calculate dynamic start and end pages (showing 3 page numbers at a time)
            int startPage = Math.max(1, actualPage - 1);
            int endPage = startPage + 2;

            // Pagination Controls
            out.println("<nav class='mt-4'><ul class='pagination justify-content-center'>");
            
            // Previous Button
            out.println("<li class='page-item " + (actualPage == 1 ? "disabled" : "") + "'><a class='page-link rounded-start-pill' href='students?page=" + (actualPage - 1) + "'>Previous</a></li>");
            
            // Dynamic Page Number Loop
            for (int i = startPage; i <= endPage; i++) {
                out.println("<li class='page-item " + (actualPage == i ? "active" : "") + "'><a class='page-link' href='students?page=" + i + "'>" + i + "</a></li>");
            }
            
            // Next Button
            out.println("<li class='page-item'><a class='page-link rounded-end-pill' href='students?page=" + (actualPage + 1) + "'>Next</a></li>");
            out.println("</ul></nav>");
        } else {
            out.print("<br><br><br><br><br><br><br><br><br><br><br>");
        }
        out.println("</div></body>");
        dispatcher = request.getRequestDispatcher("students_footer");
        dispatcher.include(request, response);

        out.println("</html>");
        out.close();
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
