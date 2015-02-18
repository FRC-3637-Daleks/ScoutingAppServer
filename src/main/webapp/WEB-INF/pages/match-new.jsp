<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>New Match page</title>
        <link rel="icon" type="image/icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
    </head>
    <body>
        <h1>New Match page</h1>
        <form:form method="POST" commandName="match" action="${pageContext.request.contextPath}/match/create.html" >
            <table>
                <tbody>
                    <tr>
                        <td>Match number:</td>
                        <td><form:input path="matchNum" /></td>
                        <td><form:errors path="matchNum" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Team number:</td>
                        <td><form:input path="team" /></td>
                        <td><form:errors path="team" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td><h3>Auto</h3></td>
                    </tr>
                    <tr>
                        <td>Robot Set:</td>
                        <td><form:checkbox path="autoRobot" /></td>
                        <td><form:errors path="autoRobot" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Tote Stack Set:</td>
                        <td><form:select path="autoStack">
                                <form:option value="0" label="0"/>0
                                <form:option value="1" label="1"/>
                                <form:option value="2" label="2"/>
                                <form:option value="3" label="3"/>
                           </form:select>
                        </td>
                        <td><form:errors path="autoStack" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Vision:</td>
                        <td><form:checkbox path="autoVision" /></td>
                        <td><form:errors path="autoVision" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Dead Reckoning:</td>
                        <td><form:checkbox path="autoDeadRec" /></td>
                        <td><form:errors path="autoDeadRec" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Can from Step:</td>
                        <td><form:checkbox path="autoStep" /></td>
                        <td><form:errors path="autoStep" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Over Bump:</td>
                        <td><form:checkbox path="autoOverBump" /></td>
                        <td><form:errors path="autoOverBump" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Around Bump:</td>
                        <td><form:checkbox path="autoAroundBump" /></td>
                        <td><form:errors path="autoAroundBump" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td><h3>Teleop</h3></td>
                    </tr>
                    <tr>
                        <td>Over Bump:</td>
                        <td><form:checkbox path="overBump" /></td>
                        <td><form:errors path="overBump" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Robot Speed:</td>
                        <td><form:select path="speed">
                                <form:option value="1" label="1"/>
                                <form:option value="2" label="2"/>
                                <form:option value="3" label="3"/>
                           </form:select></td>
                        <td><form:errors path="speed" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Drops Tote:</td>
                        <td><form:checkbox path="dropTote" /></td>
                        <td><form:errors path="dropTote" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Knocks Over Stack:</td>
                        <td><form:checkbox path="knockStack" /></td>
                        <td><form:errors path="knockStack" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Put Litter In Can:</td>
                        <td><form:checkbox path="litterCan" /></td>
                        <td><form:errors path="litterCan" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Pick up Litter:</td>
                        <td><form:checkbox path="litterUp" /></td>
                        <td><form:errors path="litterUp" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Pushes Litter:</td>
                        <td><form:checkbox path="litterPush" /></td>
                        <td><form:errors path="litterPush" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Number of Totes Carried:</td>
                        <td><form:select path="totesCarried">
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
                        <td><form:errors path="totesCarried" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Different Operations:</td>
                        <td><form:checkbox path="diffOps" /></td>
                        <td><form:errors path="diffOps" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Pick up or Flip tote:</td>
                        <td><form:checkbox path="upOrFlip" /></td>
                        <td><form:errors path="upOrFlip" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Size of Stack Robot can Add To:</td>
                        <td><form:select path="onTopOf">
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
                        <td><form:errors path="onTopOf" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Pick Up Speed:</td>
                        <td><form:select path="pickUpSpeed">
                                <form:option value="1" label="1"/>
                                <form:option value="2" label="2"/>
                                <form:option value="3" label="3"/>
                           </form:select></td>
                        <td><form:errors path="pickUpSpeed" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Get Totes form HP:</td>
                        <td><form:checkbox path="hpTotes" /></td>
                        <td><form:errors path="hpTotes" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Get Litter from HP:</td>
                        <td><form:checkbox path="hpLitter" /></td>
                        <td><form:errors path="hpLitter" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>HP Throws Litter:</td>
                        <td><form:checkbox path="hpThrow" /></td>
                        <td><form:errors path="hpThrow" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Picks up Can:</td>
                        <td><form:checkbox path="canUp" /></td>
                        <td><form:errors path="canUp" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Set Down Height:</td>
                        <td><form:select path="downHeight">
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
                        <td><form:errors path="downHeight" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Take Can From Step:</td>
                        <td><form:checkbox path="takeCanFromStep" /></td>
                        <td><form:errors path="takeCanFromStep" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Can Pick Up Speed:</td>
                        <td><form:select path="canUpSpeed">
                                <form:option value="0" label="0"/>0
                                <form:option value="1" label="1"/>
                                <form:option value="2" label="2"/>
                                <form:option value="3" label="3"/>
                           </form:select></td>
                        <td><form:errors path="canUpSpeed" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Can Different Operations:</td>
                        <td><form:checkbox path="canDiffOps" /></td>
                        <td><form:errors path="canDiffOps" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Get Can From Step Without Landfill Cleared:</td>
                        <td><form:checkbox path="canFromStepNoFill" /></td>
                        <td><form:errors path="canFromStepNoFill" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td><h3>Post Game</h3></td>
                    </tr>
                    <tr>
                        <td>Cooperation Tote:</td>
                        <td><form:checkbox path="coopTote" /></td>
                        <td><form:errors path="coopTote" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Number of Cooperation Totes:</td>
                        <td><form:select path="coopStep">
                                <form:option value="0" label="0"/>
                                <form:option value="1" label="1"/>
                                <form:option value="2" label="2"/>
                                <form:option value="3" label="3"/>
                           </form:select></td>
                        <td><form:errors path="coopStep" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Robot Failed to Function:</td>
                        <td><form:checkbox path="failFunction" /></td>
                        <td><form:errors path="failFunction" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Robot Fouls A Lot:</td>
                        <td><form:checkbox path="fouls" /></td>
                        <td><form:errors path="fouls" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Robot is Dead on Arrival:</td>
                        <td><form:checkbox path="deadOnArrive" /></td>
                        <td><form:errors path="deadOnArrive" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Robot Tips Over:</td>
                        <td><form:checkbox path="tip" /></td>
                        <td><form:errors path="tip" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Robot has Communications Error:</td>
                        <td><form:checkbox path="commError" /></td>
                        <td><form:errors path="commError" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Robot is Built Poorly:</td>
                        <td><form:checkbox path="shotty" /></td>
                        <td><form:errors path="shotty" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Create" /></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </form:form>
        <a href="${pageContext.request.contextPath}/">Home page</a>
    </body>
</html>