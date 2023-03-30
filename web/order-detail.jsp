<%-- 
    Document   : order-detail
    Created on : Feb 27, 2023, 12:08:58 PM
    Author     : long
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.css">
        <link rel="stylesheet" href="node_modules/bootstrap/dist/js/bootstrap.bundle.js">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="assets/css/base.css">
        <link rel="stylesheet" href="assets/css/home.css">
        <link rel="stylesheet" href="assets/css/products.css">
        <link rel="stylesheet" href="assets/css/cart.css">
        <link rel="stylesheet" href="assets/css/order.css">
        <link rel="icon" type="image/png" href="assets/images/LogoDoneEdited.png" />
        <title>AmoraShop</title>

        <link rel="stylesheet" href="./assets/bootstrap-5.0.2-dist/css/bootstrap.css">

        <style>
            .dropdown:hover .dropdown-menu {
                display: block;
            }
        </style>
    </head>
    <body>
        <c:set var="o" value="${sessionScope.odto}" />



        <jsp:include page="components/header.jsp" />

        <div class="body-container">
            <div class="bread-crumb-container">
                <div class="bread-crumbs">
                    <a href="homePage.jsp" class="main-page link">Home</a>
                    <div class="slash">/</div>
                    <a href="products-user-page.jsp" class="main-page link">Products</a>
                    <div class="slash">/</div>
                    <a href="#" class="main-page link">Orders</a>
                </div>
            </div>
            <div class="user-order-container">
                <div class="product-list-header">
                    <h2 class="category-title">Your order detail</h2>

                </div>

                <div class="order-details-wrap">

                    <div class="order-title">
                        <div class="order-title-left">
                            <div class="order-id">
                                Order ID: <b><%= request.getParameter("orderID") %></b>
                            </div>
                            <div class="order-status">
                                Status: <span style="color: #ee4d2d;"><%= request.getParameter("status")%></span>
                            </div>
                        </div>
                        <div class="order-title-right">
                            <div class="order-date">
                                Date order: <c:out value="${param.orderDate}" />
                            </div>
                        </div>
                    </div>

                    <div class="order-item-list">

                        <c:forEach items="${sessionScope.orderDt}" var="orderDt">
                            <div class="item-wrap">
                                <div class="order-item">
                                    <div class="product-image-container">
                                        <img src="${orderDt.image}" alt="${orderDt.name}" class="cart-item-img">
                                    </div>
                                    <div class="order-describe">
                                        <div class="order-item-name">
                                            ${orderDt.name}
                                        </div>
                                        <div class="order-item-capacity">
                                            ${orderDt.capacity}ml
                                        </div>
                                        <div class="order-item-price">
                                            <fmt:formatNumber value="${orderDt.totalPrice}" pattern="#.##"/>$                        

                                            <c:if test="${requestScope.status eq 'FINISHED' && sessionScope.LOGIN_USER.roleID eq 2}">
                                                <form action="CheckOrderByUserController" method="POST">
                                                    <input type="hidden" value="${orderDt.productID}" name="productID"/>
                                                    <input type="hidden" value="${sessionScope.LOGIN_USER.userID}" name="userID"/>
                                                    <input type="submit" value="Review">
                                                </form>                                               
                                            </c:if>
                                        </div>
                                        <div class="order-item-quantity">
                                            x${orderDt.quantity}
                                        </div>                                        
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>

                    <div class="order-footer">
                        <div class="order-footer-info">
                            <div class="order-user-info" style="width: 50%">
                                Customer: ${requestScope.USER.fullName}
                                <div class="slash"></div>
                                Address: ${requestScope.USER.address}
                            </div>
                            <div class="order-total-money">
                                <i class="order-icon">
                                    <img src="assets/font/paid_black_24dp.svg" alt="Paid">
                                </i>
                                Total:&nbsp;<span><%= request.getParameter("totalPrice") %></span>
                            </div>    
                        </div>


                        <div class="order-footer-actions">

                            <c:if test="${sessionScope.LOGIN_USER.roleID eq 2}">

                                <div class="payment-navigations">
                                    <c:if test="${requestScope.status eq 'PROCESSING'}">
                                        <form action="AuthorizePaymentServlet" method="POST">
                                            <input type="hidden" name="orderID" value="${sessionScope.orderID}">
                                            <input type="hidden" name="total" value="${sessionScope.total}">
                                            <button type="submit" class="payment-actions payment-paypal">
                                                <img src="assets/font/logo-paypal.svg" class="paypal-icon" alt="Paypal icon"/>
                                                Pay with PayPal
                                            </button>
                                        </form>    


                                        <button class="payment-actions">
                                            Cancel Order
                                        </button>
                                    </c:if>


                                    <!-- Button trigger modal -->
                                    <button type="button" class="payment-actions" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                        Contact Us
                                    </button>

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title fs-2" id="exampleModalLabel">Contact us</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    Thank you for choosing us, if you have any question!? Contact us below!
                                                    <br>
                                                    <a href="tel:0836935789" class="inner-footer-text">   
                                                        Phone: 0836935789
                                                    </a> <br>
                                                    <a href="mailto:hongducnguyenho0@gmail.com" class="inner-footer-text">
                                                        Gmail: hongducnguyenho0@gmail.com
                                                    </a>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary fs-4" data-bs-dismiss="modal">Close</button>                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:if>

                        </div>

                    </div>
                </div>
            </div>
            <jsp:include page="components/footer.jsp" />
            <script src="assets/js/script.js"></script>

    </body>
</html>
