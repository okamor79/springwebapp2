<%--
  Created by IntelliJ IDEA.
  User: Oleh R. Kaminskyi
  Date: 07.05.2018
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="/WEB-INF/taglib.jsp" %>


<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form:form
        action="${rootURL}/student/add-spring-form"
        method="post"
        modelAttribute="studentModel">

    <form:input path="firstName"/> <br>
    <form:input path="lastName"/> <br>
    <form:input path="age" type="number"/> <br>

    <form:select path="country" >
    <form:options items="${countryListModel}"/>
    </form:select>


    <form:radiobuttons path="progLang" items="${programminLang}" /> <br>
    <%--<c:forEach items="${countryListMode l}" var="c">--%>
    <%--<form:option value="${c}">${c}</form:option>--%>
    <%--</c:forEach>--%>
<form:checkbox path="operationSystem" value="MS Windows" label="MS Windows"/>
<form:checkbox path="operationSystem" value="Mac OS" label="Mac OS"/>
<form:checkbox path="operationSystem" value="Linux" label="Linux"/> <br>

    <input type="submit">add student>
</form:form>

</body>
</html>
