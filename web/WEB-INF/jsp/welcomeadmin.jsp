<%-- 
    Document   : welcomeadmin
    Created on : Dec 29, 2017, 9:25:29 AM
    Author     : user
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
         <link href="<c:url value='/resources/theme1/css/bootstrap.css'/>" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
    </body>
</html>
