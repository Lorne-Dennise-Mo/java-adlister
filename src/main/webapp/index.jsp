<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body class="homepage">
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container homepage">
    <div class="col text-light maindiv">
        <h1 class="text-center">Welcome to the <span class="badlister-txt">Badlister!</span></h1>

    <p>The Badlister is dedicated to creating a database of all known villains from all known (and unknown) existences - ranging from Saturday morning cartoon shows of old to books, video games comics and even history. Without the villain, there is rarely a plot, and this collective aims to showcase the characters we all love to hate. All are welcome to join in and contribute here, so long as edits are constructive, discussions are positive, and both are relevant to the subject of villains.</p>
    </div>
</div>
</body>
</html>
