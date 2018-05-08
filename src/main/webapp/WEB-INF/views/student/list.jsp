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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" crossorigin="anonymous">
</head>
<body>

${nav_bar}
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

        <c:if test="${student.id != 2}">
        <tr>
            <td class="text-center">${student.id}</td>
            <td>${student.firstName}</td>
            <td>${student.lastName}</td>
            <td class="text-center">${student.age}</td>
            <td class="text-center">${student.country}</td>
            <td class="text-center">${student.progLang}</td>
            <%--<td class="text-center">${student.operationSystem}</td>--%>
            <td>
                <c:forEach items="${student.operationSystem}" var="os">
                    ${os}<br>
                </c:forEach>
            </td>
            <td><a href="${rootURL}/student/edit/${student.id}">Edit</a></td>
        </tr>
        </c:if>
    </c:forEach>
    </tbody>
</table>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</body>
</html>
