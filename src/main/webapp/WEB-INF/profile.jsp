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
        <h1 class="mb-3">Welcome,<span class="badlister-txt"> ${sessionScope.user.username}
            </span>!</h1>
        <c:forEach var="bad" items="${baddies}">
        <div class="mb-4 col">
           <span class="badlister-txt">
               <h2>${bad.name}</h2>
           </span>
            <p>${bad.description}</p>
            <p>${bad.origin}</p>
            <form action="/badview" method="GET">
                <button class="btn btn-success text-nowrap" name="badname" value="${bad.name}">view bad</button>
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
        <a href="/bads/create">Add-a-<span class="badlister-txt">Bad</span></a> |
    <a href="/bads">See the <span class="badlister-txt">Bad</span>s</a>

</body>
</html>
