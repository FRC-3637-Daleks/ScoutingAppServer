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
                    <td style="width: 325px"><b>Gets Cans From Shelf During Autonomous</b></td>
                    <td style="width: 130px">${opp1.takeCanFromStep}%</td>
                    <td style="width: 130px">${opp2.takeCanFromStep}%</td>
                    <td style="width: 130px">${opp3.takeCanFromStep}%</td>
                </tr>
                <tr>
                    <td style="width: 325px"><b>Human Tosses Litter</b></td>
                    <td style="width: 130px">${opp1.hpThrow}%</td>
                    <td style="width: 130px">${opp2.hpThrow}%</td>
                    <td style="width: 130px">${opp3.hpThrow}%</td>
                </tr>
        </table>
        <br>
        <h4 align="center">Information about the teams on our alliance will be:</h4>
        <table align="center" style="width: 85%" border="3" cellpadding="5" cellspacing="10">
                <tr>
                    <td style="width: 455px"><b></b></td>
                    <td style="width: 142.5px"><b>Team ${ally1.team}</b></td>
                    <td style="width: 142.5px"><b>Team 2</b></td>
                    <td style="width: 455px"><b></b></td>
                    <td style="width: 142.5px"><b>Team ${ally1.team}</b></td>
                    <td style="width: 142.5px"><b>Team 2</b></td>
                </tr>
                <tr>
                    <td style="width: 455px"><b><u>Tele-operated Mode</u></b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px"><b><u>Autonomous Mode</u></b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px"><b>Driving & Stability</b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">- Robot Moves</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Can drive over platform</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px">- Over Bump</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Driving speed (1 = slow)</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px">- Around Bump</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Drops when driving</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px">- Tote stack</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Bumps into stacks</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px">- Uses vision recognition</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">- Dead Reckoning</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px"><b>Totes Handling (1 = slow)</b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">- Gets cans from step</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Speed of handling totes</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px"><b><u>Cooperitition Performance</u></b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">- # of totes carried</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px">- Places totes</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Pick up/flip upside down</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px">- Stacks totes</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Adds to stack of height</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px">- Tops off stack</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Different orientation okay</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px"><b><u>Human Player</u></b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px"><b>Container Handling</b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">- Tosses litter</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Picks up can</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px">- Totes from human station</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Speed of handling can</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px">- Litter from human station</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Puts on stack of height</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px"><b><u>Post-Match Information</u></b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">- Different orientation okay</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px"><b>Final Alliance Score (average)</b></td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Gets can on step</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px"><b>Issues: (count of accumulated y/n)</b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">- Remove from step w/out clear landfill</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px">- Fouls a lot</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px"><b>Litter Handling</b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">- Dead on arrival</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Can pick up</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px">- Tips out</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Can push</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px">- Fails to function</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Can put into can</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px">- Comm error</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px"><b>Human Station Interaction</b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">- Poor construction integrity</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Gets totes</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px"><b></b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">- Gets litter</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">- Human thrower</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 142.5px">${ally1.autoRobot}</td>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px; height: 20px"></td>
                    <td style="width: 142.5px; height: 20px"></td>
                    <td style="width: 142.5px; height: 20px"></td>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px"><b><u>Team 1 Open Comments:</u></b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px"><b><u>Team 2 Open Comments:</u></b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
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
