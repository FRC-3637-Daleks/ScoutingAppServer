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
            <tr class="report">
                <td>${schedule.matchNum}</td>
                <td class="blue"><a>${schedule.b1}</a></td>
                <td class="blue"><a>${schedule.b2}</a></td>
                <td class="blue"><a>${schedule.b3}</a></td>
                <td class="red"><a>${schedule.r1}</a></td>
                <td class="red"><a>${schedule.r2}</a></td>
                <td class="red"><a>${schedule.r3}</a></td>
            </tr>
            </c:forEach>
    </table>
    
    <script type="text/javascript">
        var msg = "${message}";
        var link;
        var url = "${pageContext.request.contextPath}/output/report.html?"
        var match = {
            vals : ["", "", "", "", "", ""],
            exclude : 0,
            color : "blue",
            findTeam : function() {
                for (var i = 0; i < 6; i++) {
                    if (this.vals[i] == "3637") {
                        this.exclude = i;
                        if (i < 3)
                            this.color = "blue";
                        else
                            this.color = "red";
                    }
                }
            }
        };
        $(document).ready(function() {
            $('tr').click(function(){
                var url = "${pageContext.request.contextPath}/output/report.html?";
                match.vals[0] = $(this).find('a:eq(3)').text();
                match.vals[1] = $(this).find('a:eq(4)').text();
                match.vals[2] = $(this).find('a:eq(5)').text();
                match.vals[3] = $(this).find('a:eq(0)').text();
                match.vals[4] = $(this).find('a:eq(1)').text();
                match.vals[5] = $(this).find('a:eq(2)').text();
                match.findTeam();
                if (match.color == "blue") {
                    if (match.exclude == 0) {
                        url += "ally1=" + match.vals[1] +
                                "&ally2=" + match.vals[2];
                    } else if (match.exclude == 1) {
                        url += "ally1=" + match.vals[0] +
                                "&ally2=" + match.vals[2];
                    } else if (match.exclude == 2) {
                        url += "ally1=" + match.vals[0] +
                                "&ally2=" + match.vals[1];
                    }
                    url += "&opp1=" + match.vals[3] + 
                            "&opp2=" + match.vals[4] + 
                            "&opp3=" + match.vals[5];
                } else {
                    if (match.exclude == 3) {
                        url += "ally1=" + match.vals[4] +
                                "&ally2=" + match.vals[5];
                    } else if (match.exclude == 4) {
                        url += "ally1=" + match.vals[3] +
                                "&ally2=" + match.vals[5];
                    } else if (match.exclude == 5) {
                        url += "ally1=" + match.vals[3] +
                                "&ally2=" + match.vals[4];
                    }
                    url += "&opp1=" + match.vals[0] + 
                            "&opp2=" + match.vals[1] + 
                            "&opp3=" + match.vals[2];
                }
                window.location = url;
            });
        });
        if (msg !== "") {
            alert(msg);
        }
    </script>
</body>
</html>