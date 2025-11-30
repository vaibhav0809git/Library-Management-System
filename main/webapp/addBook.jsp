<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Book</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f4f4;
        display: flex;
        justify-content: center;
        padding-top: 40px;
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .form-box {
        background: #fff;
        padding: 20px 25px;
        border: 1px solid #ccc;
        width: 350px;
        border-radius: 5px;
    }

    table {
        width: 100%;
    }

    td {
        padding: 8px 0;
    }

    input[type="text"],
    input[type="number"] {
        width: 95%;
        padding: 6px;
        border: 1px solid #bbb;
        border-radius: 3px;
    }

    button {
        padding: 8px 15px;
        border: none;
        background: #4CAF50;
        color: #fff;
        border-radius: 3px;
        cursor: pointer;
    }

    button:hover {
        background: #45a049;
    }
</style>

</head>
<body>

<div class="form-box">

<h2>Add New Book</h2>

<form action="addBook" method="post">
<table>

<tr>
<td>Book Title</td>
<td><input type="text" name="title" required></td>
</tr>

<tr>
<td>Author Name</td>
<td><input type="text" name="author" required></td>
</tr>

<tr>
<td>Available Copies</td>
<td><input type="number" name="available" required></td>
</tr>

<tr>
<td></td>
<td><button type="submit">Add Book</button></td>
</tr>

</table>
</form>

</div>

</body>
</html>
