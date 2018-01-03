<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
      <a class="navbar-brand" href="index.html"><i class="fa fa-sun-o"></i> Indocyber Finance<strong></strong></a> </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#home" class="page-scroll">Home</a></li>
        <li><a href="#services-section" class="page-scroll">Pembayaran</a></li>
        <li><a href="#works-section" class="page-scroll">Our Partner</a></li>
        <li><a href="#about-section" class="page-scroll">About Us</a></li>
        <li><a href="#team-section" class="page-scroll">Team</a></li>
        <li><a href="#contact-section" class="page-scroll">Contact</a></li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>

<!-- Header -->
<header class="text-center" name="home">
  <div class="intro-text">
      <h1>Welcome to </h1> <h1><strong><b>Indocyber <i>Finance</i></b> </strong> </h1>
    <p>Menyediakan Jasa Pembayaran Kredit</p>
    <a href="#services-section" class="btn btn-default btn-lg page-scroll">LEARN MORE</a> </div>
</header>

<!-- Services Section -->
<div id="services-section" class="text-center">
  <div class="container">
    <div class="section-title center">
      <h2>Pembayaran</h2>
      <hr>
      <div class="clearfix"></div>
      <h5>PILIH DI BAWAH INI UNTUK TIPE PEMBAYARAN.</h5> <br>
      <div class="categories">
      <ul class="cat"> 
        <li>
          <ol class="type">
            <li><a href="${pageContext.request.contextPath}/credit" data-filter="*" class="active">Kredit</a></li>
            <li><a href="#" data-filter=".web">Pembayaran</a></li>
            <li><a href="#" data-filter=".app">a</a></li>
            <li><a href="#" data-filter=".branding">Branding</a></li>
          </ol>
        </li>
      </ul>
      <div class="clearfix"></div>
      
      
    <!-- INI FORM -->
         
            <div class="card">
                <div class="card-header">
                    Credit Aplication Simulation
                </div>
                <div class="card-body">
                    <form:form action="${pageContext.request.contextPath}/credit/check" modelAttribute="credit" method="POST" >
                        <table>
                            <tr><td><form:label path="hargaBarang">Harga Barang</form:label></td>
                                <td><form:input path="hargaBarang"/></tr>
                            <tr><td><form:label path="bungaTahunan">Bunga Tahunan</form:label></td>
                                <td><form:input path="bungaTahunan"/></td></tr>
                            
                            <tr><td><form:label path="durasi">Durasi</form:label></td>
                                <td><form:input path="durasi"/></td></tr>
                            
                            <tr><td><form:label path="uangMuka">Uang Muka</form:label></td>
                                <td><form:input path="uangMuka"/></td></tr>
                            
                            <tr><td><form:label path="gajiPokok">Gaji Pokok</form:label></td>
                                <td><form:input path="gajiPokok"/></td></tr>
                            
                            <tr><td><form:label path="bonus">Bonus</form:label></td>
                                <td><form:input path="bonus"/></td></tr>
                            
                            <tr><td><form:label path="pendapatanLain">Pendapatan Lain</form:label></td>
                                <td><form:input path="pendapatanLain" /></td></tr
                            
                            <tr><td><form:label path="tanggungan">Tanggungan</form:label></td>
                                <td><form:input path="tanggungan" /></td></tr>
                            
                            <tr><td></td><td><form:button name="submitButton" value="Submit" class="btn">Submit</form:button></td></tr>            
                            </table>            
                    </form:form>
                </div>
            </div>
        
          
      
    </div>
    </div>
    <div class="space"></div>
    <div class="row">
      <div class="col-md-3 col-sm-6 service"> <i class="fa fa-desktop"></i>
        <h4>Web Design</h4>
        <p>Membuat Website dengan menarik</p>
      </div>
      <div class="col-md-3 col-sm-6 service"> <i class="fa fa-gears"></i>
        <h4>App Development</h4>
        <p>Membuat Apps</p>
      </div>
      <div class="col-md-3 col-sm-6 service"> <i class="fa fa-rocket"></i>
        <h4>Branding</h4>
        <p>Memasarkan Produk dan Mengajarkan Cara Membranding.</p>
      </div>
      <div class="col-md-3 col-sm-6 service"> <i class="fa fa-line-chart"></i>
        <h4>Marketing</h4>
        <p>Mendapatkan Pengalaman Belajar Bagaiamana Cara Mendapatkan Peluang Bisnis.</p>
      </div>
    </div>
  </div>
