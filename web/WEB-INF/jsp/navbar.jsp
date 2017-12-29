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
</head>
<nav class="navbar navbar-expand-md bg-success navbar-dark background">
    <div class="container">
      <a class="navbar-brand" href="#"><i class="fa d-inline fa-lg fa-money"></i><b>  IndoFinance</b></a>
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