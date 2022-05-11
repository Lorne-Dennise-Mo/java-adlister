<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Please Log In</h1>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Log In">
            <span id="errorMSG"></span><br>
        </form>
    </div>

    <script>
		function nonExistentUser() {
			let usernotexists = document.getElementById("usernotexists");
			usernotexists.innerText = "You have made a typo, or you must register."
		}
		function errorMSG() {
			let pw = document.getElementById("password");
			let us = document.getElementById("username");
			let errorMSG = document.getElementById("errorMSG");
			pw.style.backgroundColor = "#ffcccb";
			us.style.backgroundColor = "#ffcccb";
			errorMSG.innerText = "*either password or username is not correct.";
		}
		function typingInTextBox(){
			let pw = document.getElementById("password");
			let us = document.getElementById("username");
			pw.addEventListener("keydown",(e)=>{
				pw.style.backgroundColor = "";
			});
			us.addEventListener("keydown",(e)=>{
				us.style.backgroundColor = "";
			});
		}

		typingInTextBox();
		<c:if test="${invalidAttempt}">
		errorMSG();
		</c:if>
		<c:if test="${doesNotExist}">
		nonExistentUser();
		</c:if>
    </script>
</body>
</html>
