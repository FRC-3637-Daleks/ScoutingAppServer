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