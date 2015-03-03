<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Schedule List page</title>
        <link rel="icon" type="image/icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-2.1.3.min.js"></script>
    </head>
<body bgcolor="#D4D4D4"> 
    <img src="${pageContext.request.contextPath}/resources/daleks_banner.jpg" alt="Team 3637 the Daleks">
    <hr>
    <div class="heading"><div id="back"><button onclick="window.location = '${pageContext.request.contextPath}/'">&#x2190; Back</button></div>Match List page</div>
    <table id="schedule">
            <tr>
                <th width="25px">Match Number</th>
                <th width="150px">R1</th>
                <th width="150px">R2</th>
                <th width="150px">R3</th>
                <th width="150px">B1</th>
                <th width="150px">B2</th>
                <th width="150px">B3</th>
            </tr>
            <c:forEach var="schedule" items="${scheduleList}">
            <tr>
                <td class="report">${schedule.matchNum}</td>
                <td class="blue"><a href="${pageContext.request.contextPath}/input/create.html?matchNum=${schedule.matchNum}&teamNum=${schedule.b1}">${schedule.b1}</a></td>
                <td class="blue"><a href="${pageContext.request.contextPath}/input/create.html?matchNum=${schedule.matchNum}&teamNum=${schedule.b2}">${schedule.b2}</a></td>
                <td class="blue"><a href="${pageContext.request.contextPath}/input/create.html?matchNum=${schedule.matchNum}&teamNum=${schedule.b3}">${schedule.b3}</a></td>
                <td class="red"><a href="${pageContext.request.contextPath}/input/create.html?matchNum=${schedule.matchNum}&teamNum=${schedule.r1}">${schedule.r1}</a></td>
                <td class="red"><a href="${pageContext.request.contextPath}/input/create.html?matchNum=${schedule.matchNum}&teamNum=${schedule.r2}"${schedule.r2}>${schedule.r2}</a></td>
                <td class="red"><a href="${pageContext.request.contextPath}/input/create.html?matchNum=${schedule.matchNum}&teamNum=${schedule.r3}">${schedule.r3}</a></td>
            </tr>
            </c:forEach>
    </table>
    
    <script type="text/javascript">
        var msg = "${message}";
        var link;
        $(document).ready(function() {
            $('td').click(function() {
                link = $(this).find('a:first').attr('href');
                if (typeof link === 'string') {
                    //alert(link);
                    window.location = link;
                }
            }); 
            $('.report').click(function(){
                r1 = $(this).parent().find('a:first').text();
                r2 = $(this).parent().find('a:second').text();
                r3 = $(this).parent().find('a:third').text();
                b1 = $(this).parent().find('a:forth').text();
                b2 = $(this).parent().find('a:fifth').text();
                b3 = $(this).parent().find('a:sixth').text();
                console.log(r1);
                console.log(r2);
                console.log(r3);
                console.log(b1);
                console.log(b2);
                console.log(b3);
            });
        });
        if (msg !== "") {
            alert(msg);
        }
    </script>
</body>
</html>