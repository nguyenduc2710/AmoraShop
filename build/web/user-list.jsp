<%-- 
    Document   : UserList
    Created on : Feb 6, 2023, 5:47:09 PM
    Author     : thaiq
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <form action="ShowUserController" method="GET">
        <input type="text" name="name" value="" />
        <input type="submit" value="search" />
    </form>
</head>
<body>
    <div id="layoutSidenav_content">

        <main>

            <div class="card mb-4">
                <div class="card-header">
                    <i class="bi bi-table"></i>
                    USERS LIST
                </div>
                <div class="card-body">
                    <table   border="1">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>gender</th>  
                                <th>Phone number</th>  
                                <th>Address</th>  
                                <th>Status</th>
                                <th>Role</th>
                                <th>Setting</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>gender</th>  
                                <th>Phone number</th>  
                                <th>Address</th>  
                                <th>Status</th>
                                <th>Role</th>
                                <th>Setting</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <c:forEach items="${sessionScope.list}" var="user">
                                <tr>
                                    <td>${user.userID}</td>
                                    <td>${user.fullName}</td>
                                    <td>${user.email}</td>
                                    <td>${user.password}</td>
                                    <td>${user.gender}</td>
                                    <td>${user.phoneNumber}</td>
                                    <td>${user.address}</td>

                                    <c:if test="${user.status == 'ACTIVE'}">
                                        <td><img class="circle" src="images/active.png" style="width:10px;"></td>
                                        </c:if>
                                        <c:if test="${user.status != 'ACTIVE'}">
                                        <td><img class="circle" src="images/inactive.png" style="width:10px;"></td>
                                        </c:if>

                                    <c:choose>
                                        <c:when test="${user.roleID == 1}">
                                            <td style="color: red;">Admin</td>
                                        </c:when>
                                        <c:when test="${user.roleID == 2}">
                                            <td style="color: green;">Staff</td>
                                        </c:when>
                                        <c:when test="${user.roleID == 3}">
                                            <td style="color: blue;">Customer</td>
                                        </c:when>
                                        <c:otherwise>
                                            <td>User</td>
                                        </c:otherwise>
                                    </c:choose>
                                    <td><a href="UserDetailController?userID=${user.userID}">Update</a>           
                                    </td>    


                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>


</body>


</html>
