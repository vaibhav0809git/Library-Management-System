<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.app.dao.LibraryDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Borrow Book</title>

<style>
    body{
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }

    .container{
        width: 400px;
        margin: 60px auto;
        background: #fff;
        padding: 20px 25px;
        border-radius: 8px;
        box-shadow: 0 0 8px rgba(0,0,0,0.1);
    }

    h2{
        text-align: center;
        margin-bottom: 20px;
    }

    label{
        font-size: 14px;
        display: block;
        margin-bottom: 6px;
    }

    input[type="date"]{
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    button{
        width: 100%;
        padding: 10px;
        margin-top: 15px;
        background: #1e293b;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 15px;
    }

    button:hover{
        background: #334155;
    }
</style>

</head>
<body>

<div class="container">

<%
    int id = Integer.parseInt(request.getParameter("id"));
%>

<h2>Borrow Book</h2>

<form action="borrowProcess.jsp" method="post">
    <input type="hidden" name="id" value="<%=id%>">

    <label>From Date:</label>
    <input type="date" name="fromDate" required>

    <br><br>

    <label>To Date:</label>
    <input type="date" name="toDate" required>

    <button type="submit">Confirm Borrow</button>
</form>

</div>

</body>
</html>
