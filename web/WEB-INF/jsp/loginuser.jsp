<%-- 
    Document   : loginuser
    Created on : Dec 29, 2017, 9:05:25 AM
    Author     : user
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login User Admin</title>
        <link rel="stylesheet" href="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'/>" type="text/css">
        <link rel="stylesheet" href="<c:url value='https://v40.pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css'/>" type="text/css">

        <link href="<c:url value='/resources/ping.css'/>" rel="stylesheet">
        <link href="<c:url value='/resources/ping.scss'/>" rel="stylesheet">
    </head>
    <body>
    <div class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-3"> </div>
                <div class="col-md-6">
                    <div class="card text-white p-5 bg-info">
                        <div class="container"> <i class="d-block  fa pi-draggable fa-user-circle fa-5x w-100 fa-fw">
                                <h1 class="container">Please Sign In</h1></i> </div>
                        <b>${errMsg}</b>
                        <div class="card-body">
                            <form:form action="${pageContext.request.contextPath}/login/check" modelAttribute="loginBean" method="POST" >
                                <div class="form-group">
                                    <form:input class="form-control" placeholder="Username" name="username" type="text" path="username"/>
                                </div>  
                                    <div class="form-group">
                                    <form:input class="form-control" placeholder="Password" name="password" type="password" path="password"/>
                                    </div>
                                    <form:button class="btn btn-dark btn-block text-white" type="submit">Submit</form:button>
                                     </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
