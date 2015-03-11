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
        <table align="center" style="width: 42.5%; text-align: center" border="3" cellpadding="5" cellspacing="10">
                <tr>
                    <td style="width: 325px"><b></b></td>
                    <td style="width: 130px"><b>Team ${opp1.team}</b></td>
                    <td style="width: 130px"><b>Team ${opp2.team}</b></td>
                    <td style="width: 130px"><b>Team ${opp3.team}</b></td>
                </tr>
                <tr>
                    <td style="width: 325px"><b>Cooperitition</b></td>
                    <td style="width: 130px"></td>
                    <td style="width: 130px"></td>
                    <td style="width: 130px"></td>
                </tr>
                <tr>
                    <td style="width: 325px">   - Places Totes</td>
                    <td style="width: 130px">${opp1.coopTote}%</td>
                    <td style="width: 130px">${opp2.coopTote}%</td>
                    <td style="width: 130px">${opp3.coopTote}%</td>
                </tr>
                <tr>
                    <td style="width: 325px">   - Stacks Totes</td>
                    <td style="width: 130px">${opp1.coopStep}</td>
                    <td style="width: 130px">${opp2.coopStep}</td>
                    <td style="width: 130px">${opp3.coopStep}</td>
                </tr>
                <tr>
                    <td style="width: 325px"><b>Gets Cans From Step</b></td>
                    <td style="width: 130px">${opp1.styleCanFromStep}%</td>
                    <td style="width: 130px">${opp2.styleCanFromStep}%</td>
                    <td style="width: 130px">${opp3.styleCanFromStep}%</td>
                </tr>
                <tr>
                    <td style="width: 325px"><b>Human Tosses Litter</b></td>
                    <td style="width: 130px">${opp1.styleThrow}%</td>
                    <td style="width: 130px">${opp2.styleThrow}%</td>
                    <td style="width: 130px">${opp3.styleThrow}%</td>
                </tr>
        </table>
        <br>
        <h4 align="center">Information about the teams on our alliance will be:</h4>
        <table align="center" style="width: 85%" border="3" cellpadding="5" cellspacing="10">
                <tr>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px">Team ${ally1.team}</td>
                    <td style="width: 142.5px">Team ${ally2.team}</td>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px">Team ${ally1.team}</td>
                    <td style="width: 142.5px">Team ${ally2.team}</td>
                </tr>
                <tr>
                    <td style="width: 455px">Autonomous Mode</td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">Tele-operated Mode</td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">Robot Moves Forward</td>
                    <td style="width: 142.5px">${ally1.autoRobot}%</td>
                    <td style="width: 142.5px">${ally2.autoRobot}%</td>
                    <td style="width: 455px">Autonomous Mode</td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px"><b><u>Team 1 Open Comments:</u></b></td>
                    <td style="width: 142.5px" colspan="2" height="200px">${ally1.comment}</td>
                    <td style="width: 455px"><b><u>Team 2 Open Comments:</u></b></td>
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