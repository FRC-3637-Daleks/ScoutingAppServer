<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Home page</title>
        <link rel="icon" type="image/icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-2.1.3.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/script.js"></script>
    </head>
    <body>
        <i>${message}</i>
    	<center>
            <div>
                <img src="${pageContext.request.contextPath}/resources/daleks_banner.jpg" alt="Team 3637 the Daleks - Hunterdon Central R.H.S."><br/>
                <input type="button" value="Start Scouting" id="start"/>
            </div>
        </center>
    </body>
</html>