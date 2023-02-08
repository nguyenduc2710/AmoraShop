<%-- 
    Document   : product-list
    Created on : Feb 6, 2023, 10:35:37 PM
    Author     : thaiq
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product List</title>
    </head>
    <body>
       <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Quantity</th>
            <th style="padding-left: 20px">Status</th><!-- comment -->
            <th>Description</th><!-- comment -->
            <th>Capacity</th><!-- comment -->
            <th>Brand</th><!-- comment -->
            <th>Price</th>
            <th>Category ID</th>
        </tr>
        <c:forEach items="${requestScope.products}" var="product">
            <tr>
                <td>${product.productID}</td>
                <td>${product.name}</td>
                <td>${product.quantity}</td>
                <td style="padding-left: 20px">${product.status}</td>
                <td style="padding-left: 20px">${product.description}</td>
                <td>${product.capacity}</td>
                <td>${product.brand}</td>
                <td style="padding-left: 20px">${product.price}</td>
                <td style="padding-left: 20px">${product.categoryID}</td>
            </tr>
        </c:forEach>
    </table>
    </body>
</html>
