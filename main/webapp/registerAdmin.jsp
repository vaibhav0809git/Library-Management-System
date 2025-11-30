<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Registration</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f5f5f5;
        padding: 30px;
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    table {
        margin: auto;
        background: white;
        padding: 20px;
        border-radius: 6px;
        box-shadow: 0px 0px 5px #ccc;
    }

    td {
        padding: 8px;
        color: #444;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
        width: 200px;
        padding: 6px;
        border: 1px solid #aaa;
        border-radius: 4px;
    }

    input[type="submit"] {
        background: #4a90e2;
        color: white;
        padding: 8px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background: #3d7ac3;
    }
</style>

</head>
<body>

<h2>Library Registration</h2>

<form action="addAdmin">
<table>

<tr>
<td>Enter First Name</td>
<td><input type="text" name="fname" placeholder="Enter the first name"></td>
</tr>

<tr>
<td>Enter Last Name</td>
<td><input type="text" name="lname" placeholder="Enter the last name"></td>
</tr>

<tr>
<td>Enter Email</td>
<td><input type="email" name="email" placeholder="Enter the email"></td>
</tr>

<tr>
<td>Enter Password</td>
<td><input type="password" name="password" placeholder="Enter the password"></td>
</tr>

<tr>
<td></td>
<td><input type="submit" name="reg" value="Register"></td>
</tr>

</table>
</form>

</body>
</html>
