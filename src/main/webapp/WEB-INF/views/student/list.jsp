<%--
  Created by IntelliJ IDEA.
  User: Oleh R. Kaminskyi
  Date: 04.05.2018
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglib.jsp" %>
<!doctype html>
<html>
<head>
    <title>Title</title>
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">--%>

    <link rel="stylesheet" href="${rootURL}/resources/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<h2>List students</h2>
<table class="table table-condensed table-hover table-bordered">
    <thead class="ta">
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${studentList}" var="student">
        <tr>
            <td class="text-center">${student.id}</td>
            <td>${student.firstName}</td>
            <td>${student.lastName}</td>
            <td class="text-center">${student.age}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</div>
</body>
</html>
