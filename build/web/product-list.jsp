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
        <form action="MainController">
            Search<input type = "text" name="search" value="${param.valueSearch}">
            <input type="submit" name="action" value="Search"/>
        </form>
        <c:if test="${requestScope.products != null}">   
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
                    <th>Delete</th>
                    <th>Update</th>
                </tr>
                <c:forEach items="${requestScope.products}" var="product">
                    <form action="MainController">
                        <tr>
                            <td>${product.productID}</td>
                            <input type="hidden" name="productID" value="${product.productID}"/>
                            <input type="hidden" name="Search" value="${param.Search}"/>
                            <td>
                                <input type="text" name="pName" value="${product.name}" required=""/>
                            </td>
                            <td>
                                <input type="text" name="pQuantity" value="${product.quantity}" required=""/>
                            </td>
                            <td 
                                style="padding-left: 20px">
                                <input type="text" name="pStatus" value="${product.status}" required=""/>
                            </td>
                            <td 
                                style="padding-left: 20px">
                                <input type="text" name="pDescrip" value="${product.description}" required=""/> 
                            </td>
                            <td> 
                                <input type="text" name="pCapacity" value="${product.capacity}" required=""/> 
                            </td>
                            <td>
                                <input type="text" name="pBrand" value="${product.brand}" required=""/> 
                            </td>
                            <td 
                                style="padding-left: 20px">
                                <input type="text" name="pPrice" value="${product.price}" required=""/>
                            </td>
                            <td 
                                style="padding-left: 20px">
                                <input type="text" name="pCategory" value="${product.categoryID}" required=""/>
                            </td>
                            <td>
                                <!--delete-->
                                
                                <c:url var="delete" value="MainController">
                                    <c:param name="action" value="Delete"></c:param>
                                    <c:param name="productID" value="${product.productID}"></c:param>
                                    <c:param name="Search" value="${param.Search}"></c:param>
                                </c:url>
                                <a href="${delete}">Delete</a>
                            </td>

                            <td>
                                <!--update-->
                                <input type="submit" name="action" value="Update"/>
                                
                            </td>                
                        </tr>
                    </form>
                </c:forEach>
            </table>
        </c:if> 
        <a href="create-product.jsp">Insert New Product</a>
        <h1>${requestScope.MSG}</h1>
    </body>
</html>