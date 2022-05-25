<%-- 
    Document   : A
    Created on : Nov 27, 2020, 11:28:42 AM
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
        
        <c:forTokens items="A:A@gmail.com:Colombo&" delims="&" var="person">
            <h1>${person}</h1>
        </c:forTokens>
        
    </body>
</html>
