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
        </style>
    </head>
    <body>
        
        <div class="container">
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
                            
                            <tr><td></td><td><form:button name="submitButton" value="Submit">Submit</form:button></td></tr>            
                            </table>            
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
