<%-- 
    Document   : viewCart
    Created on : Feb 21, 2023, 1:39:13 PM
    Author     : long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Your cart</title>
        <style>
            h1{
                color: cornflowerblue;
                text-align: center;
            }

        </style>
    </head>

    <body>

        <h1>----Inventory----</h1>
        <c:set var="cart" value="${sessionScope.CART.items}" />
        <c:set var="userProduct" value="${sessionScope.USER_PRODUCTS}" />
        <c:if test="${not empty cart}">
            <form action="RemoveCartServlet">
                <table border="1">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Book Name</th>                         
                            <th>Quantity</th>
                            <th>Price</th>
                            <th>Total</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="item" items="${cart}" varStatus="counter">
                            <c:set var="productId" value="${item.key}" />
                            <c:set var="quantity" value="${item.value}" />
                            <c:forEach var="product" items="${userProduct}">
                                <c:if test="${product.productID eq productId}">
                                    <tr>
                                        <td>
                                            ${counter.count}
                                            .</td>
                                        <td>
                                            ${product.name}
                                        </td>
                                        <td>
                                            ${quantity}
                                        </td>
                                        <td>
                                            ${product.price}
                                        </td>
                                        <td>
                                            ${product.price*quantity}
                                        </td>
                                        <td>
                                            <input type="submit" name="chkItem" 
                                                   value="${productId}" />
                                        </td>
                                    </tr>
                                </c:if>

                            </c:forEach>
                        </c:forEach>
                        <tr>
                            <td colspan="5">
                                <a href="showProduct">Add More Books to Your Cart.</a>  
                            </td>

                        </tr>
                    </tbody>
                </table>
            </form>
        <li>
            <a href="shipping-details.jsp" class="header-icon">Buy</a>
        </li>
    </c:if>
    <c:if test="${empty cart}">
        <h2>
            No cart is existed!!!!! 
        </h2>
        <a href="ShowProductController">Click here to buy more</a>  
    </c:if>


</body>
</html>
