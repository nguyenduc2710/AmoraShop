<%-- 
    Document   : checkout
    Created on : Feb 21, 2023, 9:57:57 PM
    Author     : long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Page</title>
   
</head>
<body>
    <h1>Your Bill: </h1>
    <c:set var="errors" value="${requestScope.CHECKOUT_ERROR}"/>
    <c:if test="${not empty errors}">
        <font style="color: red">Your order has not been checked out successfully!!!</font><br/>
        <font>${errors}</font><br/>
        <a href="ViewCartController">Back to your cart!</a>--------
    </c:if>
    <c:if test="${empty errors}">
        <c:set var="cart" value="${sessionScope.CART.items}"/>
        <c:set var="total" value="${sessionScope.TOTAL_BILL}"/>
        <c:set var="date" value="${sessionScope.DATE}"/>
        <c:set var="orderId" value="${sessionScope.ORDER_ID}"/>
        <font style="color:+ green">Your order has been checked out successfully!</font><br/>
        Your order id: ${orderId} <br/>
        Date buy: ${date} <br/>
        <table border="1">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>perfumes name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="items" items="${cart}" varStatus="counter">
                    <c:set var="productID" value="${items.getKey()}"/>
                    <c:set var="quantity" value="${items.getValue()}"/>
                    <c:forEach var="product" items="${sessionScope.USER_PRODUCTS}">
                        <c:if test="${product.productID eq productID}">
                          <tr>
                        <td>
                            ${counter.count}
                        </td>
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
                    </tr>

                        </c:if>

                    </c:forEach>
                   
                </c:forEach>
                <tr>
                    <td colspan="5" style="color: blue">
                        TOTAL BILL: ${total}$
                    </td>
                </tr>
            </tbody>
        </table>
        <c:remove scope="session" var="CART"/>
    </c:if>
    <a href="ShowProductController">Click here to buy more!</a> 




</body>
</html>
