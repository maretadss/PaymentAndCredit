<%-- 
    Document   : cashView
    Created on : Jan 3, 2018, 9:33:07 AM
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
        <title>Admin | Cash</title>
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
                Kelola Cash
            </div>
            <table id="customers">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Date</th>
                    <th>Status</th>
                     <th>Action</th>
                    

                </tr>
            </thead>
            <c:forEach var="e" items="${cash}">
                <tr>
                <tr>
                    <td><a href="${e.cashId}">${e.cashId}</a></td>
                    <td>${e.paymentId.customerId.customerName} </td>
                    <td>${e.cashPrice} </td>
                    <td>${e.cashDate} </td>
                    <td>${e.cashStatus}</td>

                    <td><a href="${pageContext.request.contextPath}/cash/deleteCash/${e.cashId}"><button class="btn btn-danger">Delete</button></a></td>
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
