<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>New Team Page</title>
        <link rel="icon" type="image/icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
    </head>
    <body>
        <h1>New Team</h1>
        <form:form method="POST" commandName="team" action="${pageContext.request.contextPath}/team/create.html" >
            <table>
                <tbody>
                    <tr>
                        <td>Team number:</td>
                        <td><form:input path="number" /></td>
                        <td><form:errors path="number" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Team name</td>
                        <td><form:input path="name" /></td>
                        <td><form:errors path="name" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Team Image Location:</td>
                        <td><form:input path="imageLoc" /></td>
                        <td><form:errors path="imageLoc" cssStyle="color: red;"/></td>
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
