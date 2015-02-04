<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<%  
    int size;
    String input = request.getParameter("size");
    if (input == null || input == "") {
        size = 1;
    } else if (input.matches("[-+]?\\d*\\.?\\d+")){
        size = Integer.parseInt(input);
    } else {
        size = 1;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule Page</title>
    </head>
    <body>
        <h1>Enter Schedule</h1>
        <form method="GET" action="${pageContext.request.contextPath}/wholeSchedule/create.html">
            <input type="text" name="size" value="<%= size %>"/>
            <input type ="submit"/>
        </form>
        <br>
        <table style="text-align: center; width: 85%" border="1px" cellpadding="0" cellspacing="0" >
            <thead>
                <tr>
                    <th style="width: 16.66%">R1</th>
                    <th style="width: 0%"></th>
                    <th style="width: 16.66%">R2</th>
                    <th style="width: 0%"></th>
                    <th style="width: 16.66%">R3</th>
                    <th style="width: 0%"></th>
                    <th style="width: 16.66%">B1</th>
                    <th style="width: 0%"></th>
                    <th style="width: 16.66%">B2</th>
                    <th style="width: 0%"></th>
                    <th style="width: 16.66%">B3</th>
                    <th style="width: 0%"></th>
                </tr>
            </thead>
            <tbody>
                <form:form method="POST" commandName="wholeSchedule" action="${pageContext.request.contextPath}/wholeSchedule/create.html" modelattribute="wholeSchedule">
                    <c:forEach var="i" begin="1" end="<%= size %>">
                    <tr>
                        <td style="width: 16.66%"><form:input style="text-align: center" path="schedules[${i}].r1" value="1"/></td>
                        <td style="width: 0%"><form:errors path="schedules[${i}].r1" cssStyle="color: red;"/></td>
                        <td style="width: 16.66%"><form:input style="text-align: center" path="schedules[${i}].r2" value="2"/></td>
                        <td style="width: 0%"><form:errors path="schedules[${i}].r2" cssStyle="color: red;"/></td>
                        <td style="width: 16.66%"><form:input style="text-align: center" path="schedules[${i}].r3" value="3"/></td>
                        <td style="width: 0%"><form:errors path="schedules[${i}].r3" cssStyle="color: red;"/></td>
                        <td style="width: 16.66%"><form:input style="text-align: center" path="schedules[${i}].b1" value="4"/></td>
                        <td style="width: 0%"><form:errors path="schedules[${i}].b1" cssStyle="color: red;"/></td>
                        <td style="width: 16.66%"><form:input style="text-align: center" path="schedules[${i}].b2" value="5"/></td>
                        <td style="width: 0%"><form:errors path="schedules[${i}].b2" cssStyle="color: red;"/></td>
                        <td style="width: 16.66%"><form:input style="text-align: center" path="schedules[${i}].b3" value="6"/></td>
                        <td style="width: 0%"><form:errors path="schedules[${i}].b3" cssStyle="color: red;"/></td>
                    </tr>
                    </c:forEach>
                    <tr>
                        <td><input type="submit" value="Create" /></td>
                        <td></td>
                        <td></td>
                    </tr>
                </form:form>
            </tbody>
        </table>
        <a href="${pageContext.request.contextPath}/">Home page</a>
    </body>
</html>