<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Indocyber Finance</title>
<meta name="description" content="">
<meta name="author" content="">

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
      <a class="navbar-brand" href="${pageContext.request.contextPath}/home"><i class="fa fa-sun-o"></i> Indocyber Finance<strong></strong></a> </div>
 
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${pageContext.request.contextPath}/home" class="page-scroll">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/simulasi" class="page-scroll">Simulasi Kredit</a></li>
        <li><a href="${pageContext.request.contextPath}/payment" class="page-scroll">Pembayaran</a></li>
        <li><a href="${pageContext.request.contextPath}/team" class="page-scroll">About us</a></li>
        
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>

<header class="text-center" name="home">
  <div class="intro-text">
      <h1>Welcome to </h1> <h1><strong><b>Indocyber <i>Finance</i></b> </strong> </h1>
    <p>Menyediakan Jasa Pembayaran Kredit</p>
    <a href="${pageContext.request.contextPath}/credit" class="btn btn-default btn-lg page-scroll">LEARN MORE</a> </div>
</header>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
<script type="text/javascript" src="<c:url value="/resourcesjs/jquery.1.11.1.js"/>"</script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.js"/>"</script> 
<script type="text/javascript" src="<c:url value="/resources/js/SmoothScroll.js"/>"</script> 
<script type="text/javascript" src="<c:url value="/resources/js/jquery.counterup.js"/>"</script> 
<script type="text/javascript" src="<c:url value="/resources/js/waypoints.js"/>"</script> 
<script type="text/javascript" src="<c:url value="/resources/js/jquery.prettyPhoto.js"/>"</script> 
<script type="text/javascript" src="<c:url value="/resources/js/jquery.isotope.js"/>"</script> 
<script type="text/javascript" src="<c:url value="/resources/js/jqBootstrapValidation.js"/>"</script> 
<script type="text/javascript" src="<c:url value="/resources/js/contact_me.js"/>"</script> 

<!-- Javascripts
    ================================================== --> 
<script type="text/javascript" src="<c:url value="/resources/js/main.js"/>"</script>
    </body>
</html>
