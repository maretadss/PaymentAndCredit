<%-- 
    Document   : simulasi
    Created on : Dec 28, 2017, 11:08:56 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IndoFinance</title>
    </head><style>  
            .background {
                background-image: url("<c:url value='/resources/img/header-bg.jpg'/>");
            }
        </style>

    <body>
        <jsp:include page="navbar.jsp"/>      
  
  <div class="py-5">
    <div class="container">
        
        <div class="col-md-12"><i class="d-block  fa fa-2x" style="text-align: center">Hasil analisa perhitungan</i></div>
      </div>
      </br>
      <div class="row">
        <div class="col-md-2"> </div>
        <div class="col-md-8">
          <table class="table text-center">
            <tbody>
              <tr>
                <td>Pokok Cicilan</td>
                <td class="bg-light">
                  <h3>${pokok}</h3>
                </td>
              </tr>
              <tr>
                <td>Bunga Cicilan</td>
                <td class="bg-light">
                  <h3>${bunga}</h3>
                </td>
              </tr>
              <tr>
                <td>Total Cicilan</td>
                <td class="bg-light">
                  <h3>${total}</h3>
                </td>
              </tr>
              <tr>
                <td>Cicilan Perbulan</td>
                <td class="bg-light">
                  <h3>${cicilan}</h3>
                </td>
              </tr>
              <tr>
                <td>Penghasilan</td>
                <td class="bg-light">
                  <h3>${penghasilan}</h3>
                </td>
              </tr>
              <tr>
                <td>Batas Kredit Anda</td>
                <td class="bg-light">
                  <h3>${limit}</h3>
                </td>
              </tr>
              <tr>
              <c:if test="${setuju==true}"> 
                <td>Kredit Anda Disetujui</td>
                <td class="bg-light"><i class="fa fa-check fa-lg text-primary"></i></td>
                </c:if>
              <c:if test="${setuju==false}">
                <td>Kami Tidak Setuju Kredit Anda </td>
                <td class="bg-light"><i class="fa fa-times fa-lg text-primary"></i></td>
                </c:if>
              </tr>
              <tr>
                <td></td>
                <td class="bg-light">
                  <a href="#" class="btn btn-outline-primary text-primary btn-sm">Belanjo Online</a>
                </td> 
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
    </body>
</html>
