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
        <table id="list">
            <tr>
                <td><h1>Page List</h1></td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/match/create.html">Create a new match</a></td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/match/list.html">View all matches</a></td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/team/create.html">Create a new team</a></td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/team/list.html">View all teams</a></td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/schedule/create.html">Create a new match in schedule</a></td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/schedule/list.html">View schedule</a></td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/wholeSchedule/create.html">Create a new schedule</a></td>
            </tr>
        </table>
    </body>
</html>