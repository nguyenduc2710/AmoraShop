<%-- 
    Document   : order-processing-staff
    Created on : Mar 2, 2023, 1:28:28 PM
    Author     : long
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./assets/bootstrap-5.0.2-dist/css/bootstrap.css">
        <title>JSP Page</title>
    </head>
    <body>

        <c:if test="${sessionScope.orderList.size() != 0}">
            <c:if test="${sessionScope.LOGIN_USER != null}">


                <main>

                    <h3>Order Processing</h3>
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
                        <c:forEach items="${sessionScope.orderList}" var="order">
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

                                        <input type="submit" value="View Your Order Detail">
                                    </form>
                                </td>

                                <c:if test="${order.status =='PROCESSING'}">
                                    <td>
                                        <form action="UpdateStatusOrderController" method="POST">
                                            <input type="hidden" name="orderID" value="${order.orderID}">
                                            Trang thái đơn hàng
                                            <select name="status" onchange="this.form.submit()">
                                                <option value="processing">${order.status}</option>
                                                <option value="cancel">Cancel</option>
                                                <option value="confirmed">Confirmed</option>
                                            </select>
                                        </form>
                                    </td>
                                </c:if>

                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

            </main>

        </c:if>
        <h1>${error}</h1>


        <c:if test="${not empty cancel}">
            <h1 class="green">${cancel}</h1>
        </c:if>

        <c:if test="${not empty confirmed}">
            <h1 class="green">${confirmed}</h1>
        </c:if>


    </c:if>
    <c:if test="${sessionScope.orderList.size() == 0}"><h1> Don't have any order processing</h1></c:if>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>

</html>
