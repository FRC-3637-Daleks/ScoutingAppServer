<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE HTML>
<%! 
    public static int check(String arg) {
        int num = 1;
        if (arg == null || arg == "") {
            num = 1;
        } else if (arg.matches("[-+]?\\d*\\.?\\d+")){
            num = Integer.parseInt(arg);
        } else {
            num = 1;
        }
        return num;
    }
%>
<c:set var="teamNum" value='<%= check(request.getParameter("teamNum")) %>' />
<c:set var="matchNum" value='<%= check(request.getParameter("matchNum")) %>' />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Match Input</title>
        <link rel="icon" type="image/icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style.css">
    </head>
    <body>
        <img src="${pageContext.request.contextPath}/resources/daleks_banner.jpg" alt="Hunterdon Central">
        <img src="${pageContext.request.contextPath}/teamPics/${teamNum}.jpg" alt="Hunterdon Central" onError="this.src='${pageContext.request.contextPath}/resources/placeholder.jpg';" id="robotPic">
        <hr>
        <div class="heading"><div id="back"><button onclick="window.location = '${pageContext.request.contextPath}/input/schedule.html'">&#x2190; Back</button></div>Team: ${teamNum} Match: ${matchNum}</div> 
        <hr>
        <form:form method="POST" commandName="match" action="${pageContext.request.contextPath}/input/create.html">
            <form:hidden path="matchNum" value="${matchNum}" />
            <form:hidden path="team" value="${teamNum}" />
            <table id="input" class="input">
                <tr>
                    <th colspan="2" class="large">Match Input</th>
                </tr>
                <tr>
                    <td class="medium">Start Position</td>
                    <td>
                        Left, middle, and right are in relation to the drivers of the team you are scouting<br/>
                        Robot starts at left yellow tote<form:checkbox path="startTL" /><br/>
                        Robot starts at middle yellow tote<form:checkbox path="startTM" /><br/>
                        Robot starts at right yellow tote<form:checkbox path="startTR" /><br/>
                        Robot starts at left side of landfill<form:checkbox path="startLL" /><br/>
                        Robot starts in middle of landfill<form:checkbox path="startLM" /><br/>
                        Robot starts at right side of landfill<form:checkbox path="startLR" />
                    </td>
                </tr>
                <tr>
                    <td class="medium">Autonomous</td>
                    <td>
                        Check all that apply<br/>
                        Robot moves forward during auton<form:checkbox path="autoRobot" /><br/>
                        Robot moves tote during auton<form:checkbox path="autoTote" /><br/>
                        Robot moves can during auton<form:checkbox path="autoCan" />
                    </td>
                </tr>
                <tr>
                    <td class="medium">Play Style</td>
                    <td>
                        Check all that apply<br/>
                        Robot works well at the human station<form:checkbox path="styleHS" /><br/>
                        Robot places cans on top of existing stacks<form:checkbox path="styleTopper" /><br/>
                        Robot puts litter in cans<form:checkbox path="styleLitterCan" /><br/>
                        Robot works well at landfill<form:checkbox path="styleLandfill" /><br/>
                        Human player throws litter<form:checkbox path="styleThrow" /><br/>
                        Robot picks up only one or two totes at a time to add to stack<form:checkbox path="styleSingleStack" /><br/>
                        Robot makes entire stack in one shot<form:checkbox path="styleMakeAtOnce" /><br/>
                        Robot takes cans from the step<form:checkbox path="styleCanFromStep" />
                    </td>
                </tr>
                <tr>
                    <td class="medium">Cooperitition</td>
                    <td>
                        Robot puts yellow tote on step<form:checkbox path="coopTote" /><br/>
                        Write number of totes robot puts on step<form:input path="coopStep" style="height: 16px; width: 50px; background-color: white; text-align: center;" maxlength="3"/><!--<br/>
                        *if the robot puts no totes on the step type 0 or leave blank-->
                    </td>
                </tr>
                <tr>
                    <td class="medium">Problems</td>
                    <td>
                        Check all that apply<br/>
                        Robot knocked a stack over<form:checkbox path="knockStack" /><br/>
                        Robot stopped working or did not work<form:checkbox path="dead" /><br/>
                        Robot is unstable or wobbly<form:checkbox path="unstable" /><br/>
                        Robot tipped over<form:checkbox path="tip" />
                    </td>
                </tr>
                <tr>
                    <td class="medium">Post Game</td>
                    <td>
                        Comments<form:textarea path="comment" style="height: 30px; width: 400px; background-color: white" placeholder="Enter Comments Here" maxlength="255"></form:textarea><br>
                        Score<form:input path="score"  style="height: 16px; width: 50px; background-color: white; text-align: center;" maxlength="3" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Submit"></td>
                </tr>
            </table>
        </form:form>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-2.1.3.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/main.js"></script>
    </body>
</html>