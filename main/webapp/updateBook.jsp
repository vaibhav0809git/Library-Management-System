<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.app.dao.LibraryDAO,com.app.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Book</title>

<%

Books book = LibraryDAO.getBookId(Integer.parseInt(request.getParameter("id")));
request.setAttribute("book", book);

%>

<style>
body {
    font-family: Arial, sans-serif;
    background: #f3f4f6;
    padding: 0;
    margin: 0;
}

.container {
    width: 400px;
    margin: 40px auto;
    background: #fff;
    padding: 20px 25px;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

table {
    width: 100%;
    border-collapse: collapse;
}

td {
    padding: 10px 0;
}

input[type="text"], input[type="number"] {
    width: 100%;
    padding: 8px;
    border-radius: 4px;
    border: 1px solid #ccc;
}

button {
    width: 100%;
    padding: 10px;
    background: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
    margin-top: 10px;
}

button:hover {
    background: #45a049;
}
</style>

</head>
<body>

<div class="container">
<form action="updateB.jsp" method="post">
<h2>Edit Book Details</h2>

<table>

<tr>
<td></td>
<td><input type="hidden" name="id" value="${book.id}" required > </td>

</tr>


<tr>
<td>Book Title</td>
<td><input type="text" name="title" value="${book.title }" required></td>
</tr>

<tr>
<td>Author Name</td>
<td><input type="text" name="author" value="${book.author }" required></td>
</tr>

<tr>
<td>Available Copies</td>
<td><input type="number" name="available" value="${book.available }" required></td>
</tr>

<tr>
<td></td>
<td><button type="submit">Update</button></td>
</tr>

</table>
</form>
</div>

</body>
</html>
