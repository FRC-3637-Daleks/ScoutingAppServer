<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <link rel="icon" type="image/icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style.css">
        <title>Team 3637 Scouting App</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <img src="${pageContext.request.contextPath}/resources/daleks_banner.jpg" alt="Hunterdon Central">
        <hr>
        <div class="heading"><div id="back"><button onclick="window.location = '${pageContext.request.contextPath}/output/selectTeam.html'">&#x2190; Back</button></div>Team Scouting Report</div>
        <table style="width: 85%" border="1">
                <tr>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px" class="medium">Team ${team.team}</td>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px" class="medium">Team ${team.team}</td>
                </tr>
                <tr>
                    <td style="width: 455px" class="medium">Autonomous Mode</td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px" class="medium">Start Position</td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot Moves Forward</td>
                    <td style="width: 142.5px">${team.autoRobot}%</td>
                    <td style="width: 455px">Robot Starts by the Left Auton Tote</td>
                    <td style="width: 142.5px">${team.startTL}</td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot Moves Tote</td>
                    <td style="width: 142.5px">${team.autoTote}%</td>
                    <td style="width: 455px">Robot Starts by the Middle Auton Tote</td>
                    <td style="width: 142.5px">${ally2.startTM}</td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot Moves Can</td>
                    <td style="width: 142.5px">${team.autoCan}%</td>
                    <td style="width: 455px">Robot Starts by the Right Auton Tote</td>
                    <td style="width: 142.5px">${team.startTR}</td>
                </tr>
                <tr>
                    <td style="width: 455px" class="medium">Play Style</td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">Robot Starts on the Left of the Landfill</td>
                    <td style="width: 142.5px">${team.startLL}</td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot works well at the human station</td>
                    <td style="width: 142.5px">${team.styleHS}%</td>
                    <td style="width: 455px">Robot Starts it the Middle of the Landfill</td>
                    <td style="width: 142.5px">${team.startLM}</td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot places cans on top of existing stacks</td>
                    <td style="width: 142.5px">${team.styleTopper}%</td>
                    <td style="width: 455px">Robot Starts on the Right of the Landfill</td>
                    <td style="width: 142.5px">${team.startLR}</td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot puts litter in cans</td>
                    <td style="width: 142.5px">${team.styleLitterCan}%</td>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot works well at landfill</td>
                    <td style="width: 142.5px">${team.styleLandfill}%</td>
                    <td style="width: 455px" class="medium">Copperatition</td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">Human player throws litter</td>
                    <td style="width: 142.5px">${team.styleThrow}%</td>
                    <td style="width: 455px">Robot Places a Coop Tote on the Step</td>
                    <td style="width: 142.5px">${team.coopTote}%</td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot picks up one or two totes at a time to add to stack</td>
                    <td style="width: 142.5px">${team.styleSingleStack}%</td>
                    <td style="width: 455px">Robot Places an Average of This Many Coop Totes</td>
                    <td style="width: 142.5px">${team.coopStep}</td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot makes entire stack in one shot</td>
                    <td style="width: 142.5px">${team.styleMakeAtOnce}%</td>
                    <td style="width: 455px" class="medium">Problems</td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">Robot Knocked One or More Stacks Over</td>
                    <td style="width: 142.5px">${team.knockStack}%</td>
                </tr>
                <tr>
                    <td style="width: 455px">Average Score</td>
                    <td style="width: 142.5px">${team.score}</td>
                    <td style="width: 455px">Robot Died or was Dead on Arrival</td>
                    <td style="width: 142.5px">${team.dead}%</td>
                </tr>
                <tr>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">Robot is Unstable or Tends to Wobble</td>
                    <td style="width: 142.5px">${team.unstable}%</td>
                </tr>
                <tr>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">Robot Fell Over</td>
                    <td style="width: 142.5px">${team.tip}%</td>
                </tr>
                <tr>
                    <td style="width: 455px">Open Comments:</td>
                    <td style="width: 142.5px" colspan="3" height="200px">${team.comment}</td>
                </tr>
        </table>
    </body>
 </html>