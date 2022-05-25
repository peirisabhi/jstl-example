<%-- 
    Document   : index
    Created on : Nov 25, 2020, 2:40:11 PM
    Author     : abhi
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <c:import url="http://www.google.lk" var="google"/>

        <c:out value="Hello Java"/>

        <%--<c:out value="${google}"/>--%>

        <%
            String[] ar = {"A", "B", "C", "D"};
            pageContext.setAttribute("ar", ar);

            String data = "A:A@gmail.com:Colombo&"
                    + "B:B@gmail.com:Matara&"
                    + "C:C@gmail.com:Kandy&"
                    + "D:D@gmail.com:Gampaha";

            pageContext.setAttribute("data", data);
        %>


        <br>


        <c:forEach begin="1" end="10" var="x">
            <c:forEach begin="1" end="${x}">
                * 
            </c:forEach>
            <br>
        </c:forEach>

        <c:forEach begin="1" end="10" var="x">
            ${10 - x}
            <br>
        </c:forEach>

        <c:forTokens items="${data}" delims="&" var="person">
            <c:forTokens items="${person}" delims=":" var="details">
                <h1>${details}</h1>
            </c:forTokens>
                <hr>
        </c:forTokens>


    </body>
</html>
