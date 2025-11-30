<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.app.dao.LibraryDAO,java.util.*,com.app.model.Books" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%


 List<Books> list = LibraryDAO.getAllBooks();
request.setAttribute("books", list);

request.getRequestDispatcher("dashboard.jsp").forward(request, response);


%>


</body>
</html>