<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.app.dao.LibraryDAO, com.app.model.Books, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Book</title>
</head>
<body>

<jsp:useBean id="b" class="com.app.model.Books" scope="request" />
<jsp:setProperty name="b" property="*" />

<%

int id = Integer.parseInt(request.getParameter("id"));
String title = request.getParameter("title");
String author = request.getParameter("author");
int available = Integer.parseInt(request.getParameter("available"));

Books bb = new Books();
bb.setId(id);
bb.setTitle(title);
bb.setAuthor(author);
bb.setAvailable(available);


    boolean status = LibraryDAO.updateBook(b);

    if(status){

    	
        List<Books> list = LibraryDAO.getAllBooks();
        
        
        request.setAttribute("books", list);

     
        request.getRequestDispatcher("dashboardAdmin.jsp").forward(request, response);
        
    } else {
    	
    	
    	
        out.println("<h3>Update failed!</h3>");
        
        out.println("<a href='dashboardAdmin.jsp'>Back to Dashboard</a>");
    }
%>

</body>
</html>
