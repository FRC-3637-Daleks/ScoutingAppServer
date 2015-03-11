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
        <div class="heading">Pre-Match Scouting Report</div>
        <h4>Information about the other alliance teams will be:</h4>
        <table style="width: 42.5%; " border="1">
                <tr>
                    <td style="width: 325px"></td>
                    <td style="width: 130px" class="medium">Team ${opp1.team}</td>
                    <td style="width: 130px" class="medium">Team ${opp2.team}</td>
                    <td style="width: 130px" class="medium">Team ${opp3.team}</td>
                </tr>
                <tr>
                    <td style="width: 325px" class="medium">Cooperitition</td>
                    <td style="width: 130px"></td>
                    <td style="width: 130px"></td>
                    <td style="width: 130px"></td>
                </tr>
                <tr>
                    <td style="width: 325px">Places Totes</td>
                    <td style="width: 130px">${opp1.coopTote}%</td>
                    <td style="width: 130px">${opp2.coopTote}%</td>
                    <td style="width: 130px">${opp3.coopTote}%</td>
                </tr>
                <tr>
                    <td style="width: 325px">Stacks Totes</td>
                    <td style="width: 130px">${opp1.coopStep}</td>
                    <td style="width: 130px">${opp2.coopStep}</td>
                    <td style="width: 130px">${opp3.coopStep}</td>
                </tr>
                <tr>
                    <td style="width: 325px" class="medium">Gets Cans From Step</td>
                    <td style="width: 130px">${opp1.styleCanFromStep}%</td>
                    <td style="width: 130px">${opp2.styleCanFromStep}%</td>
                    <td style="width: 130px">${opp3.styleCanFromStep}%</td>
                </tr>
                <tr>
                    <td style="width: 325px" class="medium">Human Tosses Litter</td>
                    <td style="width: 130px">${opp1.styleThrow}%</td>
                    <td style="width: 130px">${opp2.styleThrow}%</td>
                    <td style="width: 130px">${opp3.styleThrow}%</td>
                </tr>
        </table>
        <br>
        <h4 align="center">Information about the teams on our alliance will be:</h4>
        <table style="width: 85%" border="1">
                <tr>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px" class="medium">Team ${ally1.team}</td>
                    <td style="width: 142.5px" class="medium">Team ${ally2.team}</td>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px" class="medium">Team ${ally1.team}</td>
                    <td style="width: 142.5px" class="medium">Team ${ally2.team}</td>
                </tr>
                <tr>
                    <td style="width: 455px" class="medium">Autonomous Mode</td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px" class="medium">Star Position</td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot Moves Forward</td>
                    <td style="width: 142.5px">${ally1.autoRobot}%</td>
                    <td style="width: 142.5px">${ally2.autoRobot}%</td>
                    <td style="width: 455px">Robot Starts by the Left Auton Tote</td>
                    <td style="width: 142.5px">${ally1.startTL}%</td>
                    <td style="width: 142.5px">${ally2.startTL}%</td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot Moves Tote</td>
                    <td style="width: 142.5px">${ally1.autoTote}%</td>
                    <td style="width: 142.5px">${ally2.autoTote}%</td>
                    <td style="width: 455px">Robot Starts by the Middle Auton Tote</td>
                    <td style="width: 142.5px">${ally2.startTM}%</td>
                    <td style="width: 142.5px">${ally2.startTM}%</td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot Moves Can</td>
                    <td style="width: 142.5px">${ally1.autoCan}%</td>
                    <td style="width: 142.5px">${ally2.autoCan}%</td>
                    <td style="width: 455px">Robot Starts by the Right Auton Tote</td>
                    <td style="width: 142.5px">${ally1.startTR}%</td>
                    <td style="width: 142.5px">${ally2.startTR}%</td>
                </tr>
                <tr>
                    <td style="width: 455px" class="medium">Play Style</td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">Robot Starts on the Left of the Landfill</td>
                    <td style="width: 142.5px">${ally1.startLL}%</td>
                    <td style="width: 142.5px">${ally2.startLL}%</td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot works well at the human station</td>
                    <td style="width: 142.5px">${ally1.styleHS}%</td>
                    <td style="width: 142.5px">${ally2.styleHS}%</td>
                    <td style="width: 455px">Robot Starts on the Left of the Landfill</td>
                    <td style="width: 142.5px">${ally1.startTR}%</td>
                    <td style="width: 142.5px">${ally2.startTR}%</td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot places cans on top of existing stacks</td>
                    <td style="width: 142.5px">${ally1.styleTopper}%</td>
                    <td style="width: 142.5px">${ally2.styleTopper}%</td>
                    <td style="width: 455px">Robot Starts it the Middle of the Landfill</td>
                    <td style="width: 142.5px">${ally1.startLM}%</td>
                    <td style="width: 142.5px">${ally2.startLM}%</td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot puts litter in cans</td>
                    <td style="width: 142.5px">${ally1.styleLitterCan}%</td>
                    <td style="width: 142.5px">${ally2.styleLitterCan}%</td>
                    <td style="width: 455px">Robot Starts on the Right of the Landfill</td>
                    <td style="width: 142.5px">${ally1.startLR}%</td>
                    <td style="width: 142.5px">${ally2.startLR}%</td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot works well at landfill</td>
                    <td style="width: 142.5px">${ally1.styleLandfill}%</td>
                    <td style="width: 142.5px">${ally2.styleLandfill}%</td>
                    <td style="width: 455px" class="medium">Copperatition</td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">Human player throws litter</td>
                    <td style="width: 142.5px">${ally1.styleThrow}%</td>
                    <td style="width: 142.5px">${ally2.styleThrow}%</td>
                    <td style="width: 455px">Robot Places a Coop Tote on the Step</td>
                    <td style="width: 142.5px">${ally1.coopTote}%</td>
                    <td style="width: 142.5px">${ally2.coopTote}%</td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot picks up one or two totes at a time to add to stack</td>
                    <td style="width: 142.5px">${ally1.styleSingleStack}%</td>
                    <td style="width: 142.5px">${ally2.styleSingleStack}%</td>
                    <td style="width: 455px">Robot Places an Average of This Many Coop Totes</td>
                    <td style="width: 142.5px">${ally1.coopStep}</td>
                    <td style="width: 142.5px">${ally2.coopStep}</td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot makes entire stack in one shot</td>
                    <td style="width: 142.5px">${ally1.styleMakeAtOnce}%</td>
                    <td style="width: 142.5px">${ally2.styleMakeAtOnce}%</td>
                    <td style="width: 455px" class="medium">Problems</td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">Robot Knocked One or More Stacks Over</td>
                    <td style="width: 142.5px">${ally1.knockStack}%</td>
                    <td style="width: 142.5px">${ally2.knockStack}%</td>
                </tr>
                <tr>
                    <td style="width: 455px">Average Score</td>
                    <td style="width: 142.5px">${ally1.score}</td>
                    <td style="width: 142.5px">${ally2.score}</td>
                    <td style="width: 455px">Robot Died or was Dead on Arrival</td>
                    <td style="width: 142.5px">${ally1.dead}%</td>
                    <td style="width: 142.5px">${ally2.dead}%</td>
                </tr>
                <tr>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">Robot in Unstable or Tends to Wobble</td>
                    <td style="width: 142.5px">${ally1.unstable}%</td>
                    <td style="width: 142.5px">${ally2.unstable}%</td>
                </tr>
                <tr>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">Robot Fell Over</td>
                    <td style="width: 142.5px">${ally1.tip}%</td>
                    <td style="width: 142.5px">${ally2.tip}%</td>
                </tr>
                <tr>
                    <td style="width: 455px">Team 1 Open Comments:</td>
                    <td style="width: 142.5px" colspan="2" height="200px">${ally1.comment}</td>
                    <td style="width: 455px">Team 2 Open Comments:</td>
                    <td style="width: 142.5px" colspan="2" height="200px">${ally2.comment}</td>
                </tr>
                <tr>
                    <td style="width: 455px; height: 20px"></td>
                    <td style="width: 142.5px; height: 20px"></td>
                    <td style="width: 142.5px; height: 20px"></td>
                    <td style="width: 455px; height: 20px"></td>
                    <td style="width: 142.5px; height: 20px"></td>
                    <td style="width: 142.5px; height: 20px"></td>
                </tr>
        </table>
    </body>
 </html>