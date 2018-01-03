<%-- 
    Document   : editCustomer
    Created on : Dec 31, 2017, 5:10:49 PM
    Author     : user
--%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="<c:url value='/resources/css/bootstrap.css'/>" rel="stylesheet">
        <title>Admin | Edit Customer</title>
         <style>
            #customers {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #customers tr:nth-child(even){background-color: #f2f2f2;}

            #customers tr:hover {background-color: #ddd;}

            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #2F4F4F;
                color: white;
                
                .btn {
    border: none;
    color: white;
    padding: 14px 28px;
    font-size: 16px;
    cursor: pointer;
}
.info {background-color: #f44336;} /* Blue */
.info:hover {background: #da190b;}
            }
        </style>
    </head>
    <body>
        <c:if test="${not empty sessionScope.user}">
        <jsp:include page="header.jsp"/>
        
      <div class="col-md-10 content">
        <div class="panel panel-default">
            <div class="panel-heading">
                Edit Customer
            </div>
            <table id="customers">
                <form:form action="${pageContext.request.contextPath}/customer/saveEdit" modelAttribute="customerBean" method="POST">   
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th>Dependant</th>
                    <th>Salary</th>
                    <th>Extra Revenue</th>
                    <th>Action</th>
                    

                </tr>
            </thead>
                <tr>
                     
                    <td><a href="${customer.customerId}">${customer.customerId}</a></td>
                    <td><form:input path="customerName" class="form-control" id="customerName" value="${customer.customerName}"/><form:errors path="customerName" cssClass="error"/> </td>
                    <td><form:input path="customerEmail" class="form-control" id="customerEmail" value="${customer.customerEmail}"/> <form:errors path="customerEmail" cssClass="error"/></td>
                    <td><form:input path="customerAddress" class="form-control" id="customerAddress" value="${customer.customerAddress}"/><form:errors path="customerAddress" cssClass="error"/> </td>
                    <td><form:input path="customerTelepon" class="form-control" id="customerTelepon" value="${customer.customerTelepon}"/><form:errors path="customerTelepon" cssClass="error"/></td>
                    <td><form:input path="customerTanggungan" class="form-control" id="customerAddress" value="${customer.customerTanggungan}"/> <form:errors path="customerTanggungan" cssClass="error"/></td>
                    <td><form:input path="customerGaji" class="form-control" id="customerTelepon" value="${customer.customerGaji}"/><form:errors path="customerGaji" cssClass="error"/></td>
                    <td><form:input path="customerPenghasilanTambahan" class="form-control" id="customerTelepon" value="${customer.customerPenghasilanTambahan}"/><form:errors path="customerPenghasilanTambahan" cssClass="error"/></td>
   
                   <td><button type="submit" value="Submit" class="btn btn-success">Save</button></td >
                        
                        
                    </form:form>
                </tr> 
                   
        </table>
        
        </div>
    </div>
                    </c:if>
        <c:if test="${empty sessionScope.user}">
                    YOU NEED TO LOG IN FIRST
                </c:if>
  
    </body>
</html>
