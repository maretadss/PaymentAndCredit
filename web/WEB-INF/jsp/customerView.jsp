<%-- 
    Document   : test
    Created on : Dec 31, 2017, 10:10:39 AM
    Author     : user
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="<c:url value='/resources/css/bootstrap.css'/>" rel="stylesheet">
        <title>Admin | Customer</title>
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
                Kelola Customer
            </div>
            <table id="customers">
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
            <c:forEach var="e" items="${admins}">
                <tr>
                <tr>
                    <td><a href="${e.customerId}">${e.customerId}</a></td>
                    <td>${e.customerName} </td>
                    <td>${e.customerEmail} </td>
                    <td>${e.customerAddress} </td>
                    <td>${e.customerTelepon} </td>
                    <td>${e.customerTanggungan}</td>
                    <td>${e.customerGaji}</td>
                    <td>${e.customerPenghasilanTambahan}</td>
                    <td><a href="${pageContext.request.contextPath}/customer/delete/${e.customerId}"><button class="btn btn-danger">Delete</button></a> <a href="${pageContext.request.contextPath}/customer/edit/${e.customerId}"><button class="btn btn-warning">Edit</button></a></td>
                </tr> 
                </tr>      
            </c:forEach>
        </table>
        
        </div>
    </div>
      </c:if>
        <c:if test="${empty sessionScope.user}">
                    YOU NEED TO LOG IN FIRST
                </c:if>
        
    </body>
</html>
