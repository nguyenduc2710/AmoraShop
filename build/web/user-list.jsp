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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>gender</th><!-- comment -->
            <th>Phone number</th><!-- comment -->
            <th>Address</th><!-- comment -->
            <th>Status</th>
            <th>Role</th>
        </tr>
        <c:forEach items="${requestScope.users}" var="user">
            <tr>
                <td>${user.userID}</td>
                <td>${user.fullName}</td>
                <td>${user.email}</td>
                <td>${user.password}</td>
                <td>${user.gender}</td>
                <td>${user.phoneNumber}</td>
                <td>${user.address}</td>
                <td>${user.status}</td>
                <td>${user.roleID}</td>
            </tr>
        </c:forEach>
    </table>
    </body>
</html>
