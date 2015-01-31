<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule Page</title>
    </head>
    <body>
        <h1>Enter Schedule</h1>
        <table>
            <form:form method="POST" commandName="schedule" action="${pageContext.request.contextPath}/schedule/edit/${schedule.matchNum}.html" >
                <tr>
                    <td>R1</td>
                    <td><form:input path="r1" value="${schedule.r1}"/></td>
                    <td><form:errors path="r1" cssStyle="color: red;"/></td>
                </tr>
                <tr>
                    <td>R2</td>
                    <td><form:input path="r2" value="${schedule.r2}"/></td>
                    <td><form:errors path="r2" cssStyle="color: red;"/></td>
                </tr>
                <tr>
                    <td>R3</td>
                    <td><form:input path="r3" value="${schedule.r3}"/></td>
                    <td><form:errors path="r3" cssStyle="color: red;"/></td>
                </tr>
                <tr>
                    <td>B1</td>
                    <td><form:input path="b1" value="${schedule.b1}"/></td>
                    <td><form:errors path="b1" cssStyle="color: red;"/></td>
                </tr>
                <tr>
                    <td>B2</td>
                    <td><form:input path="b2" value="${schedule.b2}"/></td>
                    <td><form:errors path="b2" cssStyle="color: red;"/></td>
                </tr>
                <tr>
                    <td>B3</td>
                    <td><form:input path="b3" value="${schedule.b3}"/></td>
                    <td><form:errors path="b3" cssStyle="color: red;"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Edit" /></td>
                    <td></td>
                    <td></td>
                </tr>
            </form:form>
        </table>
    </body>
</html>
