<%--
  Created by IntelliJ IDEA.
  User: Oleh Kaminskyi
  Date: 04.05.2018
  Time: 3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglib.jsp"%>

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

<%--<nav class="navbar" role="navigation">--%>
    <%--<a class="navbar-brand" href="#">Navbar</a>--%>
    <%--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">--%>
        <%--<span class="navbar-toggler-icon"></span>--%>
    <%--</button>--%>
    <%--<div class="collapse navbar-collapse" id="navbarNav">--%>
        <%--<ul class="nnavavbar-nav">--%>
            <%--<li class="nav-item">--%>
                <%--<a class="nav-link" href="${pageContext.request.contextPath}/profile">Profile</a>--%>
            <%--</li>--%>
            <%--<li class="nav-item">--%>
                <%--<a class="nav-link" href="${pageContext.request.contextPath}/student">Student</a>--%>
            <%--</li>--%>

        <%--</ul>--%>
    <%--</div>--%>
    <%--<form class="navbar-form">--%>
        <%--<div class="form-group">--%>
            <%--<input type="text" class="form-control" placeholder="Пошук..."> <button class="btn btn-success" type="submit">Шукати</button>--%>
        <%--</div>--%>
    <%--</form>--%>
<%--</nav>--%>

${nav_bar}

<div class="container">
    <form class="modal-dialog">
        <div class="form-group">
            <input type="text" name="userName" />
        </div>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</body>
</html>
