<%-- 
    Document   : AA
    Created on : Dec 2, 2020, 1:48:16 PM
    Author     : abhi
--%>
<%@page import="java.sql.ResultSet"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>


        <fmt:bundle basename="com.Message">
            <fmt:message key="name"/>
            <br>
            <fmt:message key="full_name"/>
            <br>
            <fmt:message key="short_name"/>
        </fmt:bundle>


        <fmt:setBundle basename="com.Message" var="msg"/>

        <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/eteach?useSSL=false" user="root" password="1234"/>           

        <sql:query dataSource="${db}" sql="SELECT * FROM tbl_mobile_users" var="users" scope="page"/>

        <h1>${users != null}</h1>

        <%

//          ResultSet rs =  (ResultSet)pageContext.getAttribute("users");
//          
//          while(rs.next()){
//              out.println(rs.getString("mob_full_name"));
//          }

        %>

        <!--<table border="1">--> 
        <%--<c:forEach var="row" items="${users.rows}">--%>
        <!--<tr>-->
        <!--<td>-->
        <%--<c:out value="${row.mob_full_name}"/>--%>
        <!--</td>-->     

        <!--</tr>-->
        <%--</c:forEach>--%>
        <!--</table>-->


        <c:set var="xmltext">
        <books>
            <book>
                <name>A</name>
                <author>ABC</author>
                <price>100</price>
            </book>
            <book>
                <name>B</name>
                <author>ABC</author>
                <price>2000</price>
            </book>
        </books>
    </c:set>

    <x:parse xml="${xmltext}" var="data"/>

    <x:out select="$data/books/book[1]"/>

    <x:if select="$data//books">
        <h1>No data</h1>
    </x:if>


    <x:forEach select="$data/books/book" var="book">
        <x:out select="$book"/> 
        <br>
    </x:forEach>



    <c:import url="http://localhost:8080/JSTL/style.xsl" var="xsl"/>

    <x:transform xml="${xmltext}" xslt="${xsl}">
        <x:param name="color" value="red"/>
    </x:transform>

</body>
</html>
