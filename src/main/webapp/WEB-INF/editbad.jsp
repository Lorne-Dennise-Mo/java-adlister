<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Edit Bad"/>
    </jsp:include>

</head>
<body>
    <div class="col-md-6">
        <h1>Your Bad Info</h1>
        <h2>${bad.name}</h2>
        <h3>${bad.id}</h3>
        <br>
        <h3>${bad.description}</h3>
        <br>
        <h3>${bad.origin}</h3>
    </div>

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
</body>
</html>
