<%-- 
    Document   : aboutus
    Created on : Jan 2, 2018, 11:49:36 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Indocyber Finance</title>
<meta name="description" content="">
<meta name="a   uthor" content="">

<!-- Favicons
    ================================================== -->
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" type="text/css" media="all" />
<link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico"/>" type="image/x-icon">
<link rel="apple-touch-icon" href="<c:url value="/resources/img/apple-touch-icon.png"/>" >
<link rel="apple-touch-icon" sizes="72x72" href="<c:url value="/resources/img/apple-touch-icon-72x72.png"/>" >
<link rel="apple-touch-icon" sizes="114x114" href="<c:url value="resources/img/apple-touch-icon-114x114.png"/>" >

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"  href="<c:url value="/resources/css/bootstrap.css"/>" >
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/font-awesome/css/font-awesome.css"/>">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"  href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="resources/css/prettyPhoto.css"/>">
<link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/modernizr.custom.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    </head>
    <body>
          <!-- Navigation
    ==========================================-->
<nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="index.html"><i class="fa fa-sun-o"></i> Indocyber Finance<strong></strong></a> </div>
 
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#home" class="page-scroll">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/credit" class="page-scroll">Simulasi Kredit</a></li>
        <li><a href="#ourpartner" class="page-scroll">Pembayaran</a></li>
        <li><a href="${pageContext.request.contextPath}/aboutus" class="page-scroll">About Us</a></li>
        <li><a href="#team-section" class="page-scroll">Team</a></li>
        <li><a href="#contact-section" class="page-scroll">Contact</a></li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>

        <!-- BACKGROUND -->
        <header class="text-center" name="home">
             <div class="intro-text">
      <h1>Welcome to </h1> <h1><strong><b>Indocyber <i>Finance</i></b> </strong> </h1>
    <p>Menyediakan Jasa Pembayaran Kredit</p> 
        </header>
        <!--BACKGROUND BALON-->
        
        
        <div id="about-section">
  <div class="container">
    <div class="section-title text-center center">
      <h2>About Us</h2>
      <hr>
      <div class="clearfix"></div>
      <p>ABOUT US ABOUT US ABOUT US ABOUT US ABOUT US ABOUT US ABOUT US ABOUT US ABOUT US ABOUT US ABOUT US ABOUT US</p>
    </div>
    <div class="row">
        <div class="col-md-6"> <img src="<c:url value="/resources/img/about.jpg"/>" class="img-responsive"> </div>
      <div class="col-md-6">
        <div class="about-text">
          <h4>Who We Are</h4>
          <p>Kambing</p>
          <h4>What We Do</h4>
          <p>Kambing</p>
          <h4>Why Choose Us</h4>
          <p>Because Karena</p>
        </div>
      </div>
    </div>
  </div>
</div>

    </body>
</html>
