<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>" type="text/css">
  <link rel="stylesheet" href="<c:url value="https://v40.pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css"/>" type="text/css"> </head>

        <style>  
            .background {
                background-image: url("<c:url value='/resources/img/header-bg.jpg'/>");
            }
        </style>
    
<!-- Favicons
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" type="text/css" media="all" />
<link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico"/>" type="image/x-icon">
<link rel="apple-touch-icon" href="<c:url value="/resources/img/apple-touch-icon.png"/>" >
<link rel="apple-touch-icon" sizes="72x72" href="<c:url value="/resources/img/apple-touch-icon-72x72.png"/>" >
<link rel="apple-touch-icon" sizes="114x114" href="<c:url value="resources/img/apple-touch-icon-114x114.png"/>" >

Bootstrap
<link rel="stylesheet" type="text/css"  href="<c:url value="/resources/css/bootstrap.css"/>" >
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/font-awesome/css/font-awesome.css"/>">

 Stylesheet
<link rel="stylesheet" type="text/css"  href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="resources/css/prettyPhoto.css"/>">
<link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/modernizr.custom.js"></script>
-->
</head>
<nav class="navbar navbar-expand-md bg-success navbar-dark background">
    <div class="container">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/home"><i class="fa d-inline fa-lg fa-money"></i><b>  IndoFinance</b></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false"
        aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-end" id="navbar2SupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="#"><i class="fa d-inline fa-lg fa-home"></i> Bookmarks</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><i class="fa d-inline fa-lg fa-envelope"></i> Contacts</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><i class="fa d-inline fa-lg fa-black-tie"></i> Service</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
<!--

<nav id="menu" class="navbar navbar-default navbar-top">
  <div class="container"> 
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="index.html"><i class="fa fa-sun-o"></i> Indocyber Finance<strong></strong></a> </div>
 
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#home" class="page-scroll">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/credit" class="page-scroll">Simulasi Kredit</a></li>
        <li><a href="#works-section" class="page-scroll">Our Partner</a></li>
        <li><a href="#about-section" class="page-scroll">About Us</a></li>
        <li><a href="#team-section" class="page-scroll">Team</a></li>
        <li><a href="#contact-section" class="page-scroll">Contact</a></li>
      </ul>
    </div>
  </div>
</nav>
-->