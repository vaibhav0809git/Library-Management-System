<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.app.dao.LibraryDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Borrow Status</title>

<style>
body{
    font-family: Arial, sans-serif;
    background: #f3f4f6;
    margin: 0;
    padding: 0;
}

.container{
    width: 40%;
    margin: 60px auto;
    background: white;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    text-align: center;
}

h2{
    color: #1e293b;
}

p{
    font-size: 16px;
    color: #333;
}

a{
    text-decoration: none;
    background: #1e293b;
    color: white;
    padding: 10px 18px;
    border-radius: 8px;
    display: inline-block;
    margin-top: 20px;
}
</style>

</head>
<body>


<%
    int id = Integer.parseInt(request.getParameter("id"));
    String from = request.getParameter("fromDate");
    String to = request.getParameter("toDate");

    boolean status = LibraryDAO.borrowBook(id);
%>

<div class="container">

<% if(status){ %>

    <h2>Book Borrowed Successfully!</h2>
    <p><strong>From:</strong> <%= from %></p>
    <p><strong>To:</strong> <%= to %></p>
      <jsp:forward page="dashAfterBorrow.jsp"></jsp:forward>
  <!--   <a href="request.get">Back to Dashboard</a> -->

<% } else { %>

    <h2 style="color:red;">Failed to Borrow Book!</h2>
    <a href="dashboard.jsp">Back</a>

<% } %>

</div>

</body>
</html>
