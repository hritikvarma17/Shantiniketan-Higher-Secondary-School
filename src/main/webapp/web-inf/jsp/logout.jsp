<%
    // Invalidate session to log out user securely
    if (session != null) {
        session.invalidate();
    }
    response.sendRedirect("log_in.html");
%>