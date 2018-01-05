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
<style>  
        .background {
            background-image: url("<c:url value='/resources/img/header-bg.jpg'/>");
        }
    </style>
    </head>
    <body>
        <nav id="menu" class="navbar navbar-default navbar-fixed-top background">
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
        <div id="about-section">
  <div class="container">
    <div class="section-title text-center center">
      <h2>About Us</h2>
      <hr>
      <div class="clearfix"></div>
      <p>Project ini di mulai sejak 2 minggu yang lalu...</p></div>
    <div class="row">
        <div class="col-md-6"> <img src="<c:url value="/resources/img/about.jpg"/>" class="img-responsive"> </div>
      <div class="col-md-6">
        <div class="about-text">
          <h4>Who We Are</h4>
          <p>Kelompok 1</p>
          <h4>What We Do</h4>
          <p>Menyediakan Jasa Pembayaran</p>
          <h4>Why Choose Us</h4>
          <p>Because Karena</p>
        </div>
      </div>
    </div>
  </div>
</div>

      
<div id="achievements" class="section dark-bg">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-3">
        <div class="achievement-box"> <span class="count">9,999</span>
          <h4>Happy clients</h4>
        </div>
      </div>
      <div class="col-md-3 col-sm-3">
        <div class="achievement-box"> <span class="count">9,500</span>
          <h4>Working hours</h4>
        </div>
      </div>
      <div class="col-md-3 col-sm-3">
        <div class="achievement-box"> <span class="count">990</span>
          <h4>Projects completed</h4>
        </div>
      </div>
      <div class="col-md-3 col-sm-3">
        <div class="achievement-box"> <span class="count">15</span>
          <h4>Awards won</h4>
        </div>
      </div>
    </div>
  </div>
</div>

<div id="team-section" class="text-center">
  <div class="container">
    <div class="section-title center">
      <h2>Meet the Team</h2>
      <hr>
      <p>This is our fantastic team</p>
    </div>
    <div id="row">
      <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/FabianRahmat.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Fabian Rahmat</h3>
            <p>Founder / CEO</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/NicoReinaldi.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Nico Reinaldi</h3>
            <p>Web Designer</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/toto.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Nurmaruo Anggito</h3>
            <p>Creative Director</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
          <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/kevin.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Kevin</h3>
            <p>Creative Director</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
          <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/mareta.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Mareta Dwi Siam Sari</h3>
            <p>Creative Director</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
          <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/ilhamfidiyantoko.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Ilham Fidiyantoko</h3>
            <p>Creative Director</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
          <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/fhadsaleh.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Fhad Saleh</h3>
            <p>Creative Director</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
          <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/tengkuwardahshahab.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Tengkuh Wardah Shahab</h3>
            <p>Creative Director</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
          <div style="margin-left: 140px;"class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/satrio.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Satrio Pratama Abdina</h3>
            <p>Creative Director</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
          <div style="margin-left: 280px;"class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/bonySuwanda.jpeg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Bony Suwanda</h3>
            <p>Project Manager</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div id="contact-section" class="text-center">
  <div class="container">
    <div class="section-title center">
      <h2>Contact Us</h2>
      <hr>
      <p>Feel free to ask</p>
    </div>
    <div class="col-md-8 col-md-offset-2">
      <div class="col-md-4"> <i class="fa fa-map-marker"></i>
        <p>Komplek Adiron,<br>
          Daan Mogot, CA 12345</p>
      </div>
      <div class="col-md-4"> <i class="fa fa-envelope-o"></i>
        <p>info@company.com</p>
      </div>
      <div class="col-md-4"> <i class="fa fa-phone"></i>
        <p> +62 123 456 1234</p>
      </div>
      <hr>
      <div class="clearfix"></div>
    </div>
    <div class="col-md-8 col-md-offset-2">
      <h3>Leave us a message</h3>
      <form name="sentMessage" id="contactForm" novalidate>
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" id="name" class="form-control" placeholder="Name" required="required">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="email" id="email" class="form-control" placeholder="Email" required="required">
              <p class="help-block text-danger"></p>
            </div>
          </div>
        </div>
        <div class="form-group">
          <textarea name="message" id="message" class="form-control" rows="4" placeholder="Message" required></textarea>
          <p class="help-block text-danger"></p>
        </div>
        <div id="success"></div>
        <button type="submit" class="btn btn-default">Send Message</button>
      </form>
    </div>
  </div>
</div>
</div>
<div id="social-section">
  <div class="container">
    <div class="social">
      <ul>
        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
        <li><a href="#"><i class="fa fa-github"></i></a></li>
        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
      </ul>
    </div>
  </div>
</div>
<div id="footer">
  <div class="container">
    <div class="fnav">
      <p>Copyright &copy; Kelompok 1. Designed by <a href="#" rel="nofollow">Kelompok Alpukat</a></p>
    </div>
  </div>
</div>
-->
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
