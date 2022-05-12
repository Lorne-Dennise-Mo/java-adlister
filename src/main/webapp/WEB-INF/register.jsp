<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <c:if test="${userInvalid}" >
        <div class="container">
        <h1>User input is invalid. Please try again</h1>
        </div>
    </c:if>
    <div class="container">
        <h1>Please fill in your information.</h1>

        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
<%--            <div class="form-group">--%>
<%--                <label for="email">Email</label>--%>
<%--                <input id="email" name="email" class="form-control" type="text">--%>
<%--            </div>--%>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>


<script>
	(function() {
		function turnRed() {
			let us = document.getElementById("username");
			let pw = document.getElementById("password");
			let cpw = document.getElementById("confirm_password");

			cpw.style.backgroundColor = "#ffcccb";
			pw.style.backgroundColor = "#ffcccb";
			us.style.backgroundColor = "#ffcccb";
		}
		function typingInTextBox(){
			let pw = document.getElementById("password");
			let us = document.getElementById("username");
			let cpw = document.getElementById("confirm_password");
			us.addEventListener("keydown",(e)=>{
				us.style.backgroundColor = "";
			});
			pw.addEventListener("keydown",(e)=>{
				pw.style.backgroundColor = "";
			});
			cpw.addEventListener("keydown",(e)=>{
				cpw.style.backgroundColor = "";
			});

		}

		typingInTextBox();
		<c:if test="${userInvalid}">
		turnRed();
		</c:if>
	})();
</script>
</body>


</html>
