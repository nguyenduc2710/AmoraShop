<%-- 
    Document   : creatproduct
    Created on : Feb 9, 2023, 3:34:39 PM
    Author     : dangn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Product</title>
    </head>
    <body>
        <h1>Insert New Product</h1>
        <form action="MainController" method="POST">
            <tr><td>Product Name</td><td><input type="text" name="newproductname" required=""/></td></tr> 
            <tr><td>Quantity</td><td><input type="text" name="newquantity" required=""/></td></tr>
            <tr><td>Status</td><td><input type="text" name="newstatus" required=""/></td></tr>
            <tr><td>Description</td><td><input type="text" name="newdescription" required=""/></td></tr>
            <tr><td>Capacity</td><td><input type="text" name="newcapacity" required=""/></td></tr>
            <tr><td>Brand</td><td><input type="text" name="newbrand" required=""/></td></tr>
            <tr><td>Price</td><td><input type="text" name="newprice" required=""/></td></tr>
            <tr><td>Category ID</td><td><input type="text" name="newcategoryid" required=""/></td></tr>
            <tr><td><input type="submit" name="action" value="Create"/></td></tr>
        </form>
    </body>
</html>
