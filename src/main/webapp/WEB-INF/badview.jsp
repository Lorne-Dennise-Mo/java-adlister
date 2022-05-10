<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Bad Information"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container text-center">
    <h1>Your Bad Info</h1>
    <h2>${bad.name}</h2>
    <h3>${bad.id}</h3>
    <br>
    <h3>${bad.description}</h3>
    <br>
    <h3>${bad.origin}</h3>


</div>
</body>
</html>