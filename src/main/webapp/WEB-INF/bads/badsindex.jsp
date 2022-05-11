<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the Bads!</h1>

    <c:forEach var="bad" items="${baddies}">
        <div class="col-md-6">
            <h2>${bad.name}</h2>
            <p>${bad.description}</p>
            <p>${bad.origin}</p>
            <form action="/badview" method="GET">
            <button name="badname" value="${bad.name}" class="btn btn-success text-nowrap">view bad</button>
            </form>
        </div>
    </c:forEach>
</div>

<a href="/profile">Back to Profile</a>
<a href="/bads/create">Add another Bad</a>

</body>
</html>
