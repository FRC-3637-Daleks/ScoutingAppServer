<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE HTML>
<%  
    int teamNum, teamName, matchNum;
    String inputTeamNum = request.getParameter("teamNum");
    String inputTeamName = request.getParameter("teamName");
    String inputMatchNum = request.getParameter("matchNum");
    if (inputTeamNum == null || inputTeamNum == "") {
        teamNum = 1;
    } else if (inputTeamNum.matches("[-+]?\\d*\\.?\\d+")){
        teamNum = Integer.parseInt(inputTeamNum);
    } else {
        teamNum = 1;
    }
    if (inputTeamName == null || inputTeamName == "") {
        teamName = 1;
    } else if (inputTeamName.matches("[-+]?\\d*\\.?\\d+")){
        teamName = Integer.parseInt(inputTeamName);
    } else {
        teamName = 1;
    }
    if (inputMatchNum == null || inputMatchNum == "") {
        matchNum = 1;
    } else if (inputMatchNum.matches("[-+]?\\d*\\.?\\d+")){
        matchNum = Integer.parseInt(inputMatchNum);
    } else {
        matchNum = 1;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Match Input</title>
        <link rel="icon" type="image/icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/style.css">
    </head>
    <body>
        <div style="height: 177px"> 
            <center><img src="${pageContext.request.contextPath}/resources/daleks_banner.jpg" alt="Hunterdon Central"></center>
        </div>

        <img src="${pageContext.request.contextPath}/resources/daleks_banner.jpg" alt="Hunterdon Central" id="robotPic">

        <hr>
        <center><h1><font color="black">Team: <%= teamNum %> Match: <%= matchNum %></font></h1></center>
        <br>
        <div><center><b><font color="black" size=+2>Team Match History</font></b></center>
        <br>  
        <table align="center" style="width: 85%" border="3" cellpadding="5" cellspacing="10">    
                <tr>
                    <th colspan="7"><u>Autonomous</u></th>
                    <th colspan="21"><u>Teleop</u></th>
                    <th colspan="8"><u>Post_Game</u></th>
                </tr>
                <tr>
                    <th class="col1"><u>Robot_Moves</u></th>
                    <th class="col1"><u>Goes_for_Bin</u></th>
                    <th class="col1"><u>#Totes</u></th> 
                    <th class="col1"><u>Vision_Tracking</u></th>
                    <th class="col1"><u>Dead_Reckoning</u></th>
                    <th class="col1"><u>Over_Bump</u></th>
                    <th class="col1"><u>Around_Bump</u></th>
                    <th class="col1"><u>Stable_Over_Platform</u></th>
                    <th class="col1"><u>Speed/Agility</u></th>
                    <th class="col1"><u>Drops_when_Driving</u></th>
                    <th class="col1"><u>Knocks_Stacks</u></th>
                    <th class="col1"><u>Puts_into_Container</u></th>
                    <th class="col1"><u>Pick_up?</u></th>
                    <th class="col1"><u>Push</u></th>
                    <th class="col1"><u>#of_Totes_Carried</u></th>
                    <th class="col1"><u>Different_Orientations</u></th>
                    <th class="col1"><u>Pick_up/Flip_Upside_Down</u></th>
                    <th class="col1"><u>Place_On_Top</u></th>
                    <th class="col1"><u>Pick_Up_Speed</u></th>
                    <th class="col1"><u>Totes_From_Human</u></th>
                    <th class="col1"><u>Litter_From_Human</u></th>
                    <th class="col1"><u>Human_Thrower</u></th>
                    <th class="col1"><u>Able_to_Pick Up</u></th>
                    <th class="col1"><u>Set_Do_Height</u></th>
                    <th class="col1"><u>Takes_From_Step</u></th>
                    <th class="col1"><u>Pick_Up_Speed</u></th>
                    <th class="col1"><u>Different_Orientations</u></th>
                    <th class="col1"><u>Remove_From_Step_W/Put_Clear_Landfill?</u></th>
                    <th class="col1"><u>Puts_Yellow_Tote_On_Step</u></th>
                    <th class="col1"><u>Yellow_Stack_On_Step</u></th>
                    <th class="col1"><u>Robot_Fails_To_Function</u></th>
                    <th class="col1"><u>Fouls_A_Lot</u></th>
                    <th class="col1"><u>Dead_On_Arrival</u></th>
                    <th class="col1"><u>Tips_Over</u></th>
                    <th class="col1"><u>Comm_Error</u></th>
                    <th class="col1"><u>Poor_Construction_Integrity</u></th>
                </tr>
                <c:forEach var="match" items="${matchList}">
                    <tr>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.autoRobot == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.autoStep == true}">checked</c:if>></td>
                        <td>${match.autoStack}</td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.autoVision == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.autoDeadRec == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.autoOverBump == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.autoAroundBump == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.overBump == true}">checked</c:if>></td>
                        <td>${match.speed}</td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.dropTote == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.knockStack == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.litterCan == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.litterUp == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.litterPush == true}">checked</c:if>></td>
                        <td>${match.totesCarried}</td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.diffOps == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.upOrFlip == true}">checked</c:if>></td>
                        <td>${match.onTopOf}</td>
                        <td>${match.pickUpSpeed}</td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.hpTotes == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.hpLitter == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.hpThrow == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.canUp == true}">checked</c:if>></td>
                        <td>${match.downHeight}</td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.takeCanFromStep == true}">checked</c:if>></td>
                        <td>${match.canUpSpeed}</td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.canDiffOps == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.canFromStepNoFill == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.coopTote == true}">checked</c:if>></td>
                        <td>${match.coopStep}</td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.failFunction == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.fouls == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.deadOnArrive == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.tip == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.commError == true}">checked</c:if>></td>
                        <td><input type="checkbox" onClick="return false"<c:if test="${match.shotty == true}">checked</c:if>></td>
                    </tr>
                </c:forEach>
        </table>
        <br>
        <hr>
        <center><b><font color="black" size=+2>Match Input</font></b>
        <br>
        <br>
        <form:form method="POST" commandName="match" action="${pageContext.request.contextPath}/match/create.html">
            <form:hidden path="matchNum" value="<%= matchNum %>" />
            <form:hidden path="team" value="<%= teamNum %>" />
            <center>
                <fieldset style="width: 85%">
                <table align="center" style="width: 100%; table-layout:fixed;" border="3" cellpadding="5 " cellspacing="10" class="auto1">
                    <thead>
                        <tr>
                            <th class="col2">Autonomous</th>
                        </tr>
                    </thead>    
                    <tbody>
                        <tr>
                            <td class="col3"><form:checkbox path="autoRobot" />Robot Moves</td>
                            <td class="col3"><form:checkbox path="autoStep" />Goes For Bin On Step</td>
                        </tr>
                        <tr>
                           <th>Tote</th>
                           <th>Mode</th>
                        </tr>
                        <tr>
                            <td>Number Stacked: <form:select path="autoStack">
                                <form:option value="0" label="0"/>0
                                <form:option value="1" label="1"/>
                                <form:option value="2" label="2"/>
                                <form:option value="3" label="3"/>
                           </form:select></td>
                           <td class="col3"><form:checkbox path="autoOverBump" />Over Bump</td>
                        </tr>
                        <tr>
                            <td class="col3"><form:checkbox path="autoVision" />Vision Tracking</td>
                            <td class="col3"><form:checkbox path="autoAroundBump" />Around Bump</td>
                        </tr>
                        <tr>
                            <td class="col3"><form:checkbox path="autoDeadRec" />Dead Reckoning</td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
                <table align="center" style="width: 100%" border="3" cellpadding="5 " cellspacing="10" class="auto1">   
                    <thead>    
                        <tr>
                            <th class="col2">Teleop</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="col4">Driving and Stability</th>
                            <th>Totes Handling</th>
                            <th>Can Handling</th>
                        </tr>
                        <tr>
                            <td class="check"><form:checkbox path="overBump" />Over Platform?</td>
                            <td># of Totes Carried: <form:select path="totesCarried">
                                <form:option value="0" label="0"/>0
                                <form:option value="1" label="1"/>
                                <form:option value="2" label="2"/>
                                <form:option value="3" label="3"/>
                                <form:option value="4" label="4"/>
                                <form:option value="5" label="5"/>
                                <form:option value="6" label="6"/>
                                <form:option value="7" label="7"/>
                                <form:option value="8" label="8"/>
                            </form:select></td>
                            <td class="check"><form:checkbox path="dropTote" />Able to Pick Up?</td>
                        </tr>
                        <tr>
                            <td>Speed/Agility Rating (More=Better): <form:select path="speed">
                                <form:option value="1" label="1"/>
                                <form:option value="2" label="2"/>
                                <form:option value="3" label="3"/>
                            </form:select></td>
                            <td class="check"><form:checkbox path="diffOps" />Different Orientations?</td>
                            <td>Set Down Height: <form:select path="downHeight">
                                <form:option value="0" label="0"/>
                                <form:option value="1" label="1"/>
                                <form:option value="2" label="2"/>
                                <form:option value="3" label="3"/>
                                <form:option value="4" label="4"/>
                                <form:option value="5" label="5"/>
                                <form:option value="6" label="6"/>
                                <form:option value="7" label="7"/>
                                <form:option value="8" label="8"/>
                            </form:select></td>
                        </tr>
                        <tr>
                            <td class="check"><form:checkbox path="dropTote" />Drops When Driving?</td>
                            <td class="check"><form:checkbox path="upOrFlip" />Pick Up and/or Flip Upside Down?</td>
                            <td class="check"><form:checkbox path="takeCanFromStep" />Takes From Step?</td>
                        </tr>
                        <tr>
                            <td class="check"><form:checkbox path="knockStack" />Knocks Over Stacks?</td>
                            <td>Place On Top of: <form:select path="onTopOf">
                                <form:option value="0" label="0"/>
                                <form:option value="1" label="1"/>
                                <form:option value="2" label="2"/>
                                <form:option value="3" label="3"/>
                                <form:option value="4" label="4"/>
                                <form:option value="5" label="5"/>
                                <form:option value="6" label="6"/>
                                <form:option value="7" label="7"/>
                                <form:option value="8" label="8"/>
                            </form:select></td>
                            <td>Pick Up Speed: <form:select path="pickUpSpeed">
                                <form:option value="1" label="1"/>
                                <form:option value="2" label="2"/>
                                <form:option value="3" label="3"/>
                            </form:select></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>Can Pick Up Speed: <form:select path="canUpSpeed">
                                <form:option value="0" label="0"/>0
                                <form:option value="1" label="1"/>
                                <form:option value="2" label="2"/>
                                <form:option value="3" label="3"/>
                           </form:select></td>
                            <td class="check"><form:checkbox path="canDiffOps" />Can Different Orientations?</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td class="check"><form:checkbox path="canFromStepNoFill" />Remove From Step w/out Clear Landfill?</td>
                        </tr>
                        <tr>
                            <th>Litter Handling</th>
                            <th>Human Player</th>
                            <th></th>
                        </tr>
                        <tr>
                            <td class="check"><form:checkbox path="litterCan" />Puts Into Container?</td>
                            <td class="check"><form:checkbox path="hpTotes" />Totes From Human Player</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="check"><form:checkbox path="litterUp" />Pick Up?</td>
                            <td class="check"><form:checkbox path="hpLitter" />Litter From Human Player</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="check"><form:checkbox path="litterPush" />Push?</td>
                            <td class="check"><form:checkbox path="hpThrow" />Human Thrower</td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
                <table align="center" style="width: 100%" border="3" cellpadding="5 " cellspacing="10" class="auto1">
                    <thead>  
                        <tr>
                            <th class="col2">Post Game</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="col3"><b>Coopertition</b></td>
                            <td><b>Problems</b></td>
                        </tr>
                        <tr>
                            <td class="check"><form:checkbox path="coopTote" />Puts Yellow Tote On Step</td>
                            <td class="check"><form:checkbox path="failFunction" />Robot Fails To Function</td>
                        </tr>
                        <tr>
                            <td>Yellow Stack On Step: <form:select path="coopStep">
                                <form:option value="0" label="0"/>
                                <form:option value="1" label="1"/>
                                <form:option value="2" label="2"/>
                                <form:option value="3" label="3"/>
                            </form:select></td>
                            <td><form:checkbox path="fouls" />Fouls A Lot</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="check"><form:checkbox path="deadOnArrive" />Dead On Arrival</td>
                        </tr>
                        <tr>
                             <td></td>
                            <td class="check"><form:checkbox path="tip" />Tips Over</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="check"><form:checkbox path="commError" />Comm Error</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="check"><form:checkbox path="shotty" />Poor Construction Integrity</td>
                        </tr>
                        <tr>
                            <th>Comments<p><textarea form="form" style="height: 30px; width: 400px; background-color: white" placeholder="Enter Comments Here" maxlength="75"></textarea></th>
                            <th>Team Score<p><textarea form="form" style="height: 16px; width: 50px; background-color: white; text-align: center; maxlength=3;"></textarea></th>
                        </tr>
                    </tbody>
                </table>
                <br>
                <input type="submit" value="Submit">
                </fieldset>
            </center>
        </form:form>  
    </body>
</html>