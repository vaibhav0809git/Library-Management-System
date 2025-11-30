<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.app.model.Student, com.app.dao.LibraryDAO" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
   
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String prn = request.getParameter("prn");
    String mobile = request.getParameter("mobile");

    // Create Student object and set values
    Student s = new Student();
    s.setFname(fname);
    s.setLname(lname);
    s.setEmail(email);
    s.setPassword(password);
    s.setPrn(prn);
    s.setMobile(mobile);

    // Call DAO to add student
    int i = LibraryDAO.addStudent(s);

    // Redirect based on result
    if (i > 0) {
        response.sendRedirect("index.html");
    } else {
        response.sendRedirect("error.jsp");
    }
%>



</body>
</html>