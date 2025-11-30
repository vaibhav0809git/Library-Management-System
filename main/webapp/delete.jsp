<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.app.dao.LibraryDAO" %>
<%@ page import="com.app.model.Books" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Book</title>
</head>
<body>

<%
    String idS = request.getParameter("id");

    if(idS != null && !idS.isEmpty()) {
        int id = Integer.parseInt(idS);

        boolean status = LibraryDAO.deleteBook(id);

        if(status) {

            List<Books> list = LibraryDAO.getAllBooks();
            request.setAttribute("books", list);

          
            request.getRequestDispatcher("dashboardAdmin.jsp").forward(request, response);
            
            
        } else {
            out.println("<h3>FaileDDDD</h3>");
            
            out.println("<a href='dashboardAdmin.jsp'>Back to Dashboard</a>");
        }
    } else {
    	
    	
        out.println("<h3>Invalid Book ID</h3>");
        
        
        out.println("<a href='dashboardAdmin.jsp'>Back to Dashboard</a>");
    }
%>

</body>
</html>
