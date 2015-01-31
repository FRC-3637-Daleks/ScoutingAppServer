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
            <form:form method="POST" commandName="team" action="${pageContext.request.contextPath}/team/edit/${team.id}.html" >
                <table>
                    <tbody>
                        <tr>
                        <td>Team number:</td>
                        <td><form:input path="number" value="${team.number}"/></td>
                        <td><form:errors path="number" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Team name</td>
                        <td><form:input path="name" value="${team.name}"/></td>
                        <td><form:errors path="name" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td>Team Image Location:</td>
                        <td><form:input path="imageLoc" value="${team.imageLoc}"/></td>
                        <td><form:errors path="imageLoc" cssStyle="color: red;"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Edit" /></td>
                        <td></td>
                        <td></td>
                    </tr>
                    </tbody>
                </table>
            </form:form>
        <a href="${pageContext.request.contextPath}/">Home page</a>
    </body>
</html>