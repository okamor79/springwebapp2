<%--
  Created by IntelliJ IDEA.
  User: Oleh R. Kaminskyi
  Date: 07.05.2018
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form action="${rootURL}/student/edit" method="post" modelAttribute="editStudentModel">
    <form:hidden path="id" />
    First Name: <form:input path="firstName" /> <br>
    Last Name: <form:input path="lastName" /> <br>
    Age <form:input path="age" type="number"/> <br>
    <button type="submit">Edir</button>

</form:form>

</body>
</html>
