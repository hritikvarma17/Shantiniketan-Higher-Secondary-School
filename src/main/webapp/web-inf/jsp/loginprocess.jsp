<%@page import="java.sql.*" %>
<%@page import="com.shantiniketan.dao.LoginDAO"%>
<jsp:useBean id="obj" class="com.shantiniketan.bean.LoginBean" />
<jsp:setProperty property="*" name="obj" />

<%
try {
    boolean status = LoginDAO.validate(obj);
    if (status) {
        String username = request.getParameter("username");
        session.setAttribute("user", username);

        // Fetch user email from DB to display in the profile dropdown
        try (Connection con = LoginDAO.getConn();
             PreparedStatement ps = con.prepareStatement("SELECT email, role FROM users WHERE username = ?")) {
            ps.setString(1, username);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    session.setAttribute("email", rs.getString("email"));
                    session.setAttribute("role", rs.getString("role"));
                }
            }
        } catch (Exception dbEx) {
            dbEx.printStackTrace();
        }

        response.sendRedirect("/");
        return;
    } else {
        response.sendRedirect("log_in.html?error=invalid");
        return;
    }
} catch (Exception e) {
    e.printStackTrace();
}
%>