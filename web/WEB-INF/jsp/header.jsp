<%-- 
    Document   : header
    Created on : Dec 29, 2017, 9:31:53 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-default navbar-static-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">
                Brand
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">			
            
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/home" target="_blank">Visit Site</a></li>
                <li><a href="http://www.pingpong-labs.com" target="_blank">${user.username}</a></li>
                <li><a href="/PaymentAndCredit/login/logout">Logout</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="container-fluid main-container">
    <div class="col-md-2 sidebar">
        <ul class="nav nav-pills nav-stacked">
            <li class="active"><a href="${pageContext.request.contextPath}/welcome">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/welcome/customer">Kelola User</a></li>
            <li><a href="${pageContext.request.contextPath}/credit">Kelola Kredit</a></li>
            <li><a href="#">Kelola Cash</a></li>
            <li><a href="${pageContext.request.contextPath}/admin">Kelola Admin</a></li>
        </ul>
    </div>
