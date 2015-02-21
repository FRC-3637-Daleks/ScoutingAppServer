<%-- 
    Document   : report
    Created on : Feb 20, 2015, 6:29:04 PM
    Author     : Zethra
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <link rel="icon" type="image/icon" href="favicon.ico">
        <link rel="stylesheet" type="text/css" href="style.css">
        <script type="text/javascript" src="jquery-2.1.3.min.js"></script>
        <script type="text/javascript" src="gui.js"></script>
        <title>Team 3637 Scouting App</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
    <center>
        <div style="height: 177px">   
        <center><img src="daleks_banner.jpg" alt="Hunterdon Central"></center>
        </div>
        <hr>
        <h2>Pre-Match Scouting Report</h2>
        <br>
        <h4 align="center">Information about the other alliance teams will be:</h4>
        <table align="center" style="width: 42.5%; text-align: center" border="3" cellpadding="5" cellspacing="10">
                <tr>
                    <td style="width: 325px"><b></b></td>
                    <td style="width: 130px"><b>Team 1</b></td>
                    <td style="width: 130px"><b>Team 2</b></td>
                    <td style="width: 130px"><b>Team 3</b></td>
                </tr>
                <tr>
                    <td style="width: 325px"><b>Cooperitition</b></td>
                    <td style="width: 130px"></td>
                    <td style="width: 130px"></td>
                    <td style="width: 130px"></td>
                </tr>
                <tr>
                    <td style="width: 325px">   - Places Totes</td>
                    <td style="width: 130px">0 to 3</td>
                    <td style="width: 130px">0 to 3</td>
                    <td style="width: 130px">0 to 3</td>
                </tr>
                <tr>
                    <td style="width: 325px">   - Stacks Totes</td>
                    <td style="width: 130px">0 to 3</td>
                    <td style="width: 130px">0 to 3</td>
                    <td style="width: 130px">0 to 3</td>
                </tr>
                <tr>
                    <td style="width: 325px"><b>Gets Cans From Shelf During Autonomous</b></td>
                    <td style="width: 130px">y/n</td>
                    <td style="width: 130px">y/n</td>
                    <td style="width: 130px">y/n</td>
                </tr>
                <tr>
                    <td style="width: 325px"><b>Human Tosses Litter</b></td>
                    <td style="width: 130px">y/n</td>
                    <td style="width: 130px">y/n</td>
                    <td style="width: 130px">y/n</td>
                </tr>
                <tr>
                    <td style="width: 325px"><b>Human Works At Station</b></td>
                    <td style="width: 130px">y/n</td>
                    <td style="width: 130px">y/n</td>
                    <td style="width: 130px">y/n</td>
                </tr>
        </table>
        <br>
        <h4 align="center">Information about the teams on our alliance will be:</h4>
        <table align="center" style="width: 85%" border="3" cellpadding="5" cellspacing="10">
                <tr>
                    <td style="width: 455px"><b></b></td>
                    <td style="width: 142.5px"><b>Team 1</b></td>
                    <td style="width: 142.5px"><b>Team 2</b></td>
                    <td style="width: 455px"><b></b></td>
                    <td style="width: 142.5px"><b>Team 1</b></td>
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
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Can drive over platform</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 455px">- Over Bump</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Driving speed (1 = slow)</td>
                    <td style="width: 142.5px">1 to 5</td>
                    <td style="width: 142.5px">1 to 5</td>
                    <td style="width: 455px">- Around Bump</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Drops when driving</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 455px">- Tote stack</td>
                    <td style="width: 142.5px">0 to 8</td>
                    <td style="width: 142.5px">0 to 8</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Bumps into stacks</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 455px">- Uses vision recognition</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                </tr>
                <tr>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">- Dead Reckoning</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                </tr>
                <tr>
                    <td style="width: 455px"><b>Totes Handling (1 = slow)</b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">- Gets cans from step</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Speed of handling totes</td>
                    <td style="width: 142.5px">SMF</td>
                    <td style="width: 142.5px">SMF</td>
                    <td style="width: 455px"><b><u>Cooperitition Performance</u></b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">- # of totes carried</td>
                    <td style="width: 142.5px">0 to 8</td>
                    <td style="width: 142.5px">0 to 8</td>
                    <td style="width: 455px">- Places totes</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Pick up/flip upside down</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 455px">- Stacks totes</td>
                    <td style="width: 142.5px">0 to 8</td>
                    <td style="width: 142.5px">0 to 8</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Adds to stack of height</td>
                    <td style="width: 142.5px">0 to 8</td>
                    <td style="width: 142.5px">0 to 8</td>
                    <td style="width: 455px">- Tops off stack</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Different orientation okay</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 455px"><b><u>Human Player</u></b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px"><b>Container Handling</b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">- Tosses litter</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Picks up can</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 455px">- Totes from human station</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Speed of handling can</td>
                    <td style="width: 142.5px">SMF</td>
                    <td style="width: 142.5px">SMF</td>
                    <td style="width: 455px">- Litter from human station</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Puts on stack of height</td>
                    <td style="width: 142.5px">0 to 8</td>
                    <td style="width: 142.5px">0 to 8</td>
                    <td style="width: 455px"><b><u>Post-Match Information</u></b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">- Different orientation okay</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 455px"><b>Final Alliance Score (average)</b></td>
                    <td style="width: 142.5px">number</td>
                    <td style="width: 142.5px">number</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Gets can on step</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 455px"><b>Issues: (count of accumulated y/n)</b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">- Remove from step w/out clear landfill</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 455px">- Fouls a lot</td>
                    <td style="width: 142.5px">number</td>
                    <td style="width: 142.5px">number</td>
                </tr>
                <tr>
                    <td style="width: 455px"><b>Litter Handling</b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">- Dead on arrival</td>
                    <td style="width: 142.5px">number</td>
                    <td style="width: 142.5px">number</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Can pick up</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 455px">- Tips out</td>
                    <td style="width: 142.5px">number</td>
                    <td style="width: 142.5px">number</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Can push</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 455px">- Fails to function</td>
                    <td style="width: 142.5px">number</td>
                    <td style="width: 142.5px">number</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Can put into can</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 455px">- Comm error</td>
                    <td style="width: 142.5px">number</td>
                    <td style="width: 142.5px">number</td>
                </tr>
                <tr>
                    <td style="width: 455px"><b>Human Station Interaction</b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 455px">- Poor construction integrity</td>
                    <td style="width: 142.5px">number</td>
                    <td style="width: 142.5px">number</td>
                </tr>
                <tr>
                    <td style="width: 455px">- Gets totes</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 455px"><b></b></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">- Gets litter</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 455px"></td>
                    <td style="width: 142.5px"></td>
                    <td style="width: 142.5px"></td>
                </tr>
                <tr>
                    <td style="width: 455px">- Human thrower</td>
                    <td style="width: 142.5px">y/n</td>
                    <td style="width: 142.5px">y/n</td>
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
        <br><br><br>
    </center>
    </body>
 </html>
