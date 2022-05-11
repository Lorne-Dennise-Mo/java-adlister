<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Edit Bad"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="mx-auto text-center w-auto">
    <h1>Your <span class="badlister-txt">Bad</span> Info</h1>
    <h2>Name:</h2>
    ${bad.name}
    <br>

    <h2>Bad ID:</h2>
    ${bad.id}
    <br>

    <h2>Description:</h2>
    ${bad.description}
    <br>

    <h2>Origin:</h2>
    ${bad.origin}
</div>

<div class="mx-auto w-auto">
    <h1>Edit bad Bad</h1>

    <form action="/editbad" method="post">

        <div class="form-group">
            <input type="hidden" name="editbad" id="editbad" value="${bad.name}">

            <label for="name">Edit Name</label>
            <input id="name" name="editname" class="form-control" type="text">
        </div>

        <div class="form-group">

            <label for="description">Edit Description</label>
            <textarea id="description" name="editdescription" class="form-control" type="text"></textarea>
        </div>

        <div class="form-group">

            <label for="origin">Edit Origin</label>
            <textarea id="origin" name="editorigin" class="form-control" type="text"></textarea>
        </div>

        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
