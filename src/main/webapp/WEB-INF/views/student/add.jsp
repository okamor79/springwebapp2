<%--
  Created by IntelliJ IDEA.
  User: Oleh R. Kaminskyi
  Date: 04.05.2018
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <h2>Add student</h2>
<form action="${pageContext.request.contextPath}/student/save" method="post">
    First name: <input type="text" name="firstname" > <br>
    Last name: <input type="text" name="lastname"><br>
    Age: <input type="text" name="age"><br>
    <input type="submit" value="Add student">
</form>

</body>
</html>
