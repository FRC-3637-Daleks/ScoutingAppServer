<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Home page</title>
</head>
<body>
<h1>Home page</h1>
<p>
Welcome to "Scouting application".<br/>
<i>${message}</i><br/>
<a href="${pageContext.request.contextPath}/match/create.html">Create a new match</a><br/>
<a href="${pageContext.request.contextPath}/match/list.html">View all matches</a><br/><br/>
<a href="${pageContext.request.contextPath}/team/create.html">Create a new team</a><br/>
<a href="${pageContext.request.contextPath}/team/list.html">View all teams</a><br/><br/>
<a href="${pageContext.request.contextPath}/schedule/create.html">Create a new schedule</a><br/>
<a href="${pageContext.request.contextPath}/schedule/list.html">View schedule</a><br/>
<a href="${pageContext.request.contextPath}/wholeSchedule/create.html">Create a new whole schedule</a><br/><br/>
</p>
</body>
</html>