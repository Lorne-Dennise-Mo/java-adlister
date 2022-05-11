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
    <c:if test="${delete==null}">
        <c:if test="${badsearch==null}">
    <h1>Your Bad Info</h1>
    <h2>${bad.name}</h2>
    <h3>${bad.id}</h3>
    <br>
    <h3>${bad.description}</h3>
    <br>
    <h3>${bad.origin}</h3>
    <form action="/badview" method="POST">
        <button name="gonebad" value="${bad.name}"> bad go byebye?</button>
    </form>
            <form action="/editbad" method="GET">
                <button name="editbad" value="${bad.name}"> Edit Bad</button>
            </form>
    </c:if>

        <c:if test="${bad==null}">
            <h1>Your Bad Info</h1>
            <h2>${badsearch.name}</h2>
            <h3>${badsearch.id}</h3>
            <br>
            <h3>${badsearch.description}</h3>
            <br>
            <h3>${badsearch.origin}</h3>

            <form action="/badview" method="POST">
                <button name="gonebad" value="${bad.name}"> Bad Go Byebye?</button>
            </form>
            <form action="/badedit" method="POST">
                <button name="editbad" value="${bad.name}"> Edit Bad</button>
            </form>
        </c:if>

    </c:if>
    <c:if test="${delete}"><h1>Your Bad has been Deleted</h1></c:if>

    <a href="/profile">Back to Profile</a>
    <a href="/bads/create">Add-a-Bad</a>

</div>
</body>
</html>