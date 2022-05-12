<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Bads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container mx-auto mb-5">
    <h1 class="mb-3">Here Are all the <span class="badlister-txt">Bads!</span></h1>

    <c:forEach var="bad" items="${baddies}">
        <div class="mb-4 col">
            <h2 class="badlister-txt">${bad.name}</h2>
            <p>${bad.description}</p>
            <p>${bad.origin}</p>
            <form action="/badview" method="GET">
            <button name="badname" value="${bad.name}" class="btn btn-success text-nowrap">view bad</button>
            </form>
        </div>
    </c:forEach>
</div>

<a href="/profile">Back to Profile</a> |
<a href="/bads/create">Add another Bad</a>

</body>
</html>
