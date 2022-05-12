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
            <div class="mx-auto text-center w-auto">
                <h1>Your <span class="badlister-txt">Bad</span> Info</h1>
                <h2>Name:</h2>
                    ${bad.name}
                <br>

                <h2><span class="badlister-txt">Bad</span> ID:</h2>
                    ${bad.id}
                <br>

                <h2>Description:</h2>
                    ${bad.description}
                <br>

                <h2>Origin:</h2>
                    ${bad.origin}
            </div>


            <form action="/badview" method="POST">
                <button name="gonebad" value="${bad.name}" class="btn bg-danger text-light"><span class="badlister-txt">Bad</span>
                    go byebye?
                </button>
            </form>


            <form action="/editbad" method="get">
                <button name="editbad" value="${bad.name}" class="btn btn-success text-nowrap"> Edit <span
                        class="badlister-txt">Bad</span></button>
            </form>
        </c:if>

        <c:if test="${bad==null}">

            <div class="mx-auto text-center w-auto">
                <h1>Your <span class="badlister-txt">Bad</span> Info</h1>
                <h2>Name:</h2>
                    ${badsearch.name}
                <br>

                <h2><span class="badlister-txt">Bad</span> ID:</h2>
                    ${badsearch.id}
                <br>

                <h2>Description:</h2>
                    ${badsearch.description}
                <br>

                <h2>Origin:</h2>
                    ${badsearch.origin}
            </div>
            <form action="/badview" method="POST">
                <button type="button" name="gonebad" value="${badsearch.name}" class="btn bg-danger text-nowrap text-light" id="deletebtn"><span class="badlister-txt">Bad</span> Go Byebye?
                </button>
            </form>
            <form action="/editbad" method="Get">
                <button type="button" name="editbad" value="${badsearch.name}" class="btn bg-success text-nowrap"
                        id="editbtn"> Edit <span class="badlister-txt">Bad</span></button>
            </form>
        </c:if>

    </c:if>
    <c:if test="${delete}"><h1>Your <span class="badlister-txt">Bad</span> has been Deleted</h1></c:if>


</div>
    <a href="/profile" class="text-center">Back to Profile</a> |
    <a href="/bads/create" class="text-center">Add-a-<span class="badlister-txt">Bad</span></a>

</body>
</html>