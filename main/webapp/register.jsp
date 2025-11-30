<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.app.model.Student,com.app.model.Admin" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Registration</title>
</head>
<body>

<%
String ch = request.getParameter("select");
out.print("select = "+ch);
// If nothing selected
if (ch == null || ch.trim().equals("")) {
    out.println(" window.location='register.jsp' ");
}


else if ("Student".equals(ch)) {
    response.sendRedirect("registerStudent.jsp");
}


else if ("Admin".equals(ch)) {
    response.sendRedirect("registerAdmin.jsp");
}
%>

</body>
</html>
