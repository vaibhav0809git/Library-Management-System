<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Student Dashboard</title>

<style>
body{
    font-family: Arial, sans-serif;
    background: #f3f4f6;
    padding: 0;
    margin: 0;
}
.container{
    width: 90%;
    margin: 20px auto;
}
h2{
    text-align: center;
}

table{
    width: 100%;
    border-collapse: collapse;
    background: #fff;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}

th{
    background: #1e293b;
    color: white;
    padding: 12px;
    font-size: 16px;
}

td{
    padding: 10px 15px;
    text-align: center;
    border-bottom: 1px solid #ddd;
}

tr:hover{
    background: #f1f5f9;
}

.action-btn {
    text-decoration: none;
    padding: 6px 12px;
    border-radius: 6px;
    color: white;
    font-weight: bold;
}

.borrow-btn { background: #2563eb; }
.return-btn { background: #10b981; }
</style>

</head>
<body>

<div class="container">
    <h2>Library Books</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>Available</th>
            <th>Borrow</th>
            <th>Return</th>
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
                            <a href="borrow1.jsp?id=${b.id}" class="action-btn borrow-btn">Borrow</a>
                        </td>

                        <td>
                            <a href="return1.jsp?id=${b.id}" class="action-btn return-btn">Return</a>
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
