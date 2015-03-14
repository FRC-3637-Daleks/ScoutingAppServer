<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Home page</title>
        <link rel="icon" type="image/icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style.css">
    </head>
    <body>
    	<center>
            <i>${message}</i>
            <div>
                <img src="${pageContext.request.contextPath}/resources/daleks_banner.jpg" alt="Team 3637 the Daleks - Hunterdon Central R.H.S."><br/>
                <button type="button" onClick="window.location.href='${pageContext.request.contextPath}/input/schedule.html'" id="start">Start Scouting &#x2192;</button>
            </div>
        </center>
    </body>
</html>