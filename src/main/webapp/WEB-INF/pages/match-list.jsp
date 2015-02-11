<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Match List page</title>
        <link rel="icon" type="image/icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
    </head>
<body>
    <h1>Match List page</h1>
        <table style="text-align: center;" border="1px" cellpadding="0" cellspacing="0" >
            <thead>
                <tr>
                    <th width="25px">Match Number</th><th width="150px">Team Number</th><th width="50px">actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="match" items="${matchList}">
                    <tr>
                        <td>${match.matchNum}</td>
                        <td>${match.team}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/match/edit/${match.id}.html">Edit</a><br/>
                            <a href="${pageContext.request.contextPath}/match/delete/${match.id}.html">Delete</a><br/>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    <a href="${pageContext.request.contextPath}/">Home page</a>
</body>
</html>