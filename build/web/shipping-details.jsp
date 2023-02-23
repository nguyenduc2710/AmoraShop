<%-- 
    Document   : shipping-details
    Created on : Feb 23, 2023, 1:55:52 PM
    Author     : long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h3>Information of customer</h3>
    <form action="CheckoutController" method="POST">
        <div class="mb-3">
    <form action="CheckoutController"
            <label>fullName</label>
            <input value="${sessionScope.LOGIN_USER.getFullName()}" type="text" name="fullName">

        </div>
        <div class="mb-3">
            <label>Address</label>
            <input value="${sessionScope.LOGIN_USER.getAddress()}" type="text" name="address">

        </div>
        <div class="mb-3">
            <input value="${sessionScope.LOGIN_USER.getStatus()}" type="hidden" name="status">
        </div>
        <div class="mb-3">

            <input value="${sessionScope.LOGIN_USER.getUserID()}" type="hidden" name="userID">

        </div>
        <div class="mb-3">
            <label for="note" class="form-label">Note</label>
            <textarea class="form-control" id="note" name="note" rows="3"></textarea>
        </div>
        <button type="submit" class="btn btn-primary w-100">Submit</button>
    </form>
    </body>
</html>
