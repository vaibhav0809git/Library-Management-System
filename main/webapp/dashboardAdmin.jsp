<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Dashboard</title>

<style>
body{
    font-family: Arial, sans-serif;
    background: #eef1f4;
    margin: 0;
    padding: 0;
}

.container{
    width: 90%;
    margin: 25px auto;
}

h2{
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

.add-btn {
    background: #2563eb;
    color: #fff;
    padding: 8px 14px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-bottom: 15px;
    float: right;
}

.add-btn:hover{
    background: #1d4ed8;
}

table{
    width: 100%;
    border-collapse: collapse;
    background: white;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 3px 10px rgba(0,0,0,0.1);
}

th{
    background: #1f2937;
    color: white;
    padding: 12px;
    font-size: 15px;
}

td{
    padding: 10px;
    border-bottom: 1px solid #ddd;
    text-align: center;
}

tr:hover{
    background: #f6f7f9;
}

.action-btn{
    padding: 6px 10px;
    border-radius: 5px;
    color: white;
    text-decoration: none;
    font-size: 14px;
}

.edit-btn{ background: #0ea5e9; }
.delete-btn{ background: #dc2626; }

.edit-btn:hover{ background: #0284c7; }
.delete-btn:hover{ background: #b91c1c; }
</style>

</head>
<body>

<div class="container">
    <h2>Library Books</h2>

    <form action="addBook.jsp">
        <button type="submit" class="add-btn">Add Book</button>
    </form>

    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>Available</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <c:choose>
            <c:when test="${not empty books}">
                <c:forEach var="b" items="${books}">
                    <tr>
                        <td>${b.id}</td>
                        <td>${b.title}</td>
                        <td>${b.author}</td>
                        <td>${b.available}</td>

                        <td>
                            <a class="action-btn edit-btn" href="updateBook.jsp?id=${b.id}">
                                Edit
                            </a>
                        </td>

                        <td>
                            <a class="action-btn delete-btn" href="delete.jsp?id=${b.id}">
                                Delete
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </c:when>

            <c:otherwise>
                <tr>
                    <td colspan="6">No Books Found</td>
                </tr>
            </c:otherwise>
        </c:choose>
    </table>
</div>

</body>
</html>
