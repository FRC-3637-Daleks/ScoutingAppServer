<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<%  
    int size;
    String input = request.getParameter("size");
    if (input == null || input == "") {
        size = 1;
    } else if (input.matches("[-+]?\\d*\\.?\\d+")){
        if (Integer.parseInt(input) > 0) {
            size = Integer.parseInt(input);
        } else {
            size = 1;
        }
    } else {
        size = 1;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule Page</title>
        <link rel="icon" type="image/icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
        <style>
            .table {
                text-align: center;
                width: 85%;
                padding-bottom: 5px;
                border: 1px;
            }
        </style>
    </head>
    <body>
        <h1>Enter Schedule</h1>
        <form method="GET" action="${pageContext.request.contextPath}/wholeSchedule/create.html">
            <input type="text" name="size" value="<%= size %>"/>
            <input type ="submit"/>
        </form>
        <br>
        <table class="table">
            <thead>
                <tr>
                    <th style="width: 16.66%" colspan="2">R1</th>
                    <th style="width: 16.66%" colspan="2">R2</th>
                    <th style="width: 16.66%" colspan="2">R3</th>
                    <th style="width: 16.66%" colspan="2">B1</th>
                    <th style="width: 16.66%" colspan="2">B2</th>
                    <th style="width: 16.66%" colspan="2">B3</th>
                </tr>
            </thead>
            <tbody>
                <form:form method="POST" commandName="wholeSchedule" action="${pageContext.request.contextPath}/wholeSchedule/create.html" modelattribute="wholeSchedule">
                    <c:forEach var="i" begin="0" end="<%= size - 1%>">
                    <tr>
                        <td style="width: 16.66%"><form:input style="text-align: center" path="schedules[${i}].b1" value="4"/></td>
                        <td style="width: 0%"><form:errors path="schedules[${i}].b1" cssStyle="color: red;"/></td>
                        <td style="width: 16.66%"><form:input style="text-align: center" path="schedules[${i}].b2" value="5"/></td>
                        <td style="width: 0%"><form:errors path="schedules[${i}].b2" cssStyle="color: red;"/></td>
                        <td style="width: 16.66%"><form:input style="text-align: center" path="schedules[${i}].b3" value="6"/></td>
                        <td style="width: 0%"><form:errors path="schedules[${i}].b3" cssStyle="color: red;"/></td>
                        
                        <td style="width: 16.66%"><form:input style="text-align: center" path="schedules[${i}].r1" value="1"/></td>
                        <td style="width: 0%"><form:errors path="schedules[${i}].r1" cssStyle="color: red;"/></td>
                        <td style="width: 16.66%"><form:input style="text-align: center" path="schedules[${i}].r2" value="2"/></td>
                        <td style="width: 0%"><form:errors path="schedules[${i}].r2" cssStyle="color: red;"/></td>
                        <td style="width: 16.66%"><form:input style="text-align: center" path="schedules[${i}].r3" value="3"/></td>
                        <td style="width: 0%"><form:errors path="schedules[${i}].r3" cssStyle="color: red;"/></td>
                    </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="12"><input type="submit" value="Create" /></td>
                    </tr>
                </form:form>
            </tbody>
        </table>
        <a href="${pageContext.request.contextPath}/">Home page</a>
    </body>
</html>
