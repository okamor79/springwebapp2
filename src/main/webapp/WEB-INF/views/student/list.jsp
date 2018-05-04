<%--
  Created by IntelliJ IDEA.
  User: Oleh R. Kaminskyi
  Date: 04.05.2018
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>List students</h2>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${ studentList.id }" var="student">
        <tr>
            <td>${student.id}</td>
            <td>${student.firstName}</td>
            <td>${student.lastName}</td>
            <td>${student.age}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
