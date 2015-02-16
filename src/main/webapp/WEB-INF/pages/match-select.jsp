<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Schedule List page</title>
        <link rel="icon" type="image/icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
    </head>
<body bgcolor="#D4D4D4">
    <center>
        <div style="height: 177px">   
        <center><img src="daleks_banner.jpg" alt="Hunterdon Central"></center>
        </div>
        <hr>
        <h1 align="center">Match List page</h1>
        <table style="text-align: center;" border="1px" cellpadding="0" cellspacing="0" >
            <thead>
                <tr>
                    <th width="25px">Match Number</th>
                    <th width="150px">R1</th>
                    <th width="150px">R2</th>
                    <th width="150px">R3</th>
                    <th width="150px">B1</th>
                    <th width="150px">B2</th>
                    <th width="150px">B3</th>
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
                    </tr>
                </c:forEach>
            </tbody>
        </table></center>
    <br>
    <center><a href="${pageContext.request.contextPath}/">Home page</a></center>
</body>
</html>