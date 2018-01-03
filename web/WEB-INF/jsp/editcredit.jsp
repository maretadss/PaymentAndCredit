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
        <title>JSP Page</title>
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
        <jsp:include page="header.jsp"/>
        
      <div class="col-md-10 content">
        <div class="panel panel-default">
            <div class="panel-heading">
                Customers
            </div>
            <table id="customers">
                <form:form action="/PaymentAndCredit/credit/edit/save" modelAttribute="creditBean" method="POST">   
            <thead>
                <tr>
                    <th>Base Price</th>
                    <th>Interest Rate</th>
                    <th>Down Payment</th>
                    <th>Duration</th>
                     <th> </th>
                    

                </tr>
            </thead>
                <tr>
                     
                    <td><form:input path="creditBasePrice" class="form-control" id="creditBasePrice" value="${credit.creditBasePrice}"/> </td>
                    <td><form:input path="creditInterestRate" class="form-control" id="creditInterestRate" value="${credit.creditInterestRate}"/> </td>
                    <td><form:input path="creditDownPayment" class="form-control" id="creditDownPayment" value="${credit.creditDownPayment}"/> </td>
                    <td><form:input path="creditDuration" class="form-control" id="creditDuration" value="${credit.creditDuration}"/></td>
   
                   <td><button type="submit" value="Submit" class="btn btn-default">Save</button></td >
                        
                        
                    </form:form>
                </tr> 
                   
        </table>
        
        </div>
    </div>
        </div>
  
    </body>
</html>
