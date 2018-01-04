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
        <title>Welcome Admin</title>
         <link href="<c:url value='/resources/css/bootstrap.css'/>" rel="stylesheet">
    </head>
    <body>
                <c:if test="${not empty sessionScope.user}">
        <jsp:include page="header.jsp"/>
        <div class="col-md-10 content">
        <div class="panel panel-default">
            <div class="panel-heading">
                Dashboard
            </div>
            <div class="panel-body">
                <h1>Selamat datang ${user.username}</h1>
                <br/>
                Selamat Datang di Dashboard Admin. Silahkan menggunakan halaman ini dengan benar dan sebaik-baiknya. Halaman ini adalah
                halaman khusus admin. Anda bisa mengelola data yang diperlukan seperti mengedit, menghapus, menambah dan sebagainya.
               
            </div>
        </div>
    </div>
                    </c:if>
        <c:if test="${empty sessionScope.user}">
                    YOU NEED TO LOG IN FIRST
                </c:if>
    </body>
</html>
