<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Home page</title>
        <link rel="icon" type="image/icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-2.1.3.min.js"></script>
    </head>
    <body>
    	<center>
            <i>${message}</i>
            <div>
                <img src="${pageContext.request.contextPath}/resources/daleks_banner.jpg" alt="Team 3637 the Daleks - Hunterdon Central R.H.S."><br/>
                <form name="team" method="GET" action="${pageContext.request.contextPath}/output/reportTeam.html" onsubmit="return validateForm()">
                    <input type="text" id="teamNum" name="teamNum"><br/>
                    <input id="reportButton" value="Create Report" type="submit"/>
                </form>
            </div>
        </center>
        <script type="text/javascript">
            function validateForm() {
                var team = document.forms["team"]["teamNum"].value;
                if (team === null || team === "") {
                    alert("Please Enter a Team Number");
                    return false;
                }
            }
        </script>
    </body>
</html>