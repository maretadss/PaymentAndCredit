<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Registration</title>  
        <style>
            .error {
                color: red; font-weight: bold;
            } 
            .background {
                background-image: url("<c:url value='/resources/img/header-bg.jpg'/>");
            }
            .img {
                background-image: url("<c:url value='/resources/img/12.jpg'/>");
                width: 100%;
            }
        </style>
    </head>
    <body class="">
        <jsp:include page="navbar.jsp"/> 
<div class="py-5 img" >
    <div class="container">
      <div class="row">
        <div class="align-self-center col-md-6 text-white">
          <h1 class="text-center text-md-left display-3 text-info">Marilah Warga untuk Kredit</h1>
          <p class="lead text-info">Saving for your future life. no one knows what happen next.</p>
        </div>
        <div class="col-md-6" id="book">
          <div class="card">
            <div class="card-body p-5 bg-info text-muted">
              <h3 class="pb-3">Simulasi Kredit</h3>
              
                    <form:form action="${pageContext.request.contextPath}/credit/check" modelAttribute="credit" method="POST" >
                <div class="form-group"> <label>Harga Barang</label>
                  <form:input path="hargaBarang" class="form-control"/> </div>
                <div class="form-group"> <label>Durasi</label>
                  <form:select class="form-control col-md-10" path="durasi"> 
                    <option>3 bulan</option>
                    <option>6 bulan</option>
                    <option>12 bulan</option>
                  </form:select>
                </div>
                <div class="form-group"> <label>Bunga Tahunan</label>
                  <form:input path="bungaTahunan" class="form-control"/> </div>
                <div class="form-group"> <label>Uang Muka</label>
                  <form:input path="uangMuka" class="form-control"/> </div>
                <div class="form-group"> <label>Gaji Pokok</label>
                  <form:input path="gajiPokok" class="form-control"/> </div>
                <div class="form-group"> <label>Bonus</label>
                  <form:input path="bonus" class="form-control"/> </div>
                <div class="form-group"> <label>Pendapatan Lain</label>
                  <form:input path="pendapatanLain" class="form-control"/> </div>
                <div class="form-group"> <label>Tanggungan</label>
                  <form:input path="tanggungan" class="form-control"/> </div>
                <form:button type="submit" class="btn mt-2 btn-dark">Reserve</form:button>          
                    </form:form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
    </body>
</html>
