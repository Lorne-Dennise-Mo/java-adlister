<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Add a new Bad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Add a new Bad</h1>
        <form action="/bads/create" method="post">
            <div class="form-group">
                <label for="name">name</label>
                <input id="name" name="name" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="origin">Origin</label>
                <textarea id="origin" name="origin" class="form-control" type="text">
                </textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
    <a href="/profile">Back to Profile</a>
    <a href="/bads">See the Bads</a>
    <a href="/bads/create">Add another Bad</a>

</body>
</html>
