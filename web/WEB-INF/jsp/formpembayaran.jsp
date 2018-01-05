<%-- 
    Document   : formpembayaran
    Created on : Jan 2, 2018, 10:57:46 AM
    Author     : user
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .background {
                background-image: url("<c:url value='/resources/img/header-bg.jpg'/>");
            }
        </style>
            
    </head>
    <body>

        <jsp:include page="navbar.jsp"/> 
        <!-- FORM KE2 -->
        <div class="container">
            <div class="card m-5"> 
                <div class="card-header progress-bar progress-bar-striped bg-info">
                    <h1 style="text-align: center" class="text-light">Form Pembayaran</h1>
                </div>
                <div class="card-body text-light background">
                <form:form action="#" modelAttribute="paid" method="POST" class="form-group">

                        <div class="form-group row">
                            <form:label path="nama" class="col-sm-2 col-form-label">Full Name</form:label>
                            <form:input type="text" path="nama" class="form-control col-md-3" required="true"></form:input>
                        </div>
                        <div class="form-group row">
                             <tr>
                                <td><form:label path="alamat" class="col-sm-2 col-form-label">Address</form:label></td>
                                <td><form:input type="text" path="alamat" class="form-control col-md-3" required="true"></form:input></td>
                            </tr>
                        </div>
                        <div class="form-group row">
                            <tr>
                                <td><form:label path="email" class="col-sm-2 col-form-label">Email</form:label></td>
                                <td><form:input type="email" path="email" class="form-control col-md-3" required="true"></form:input></td>
                            </tr>
                        </div>
                        <div class="form-group row">
                             <tr>
                                <td><form:label path="telp" class="col-sm-2 col-form-label">Phone Number</form:label></td>
                                <td><form:input type="text" path="telp" class="form-control col-md-3" required="true"></form:input></td>
                            </tr>
                        </div>
                        <div class="form-group row">
                           <label for="exampleFormControlSelect1" class="col-sm-2 col-form-label">Metode Pembayaran</label>
                               <select class="form-control col-md-3" id="exampleFormControlSelect1">
                                <option>Transfer</option>
                                <option>Credit Card</option>
                                <option>Alfamart</option>
                                    </select>
                        </div>
                        <div class="form-group ">
                        <form:button  name="submitButton1" value="Submit" class="btn btn-primary col-lg-5">Submit</form:button>    
                        </div>
                    </form:form>
        </div>
        </div>
        </div>
</body>
</html>
