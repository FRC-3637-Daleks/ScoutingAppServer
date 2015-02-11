<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Team Info</title>
        <link rel="icon" type="image/icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
    </head>
    <body>
        <h1>Team ${team.number} the ${team.name}</h1>
        <a href="${pageContext.request.contextPath}/team/list.html">View all teams</a><br/>
        <a href="${pageContext.request.contextPath}/">Home page</a>
    </body>
</html>