</div>
<!-- Portfolio Section -->
<div id="works-section">
  <div class="container"> <!-- Container -->
    <div class="section-title text-center center">
      <h2>Our Partner</h2>
      <hr>
      <div class="clearfix"></div>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diamcommodo nibh ante facilisis.</p>
    </div>
    
    <div class="row">
      <div class="portfolio-items">
        <div class="col-sm-6 col-md-3 col-lg-3 web">
          <div class="portfolio-item">
              <div class="hover-bg"> <a href="<c:url value="/resources/img/portfolio/01.jpg"/>" rel="prettyPhoto">
              <div class="hover-text">
                <h4>Project Title</h4>
                <small>Web Design</small>
                <div class="clearfix"></div>
              </div>
                      <img src="<c:url value="/resources/img/portfolio/01.jpg"/>" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3 col-lg-3 app">
          <div class="portfolio-item">
              <div class="hover-bg"> <a href="<c:url value="/resources/img/portfolio/02.jpg"/>" rel="prettyPhoto">
              <div class="hover-text">
                <h4>Project Title</h4>
                <small>App Development</small>
                <div class="clearfix"></div>
              </div>
                      <img src="<c:url value="resources/img/portfolio/02.jpg"/>" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3 col-lg-3 web">
          <div class="portfolio-item">
              <div class="hover-bg"> <a href="<c:url value="/resources/img/portfolio/03.jpg"/>" rel="prettyPhoto">
              <div class="hover-text">
                <h4>Project Title</h4>
                <small>Web Design</small>
                <div class="clearfix"></div>
              </div>
                      <img src="<c:url value="/resources/img/portfolio/03.jpg"/>" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3 col-lg-3 web">
          <div class="portfolio-item">
              <div class="hover-bg"> <a href="<c:url value="/resources/img/portfolio/04.jpg"/>" rel="prettyPhoto">
              <div class="hover-text">
                <h4>Project Title</h4>
                <small>Web Design</small>
                <div class="clearfix"></div>
              </div>
                      <img src="<c:url value="/resources/img/portfolio/04.jpg" />" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3 col-lg-3 app">
          <div class="portfolio-item">
              <div class="hover-bg"> <a href="<c:url value="/resources/img/portfolio/05.jpg"/>" rel="prettyPhoto">
              <div class="hover-text">
                <h4>Project Title</h4>
                <small>App Development</small>
                <div class="clearfix"></div>
              </div>
                      <img src="<c:url value="/resources/img/portfolio/05.jpg"/>" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3 col-lg-3 branding">
          <div class="portfolio-item">
              <div class="hover-bg"> <a href="<c:url value="/resources/img/portfolio/06.jpg"/>" rel="prettyPhoto">
              <div class="hover-text">
                <h4>Project Title</h4>
                <small>Branding</small>
                <div class="clearfix"></div>
              </div>
                      <img src="<c:url value="/resources/img/portfolio/06.jpg"/>" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3 col-lg-3 branding app">
          <div class="portfolio-item">
              <div class="hover-bg"> <a href="<c:url value="/resources/img/portfolio/07.jpg"/>" rel="prettyPhoto">
              <div class="hover-text">
                <h4>Project Title</h4>
                <small>App Development, Branding</small>
                <div class="clearfix"></div>
              </div>
                      <img src="<c:url value="/resources/img/portfolio/07.jpg"/>" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3 col-lg-3 web">
          <div class="portfolio-item">
              <div class="hover-bg"> <a href="<c:url value="/resources/img/portfolio/08.jpg"/>" rel="prettyPhoto">
              <div class="hover-text">
                <h4>Project Title</h4>
                <small>Web Design</small>
                <div class="clearfix"></div>
              </div>
                      <img src="<c:url value="/resources/img/portfolio/08.jpg"/>" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- About Section -->
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
<!-- Achievements Section -->
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
<!-- Team Section -->
<div id="team-section" class="text-center">
  <div class="container">
    <div class="section-title center">
      <h2>Meet the Team</h2>
      <hr>
      <p>This is our fantastic team</p>
    </div>
    <div id="row">
      <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/01.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>John Doe</h3>
            <p>Founder / CEO</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/02.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Mike Doe</h3>
            <p>Web Designer</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/03.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Jane Doe</h3>
            <p>Creative Director</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
          <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/03.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Jane Doe</h3>
            <p>Creative Director</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
          <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/03.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Jane Doe</h3>
            <p>Creative Director</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
          <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/03.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Jane Doe</h3>
            <p>Creative Director</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
          <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/03.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Jane Doe</h3>
            <p>Creative Director</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
          <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/03.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Jane Doe</h3>
            <p>Creative Director</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
          <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/03.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Jane Doe</h3>
            <p>Creative Director</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 team">
          <div class="thumbnail"> <img src="<c:url value="/resources/img/team/04.jpg"/>" alt="..." class="img-circle team-img">
          <div class="caption">
            <h3>Larry Show</h3>
            <p>Project Manager</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Contact Section -->
<div id="contact-section" class="text-center">
  <div class="container">
    <div class="section-title center">
      <h2>Contact Us</h2>
      <hr>
      <p>Feel free to ask</p>
    </div>
    <div class="col-md-8 col-md-offset-2">
      <div class="col-md-4"> <i class="fa fa-map-marker"></i>
        <p>Depan Tempat Pijet,<br>
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
      <p>Copyright &copy; Helios. Designed by <a href="http://www.templatewire.com" rel="nofollow">TemplateWire</a></p>
    </div>
  </div>
</div>

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
