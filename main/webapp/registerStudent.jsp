<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f2f2f2;
        margin: 0;
        padding: 0;
    }

    h2 {
        text-align: center;
        margin-top: 30px;
        color: #333;
    }

    form {
        width: 360px;
        margin: 30px auto;
        background: #fff;
        padding: 20px;
        border-radius: 6px;
        border: 1px solid #ccc;
    }

    table {
        width: 100%;
    }

    td {
        padding: 8px 0;
        color: #333;
        font-size: 14px;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
        width: 95%;
        padding: 8px;
        border: 1px solid #999;
        border-radius: 4px;
        font-size: 14px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background: #4a4a4a;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 15px;
    }

    input[type="submit"]:hover {
        background: #333;
    }
</style>

</head>
<body>

<h2>Student Registration</h2>

<form action="addStudent.jsp">
<table>

<tr>
<td>Enter First Name</td>
<td><input type="text" name="fname" required></td>
</tr>

<tr>
<td>Enter Last Name</td>
<td><input type="text" name="lname" required></td>
</tr>

<tr>
<td>Enter Email</td>
<td><input type="email" name="email" required></td>
</tr>

<tr>
<td>Enter Password</td>
<td><input type="password" name="password" required></td>
</tr>

<tr>
<td>Enter PRN</td>
<td><input type="text" name="prn" required></td>
</tr>

<tr>
<td>Enter Mobile No</td>
<td><input type="text" name="mobile" required></td>
</tr>

<tr>
<td></td>
<td><input type="submit" value="Register"></td>
</tr>

</table>
</form>

</body>
</html>
