<%-- 
    Document   : admin
    Created on : Feb 6, 2023, 2:43:19 PM
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
        <h1>Admin Page Here</h1>

        <form action="ShowUserController" method="POST">
            <input type="submit" value="Show List User">
        </form>

        <a href="product-list.jsp">Product List</a>

        <form action="LogoutController" method="POST">
            <input type="submit" value="Logout">
        </form>
</html>
