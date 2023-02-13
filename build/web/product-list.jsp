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


    </head>
    <body>


        <nav aria-label="..." class="pagination">
            <ul class="pagination">
                <li class="page-item">
                    <a <c:if test="${page!=1}">
                            href="ShowProductController?page=${page-1}"
                        </c:if> class="page-link" aria-label="Next">
                        <span aria-hidden="true">«</span>
                    </a>
                </li>

                <c:forEach begin="1" end="${totalPage}" var="i">
                    <li class="page-item ${i==page?"active":""}"><a class="page-link" href="ShowProductController?page=${i}">${i}</a></li>
                    </c:forEach>    

                <li class="page-item">
                    <a <c:if test="${page!=totalPage}">
                            href="ShowProductController?page=${page+1}"
                        </c:if> class="page-link" aria-label="Next">
                        <span aria-hidden="true">»</span>
                    </a>
                </li>
            </ul>
        </nav>

        <table width="100px" border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Quantity</th>
                <th style="padding-left: 20px">Status</th>

                <%-- kh de description vao day --%>
                <th>img</th>
                <th>Capacity</th>
                <th>Brand</th>
                <th>Price</th>
                <th>Category ID</th>
            </tr>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td>${product.productID}</td>
                    <td>${product.name}</td>
                    <td>${product.quantity}</td>
                    <td style="padding-left: 20px">${product.status}</td>

                    <%-- kh de description vao day --%>
                    <td><img src="${product.image}" width="60px" alt=""></td>
                    <td>${product.capacity}</td>
                    <td>${product.brand}</td>
                    <td style="padding-left: 20px">${product.price}</td>
                    <td style="padding-left: 20px">${product.categoryID}</td>
                </tr>
            </c:forEach>
        </table>

        <form action="FilterProductController">
            category <select name="categoryID" onchange="this.form.submit()">
                <option value="-1">-------------------</option>
                <c:forEach items="${ListCategory}" var="D">
                    <option value="${D.categoryID}">${D.categoryName}</option>
                </c:forEach>
            </select>

        </form>

        <a href="ShowProductController" class="logo12">
            <input type="submit" value="Back to list product"/>
        </a> 
    </form

</body>
</html>
