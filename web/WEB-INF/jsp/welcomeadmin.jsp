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
        <title>Admin Page</title>
         <link href="<c:url value='/resources/css/bootstrap.css'/>" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        
        <div class="col-md-10 content">
        <div class="panel panel-default">
            <div class="panel-heading">
                Dashboard
            </div>
            <div class="panel-body">
                Selamat Datang Admin.
            </div>
        </div>
    </div>
        </div>
    </body>
</html>
