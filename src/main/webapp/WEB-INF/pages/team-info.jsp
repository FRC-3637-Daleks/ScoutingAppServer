<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <title>Team Info</title>
    </head>
    <body>
        <h1>Team ${team.number} the ${team.name}</h1>
        <a href="${pageContext.request.contextPath}/team/list.html">View all teams</a><br/>
        <a href="${pageContext.request.contextPath}/">Home page</a>
    </body>
</html>
