<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <c:forEach var="bad" items="${baddies}">
        <div class="col-md-6">
            <h2>${bad.name}</h2>
            <p>${bad.description}</p>
            <p>${bad.origin}</p>
            <form action="/badview" method="GET">
                <button name="badname" value="${bad.name}">view bad</button>
            </form>
        </div>
        </c:forEach>
        <form action="/badview" method="GET">
        <div class="form-group">
            <label for="search">Search</label>
            <input id="search" name="search" class="form-control" type="text">
            <input type="submit" class="btn btn-primary btn-block" value="search">
        </div>
    </form>
    <a href="/bads/create">Add-a-Bad</a>
    <a href="/bads">See the Bads</a>

</body>
</html>
