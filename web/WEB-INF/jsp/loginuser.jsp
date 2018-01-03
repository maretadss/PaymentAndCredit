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
        <link href="<c:url value='/resources/css/bootstrap.css'/>" rel="stylesheet">
    </head>
    <body>
        <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
        <!-- This is a very simple parallax effect achieved by simple CSS 3 multiple backgrounds, made by http://twitter.com/msurguy -->

        <div class="container">
            <div class="row vertical-offset-100">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Please sign in </h3>
                            <b>${errMsg}</b>
                        </div>
                        <div class="panel-body">
                                <form:form action="${pageContext.request.contextPath}/login/check" modelAttribute="loginBean" method="POST" >
                                    <fieldset>
                                        <div class="form-group">
                                            <form:input class="form-control" placeholder="Username" name="username" type="text" path="username"/>
                                        </div>
                                        <div class="form-group">
                                            <form:input class="form-control" placeholder="Password" name="password" type="password" path="password"/>
                                        </div>
                                        <form:button class="btn btn-lg btn-success btn-block" type="submit">Submit</form:button>
                                    </fieldset>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>
    </html>
