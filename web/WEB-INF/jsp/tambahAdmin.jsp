<%-- 
    Document   : tambahAdmin
    Created on : 03-Jan-2018, 10:20:43
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
        <title>Admin | Tambah Admin</title>
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
                    Tambah Admin
                </div>
                <table id="customers">
                    <form:form action="${pageContext.request.contextPath}/admin/saveAdd" modelAttribute="adminBean" method="POST">   
                        <thead>
                            <tr>
                                <th>Username</th>
                                <th>Password</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tr>

                            <td><form:input path="username" class="form-control"/><form:errors path="username" cssClass="error"/> </td>
                            <td><form:password path="password" class="form-control"/> <form:errors path="password" cssClass="error"/></td>

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
