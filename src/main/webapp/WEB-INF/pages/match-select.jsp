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
        <center><img src="${pageContext.request.contextPath}/resources/daleks_banner.jpg" alt="Team 3637 the Daleks"></center>
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
                        <td><a href="${pageContext.request.contextPath}/input/create.html?matchNum=${schedule.matchNum}&teamNum=${schedule.r1}">${schedule.r1}</a></td>
                        <td><a href="${pageContext.request.contextPath}/input/create.html?matchNum=${schedule.matchNum}&teamNum=${schedule.r2}"${schedule.r2}>${schedule.r2}</a></td>
                        <td><a href="${pageContext.request.contextPath}/input/create.html?matchNum=${schedule.matchNum}&teamNum=${schedule.r3}">${schedule.r3}</a></td>
                        <td><a href="${pageContext.request.contextPath}/input/create.html?matchNum=${schedule.matchNum}&teamNum=${schedule.b1}">${schedule.b1}</a></td>
                        <td><a href="${pageContext.request.contextPath}/input/create.html?matchNum=${schedule.matchNum}&teamNum=${schedule.b2}">${schedule.b2}</a></td>
                        <td><a href="${pageContext.request.contextPath}/input/create.html?matchNum=${schedule.matchNum}&teamNum=${schedule.b3}">${schedule.b3}</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table></center>
    <br>
    <center><a href="${pageContext.request.contextPath}/">Home page</a></center>
</body>
</html>