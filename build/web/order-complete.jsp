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
        <title>JSP Page</title>
    </head>
    <body>

        <c:if test="${sessionScope.orderListCpl.size() != 0}">
            <c:if test="${sessionScope.LOGIN_USER != null}">


                <main>

                    <h3>Order complete</h3>
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
                           
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${sessionScope.orderListCpl}" var="order">
                            <tr>
                                <td>${order.orderID}</td>
                                <td>${order.address}</td>
                                <td>${order.status}</td>
                                <td>${order.orderDate}</td>
                                <td>${order.totalPrice}</td>
                                <td>${order.note}</td>
                        <form action="OrderDetailController" method="POST">
                            <td>
                                <input type="hidden" name="orderID" value="${order.orderID}">

                                <input type="submit" value="View Your Order Detail">
                            </td>
                        </form>

                    

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


</c:if>
<c:if test="${sessionScope.orderListCpl.size() == 0}"><h1> Don't have any order complete</h1></c:if>

</body>
</html>
