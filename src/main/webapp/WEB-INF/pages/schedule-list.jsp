<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Schedule List page</title>
    </head>
<body>
    <h1>Match List page</h1>
        <table style="text-align: center;" border="1px" cellpadding="0" cellspacing="0" >
            <thead>
                <tr>
                    <th width="25px">Match Number</th><th width="150px">R1</th><th width="150px">R2</th><th width="150px">R3</th><th width="150px">B1</th><th width="150px">B2</th><th width="150px">B3</th><th width="50px">actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="schedule" items="${scheduleList}">
                    <tr>
                        <td>${schedule.matchNum}</td>
                        <td>${schedule.r1}</td>
                        <td>${schedule.r2}</td>
                        <td>${schedule.r3}</td>
                        <td>${schedule.b1}</td>
                        <td>${schedule.b2}</td>
                        <td>${schedule.b3}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/schedule/edit/${schedule.matchNum}.html">Edit</a><br/>
                            <a href="${pageContext.request.contextPath}/schedule/delete/${schedule.matchNum}.html">Delete</a><br/>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    <a href="${pageContext.request.contextPath}/">Home page</a>
</body>
</html>