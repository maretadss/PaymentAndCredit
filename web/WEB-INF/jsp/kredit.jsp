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
                background-image: url("<c:url value='/resources/img/image.gif'/>");
                width: 100%;
            }
        </style>
    </head>
    <body class="background">
        <jsp:include page="navbar.jsp"/> 

        <div class="container ">
            <div class="card ">
    <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
                <div class="card-header">
                    <legend>Credit Aplication Simulation</legend>    
                </div>
</div>
                <div class="card-body">
                        <img src="<c:url value='/resources/img/image.gif'/>" class="float-right p-0" >
                    <form:form action="${pageContext.request.contextPath}/credit/check" modelAttribute="credit" method="POST" >
                        <table>
                            <tr><td><form:label path="hargaBarang">Harga Barang</form:label></td>
                                <td><form:input path="hargaBarang" class="form-control"/></tr>

                            <tr><td><form:label path="bungaTahunan">Bunga Tahunan</form:label></td>
                                <td><form:input path="bungaTahunan" class="form-control"/></td></tr>

                            <tr><td><form:label path="durasi">Durasi</form:label></td>
                                <td><form:input path="durasi" class="form-control"/></td></tr>

                            <tr><td><form:label path="uangMuka">Uang Muka</form:label></td>
                                <td><form:input path="uangMuka" class="form-control"/></td></tr>

                            <tr><td><form:label path="gajiPokok">Gaji Pokok</form:label></td>
                                <td><form:input path="gajiPokok" class="form-control"/></td></tr>

                            <tr><td><form:label path="bonus">Bonus</form:label></td>
                                <td><form:input path="bonus" class="form-control"/></td></tr>

                            <tr><td><form:label path="pendapatanLain">Pendapatan Lain</form:label></td>
                                <td><form:input path="pendapatanLain" class="form-control"/></td></tr

                            <tr><td><form:label path="tanggungan">Tanggungan</form:label></td>
                                <td><form:input path="tanggungan" class="form-control"/></td></tr>
                            </br>
                            <tr><td></td><td><form:button name="submitButton" value="Submit" class="btn btn-primary btn-sm">Submit</form:button></td></tr>            
                            </table>            
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
