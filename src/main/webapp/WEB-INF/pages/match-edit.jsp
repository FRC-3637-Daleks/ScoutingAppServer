<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Edit Match page</title>
    </head>
    <body>
        <h1>Edit Match page</h1>
            <form:form method="POST" commandName="match" action="${pageContext.request.contextPath}/match/edit/${match.id}.html" >
                <table>
                    <tbody>
                        <tr>
                            <td>Match number:</td>
                            <td><form:input path="matchNum" value="${match.matchNum}"/></td>
                            <td><form:errors path="matchNum" cssStyle="color: red;"/></td>
                        </tr>
                        <tr>
                            <td>Team number:</td>
                            <td><form:input path="team" value="${match.team}"/></td>
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