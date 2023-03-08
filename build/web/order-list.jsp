<%-- 
    Document   : order-user
    Created on : Feb 25, 2023, 11:36:12 AM
    Author     : long
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.css">
        <link rel="stylesheet" href="node_modules/bootstrap/dist/js/bootstrap.bundle.js">
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

        <div class="dropdown">
            <button class="dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Filter Orders
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#" onclick="filterOrders('all')">All Orders</a>
                <a class="dropdown-item" href="#" onclick="filterOrders('PROCESSING')">Order Processing</a>
                <a class="dropdown-item" href="#" onclick="filterOrders('FINISHED')">Order Completed</a>
            </div>
        </div>

        <c:set var="o" value="${sessionScope.odto}" />
        <c:if test="${sessionScope.odto.size() != 0}">
            <c:if test="${sessionScope.LOGIN_USER != null}">


                <main>

                    <h3> History Your Order</h3>
                </div>


                <table border="1">
                    <thead>
                        <tr>
                            <th>orderID</th>
                            <th>Address</th>
                            <th>Status</th>
                            <th>Order Date</th>
                            <th>Total Bill</th>
                            <th>Note</th>
                            <th>View Details</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${o}" var="order">
                            <tr>
                                <td>${order.orderID}</td>
                                <td>${order.address}</td>
                                <td>${order.status}</td>
                                <td>${order.orderDate}</td>
                                <td>${order.totalPrice}</td>
                                <td>${order.note}</td>
                                
                                <td>
                                    <form action="OrderDetailController" method="POST">
                                        <input type="hidden" name="orderID" value="${order.orderID}">
                                        <input type="hidden" name="status" value="${order.status}">
                                        <input type="hidden" name="totalPrice" value="${order.totalPrice}">
                                        <input type="hidden" name="orderDate" value="${order.orderDate}">

                                        <input type="submit" value="View Your Order Detail">
                                    </form>
                                </td>

                                <c:if test="${order.status =='cancel' ||order.status =='confirmed' }">

                                    <td>
                                        <span>
                                            <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#blockBtn${order.orderID}">
                                                <i class="bi bi-trash"></i> Delete
                                            </button>
                                            <!-- Modal -->
                                            <div class="modal fade" id="blockBtn${order.orderID}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Warning</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="p-4 text-center fs-3"
                                                             style="color: red;">
                                                            Are you sure you want to delete order "<span class="text-dark">${order.orderID}</span>" from your order list?
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                            <a href="DeleteOldOrder?orderID=${order.orderID}" class="btn btn-outline-danger"><i class="bi bi-trash"></i>Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </span>
                                    </td>
                                </c:if>
                                <c:if test="${order.status =='PROCESSING'}">

                                    <td>  
                                        <span>
                                            <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#blockBtn${order.orderID}">
                                                <i class="bi bi-trash"></i> Cancel
                                            </button>
                                            <!-- Modal -->
                                            <div class="modal fade" id="blockBtn${order.orderID}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Warning</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="p-4 text-center fs-3"
                                                             style="color: red;">
                                                            Are you sure you want to Cancel order "<span class="text-dark">${order.orderID}</span>" from your order list?
                                                        </div>
                                                        <div class="modal-footer">
                                                            <form action="UpdateStatusOrderController" method="get">
                                                                <input type="hidden" name="orderID" value="${order.orderID}">
                                                                <input type="hidden" name="status" value="cancel">
                                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                                <button type="submit" class="btn btn-outline-danger"><i class="bi bi-trash"></i>Cancel Order</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </span>
                                    </td>



                                </c:if>

                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>
</div> 
</c:if>



<h1>${error}</h1>


<h1 class="green">${cancel}</h1>

<h1 class="green">${requestScope.Delete}</h1>

</c:if>
<c:if test="${sessionScope.odto.size() == 0}">
    <h1>You don't have any orders</h1>
</c:if> 
<!--        <div class="dropdown">
            <button class="dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Filter Orders
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#" onclick="filterOrders('all')">All Orders</a>
                <a class="dropdown-item" href="#" onclick="filterOrders('processing')">Order Processing</a>
                <a class="dropdown-item" href="#" onclick="filterOrders('cancel,confirmed')">Order Completed</a>
            </div>
        </div>

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
                    <h2 class="category-title">Your order</h2>
                    <div class="category-sort-cotainer">
                        <select class="category-sort-options">
                            <option value="all-order" onclick="filterOrders('all')">All Orders</option>
                            <option value="finished-order" onclick="filterOrders('processing')">Order Processing</option>
                            <option value="processing-order" onclick="filterOrders('cancel,confirmed')">Order Completed</option>
                        </select>
                    </div>
                </div>
                
                <div class="order-details-wrap">

                    <div class="order-title">
                        <div class="order-title-left">
                            <div class="order-id">
                                Order ID: <b>23</b>
                            </div>
                            <div class="order-status">Status: <span style="color: #ee4d2d;">PROCESSING</span></div>
                        </div>
                        <div class="order-title-right">
                            <div class="order-date">
                                Date order: 22/2/2088
                            </div>
                        </div>
                    </div>

                    <div class="order-item-list">
                        <div class="item-wrap">
                            <div class="order-item">
                                <div class="product-image-container">
                                    <img src="assets/images/FreshOcean.png" alt="" class="cart-item-img">
                                </div>
                                <div class="order-describe">
                                    <div class="order-item-name">
                                        Fresh Ocean
                                    </div>
                                    <div class="order-item-capacity">
                                        100ml
                                    </div>
                                    <div class="order-item-price">
                                        50$
                                    </div>
                                    <div class="order-item-quantity">
                                        x2
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="order-footer">
                        <div class="order-total-money">
                            <i class="order-icon">
                                <img src="assets/font/paid_black_24dp.svg" alt="Paid">
                            </i>
                            Total:&nbsp;<span>3322$</span>
                        </div>

                        <div class="order-footer-actions">
                            <div class="payment-navigations">
                                <button class="payment-actions">
                                    Cancel Order
                                </button>
                                <button class="payment-actions">
                                    Contact Us
                                </button>
                            </div>
                        </div>
                    </div>
                </div>-->




<form action="ShowProductController" method="POST">
    <td>
        <input type="submit" value="Click here to buy more!">
    </td>
</form>

<script>
    function filterOrders(status) {
        var rows = document.getElementsByTagName("tr");
        for (var i = 0; i < rows.length; i++) {
            var row = rows[i];
            var cells = row.getElementsByTagName("td");
            if (cells.length > 0) {
                var orderStatus = cells[2].innerHTML;
                if (status.includes(orderStatus) || status === 'all') {
                    row.style.display = "";
                } else {
                    row.style.display = "none";
                }
            }
        }
    }

</script>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>

</html>
