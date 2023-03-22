<%-- 
    Document   : product-detail-user-page
    Created on : Feb 17, 2023, 5:08:38 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="assets/bootstrap-5.0.2-dist/css/bootstrap.css">
        <link rel="stylesheet" href="assets/bootstrap-5.0.2-dist/js/bootstrap.bundle.js">
        <link rel="stylesheet" href="assets/css/base.css">
        <link rel="stylesheet" href="assets/css/home.css">
        <link rel="stylesheet" href="assets/css/products.css">
        <link rel="stylesheet" href="assets/css/review.css">
        <link rel="icon" type="image/png" href="assets/images/LogoDoneEdited.png" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <style>

        </style>
        <title>AmoraShop</title>

    </head>
    <body>
        <jsp:include page="components/header.jsp" />
        <c:set var="productDetail" value="${sessionScope.PRODUCT_DETAIL}" />

        <div class="wrapper">         
            <div class="body-container">
                <div class="bread-crumb-container">
                    <div class="bread-crumbs">
                        <a href="home.html" class="main-page link">Home</a>
                        <div class="slash">/</div>
                        <a href="products.html" class="main-page link">Products</a>
                        <div class="slash">/</div>
                        <a href="#" class="main-page link">Product Details</a>
                    </div>
                </div>

                <div class="product-detail-container row">
                    <c:forEach items="${productDetail}" var="productDto">
                        <div class="product-wrap col-5">
                            <div class="product-img-wrap product-detail-wrap fix-height">
                                <img src="${productDto.image}" alt="${productDto.name}" class="product-img img-fluid">
                            </div>
                        </div>

                        <div class="product-detail-info-wrapper col-7">

                            <div class="product-detail-name">
                                ${productDto.name}
                            </div>
                            <div class="product-detail-price">
                                ${productDto.price}$
                            </div>
                            <form class="buy-area" action="AddToCartServlet">
                                <div class="select-quantity-area">
                                    <input type="button" value="-" class="quantity-btn">
                                    <input type="text" id="quantity" name="quantity" value="1" class="quantity-selector">
                                    <input type="button" value="+" class="quantity-btn">
                                    <input type="hidden" value="${productDto.productID}" name="productID"/>
                                </div>
                                <button type="submit" class="add-to-cart-btn button-57">
                                    <span>ADD TO CART</span>   
                                    <span>ADD TO CART</span>   
                                </button>
                            </form>

                            <div class="product-detail-des">
                                <h3 class="product-detail-des-title">Description:</h3>
                                <p>
                                    Capacity: ${productDto.capacity} ml<br><br>
                                    ${productDto.description}
                                </p>
                            </div>

                        </div>
                    </c:forEach>        
                </div>
            </div>    

            <!--View Review Product-->
            <div class="product-rating-wrap">
                <div class="review-box">
                    <h1 class="review-class">Customer Review</h1>
                    <!--Review HEADER-->
                    <c:if test="${not empty listFeedback}">
                        <div class="review-quantity-box">
                            <p class="review-quantity">Based on ${total} reviews</p>
                            <c:if test="${Math.round(avg * 1000) / 1000 eq 1}">
                                <p class="star-icon">
                                    <span>1/5</span>
                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                </p>    
                            </c:if>
                            <c:if test="${Math.round(avg * 1000) / 1000 eq 2}">
                                <p class="star-icon">
                                    <span>2/5</span>
                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                </p>    
                            </c:if>
                            <c:if test="${Math.round(avg * 1000) / 1000 eq 3}">
                                <p class="star-icon">
                                    <span>3/5</span>
                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                </p>    
                            </c:if>
                            <c:if test="${Math.round(avg * 1000) / 1000 eq 4}">
                                <p class="star-icon">
                                    <span>4/5</span>
                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                </p>    
                            </c:if>
                            <c:if test="${Math.round(avg * 1000) / 1000 eq 5}">
                                <p class="star-icon">
                                    <span>5/5</span>
                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                </p>    
                            </c:if>                        
                        </div>
                    </c:if>
                </div>


                <div class="user-rating-list">
                    <c:if test="${not empty listFeedback}">
                        <c:forEach items="${listFeedback}" var="f">
                            <c:if test="${f.status == 'true'}">
                                <div class="user-items">
                                    <div class="user-rating-title row">
                                        <div class="user-img">
                                            <img src="assets/images/noneUser.png" alt="User">
                                        </div>
                                        <div class="user-review-info col-4">
                                            <h2 class="user-name">
                                                ${f.fullName}
                                            </h2>
                                            <h3 class="day-rating">
                                                ${f.date}
                                            </h3>
                                        </div>
                                        <div class="user-rating-point col-7">
                                            <c:if test="${Math.round(avg * 1000) / 1000 eq 1}">
                                                <p class="star-icon">
                                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                                </p>    
                                            </c:if>
                                            <c:if test="${Math.round(avg * 1000) / 1000 eq 2}">
                                                <p class="star-icon">
                                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                                </p>    
                                            </c:if>
                                            <c:if test="${Math.round(avg * 1000) / 1000 eq 3}">
                                                <p class="star-icon">
                                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                                </p>    
                                            </c:if>
                                            <c:if test="${Math.round(avg * 1000) / 1000 eq 4}">
                                                <p class="star-icon">
                                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                                    <img src="assets/font/star_outline_black_24dp.svg" alt="">
                                                </p>    
                                            </c:if>
                                            <c:if test="${Math.round(avg * 1000) / 1000 eq 5}">
                                                <p class="star-icon">
                                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                                    <img src="assets/font/grade_black_24dp.svg" alt="">
                                                </p>    
                                            </c:if>

                                        </div>
                                    </div>

                                    <div class="user-rating-des">
                                        <div class="rating-description">
                                            ${f.feedBack}
                                        </div>
                                        <c:if test="${not empty f.feedBackImage}">
                                            <div class="rating-prd-img">
                                                <img style="margin-right: 10px;" src="${f.feedBackImage}" alt="">                                        
                                            </div>
                                        </c:if>

                                    </div>
                                </div>                                    
                            </c:if>                        
                        </c:forEach>
                    </c:if>                
                </div>
                <c:if test="${empty listFeedback}">
                    <div class="search-error-note">
                        Sorry, we currently don't have enough reviews about this product!
                    </div> 
                </c:if>
                <c:choose>
                    <c:when test="${total != 0}">
                        <c:forEach items="${productDetail}" var="productD">

                            <ul class="pagination">

                                <li class="page-item">
                                    <a <c:if test="${page!=1}">
                                            href="ShowProductDetailUserController?page=${page-1}&product_id=${productD.productID}"
                                        </c:if> class="page-link" aria-label="Next">
                                        <span aria-hidden="true">«</span>
                                    </a>
                                </li>

                                <c:forEach begin="1" end="${totalPage}" var="i">
                                    <li class="page-item ${i==page?"active":""}"><a class="page-link" href="ShowProductDetailUserController?page=${i}&product_id=${productD.productID}">${i}</a></li>
                                    </c:forEach>    

                                <li class="page-item">
                                    <a <c:if test="${page!=totalPage}">
                                            href="ShowProductDetailUserController?page=${page+1}&product_id=${productD.productID}"
                                        </c:if> class="page-link" aria-label="Next">
                                        <span aria-hidden="true">»</span>
                                    </a>
                                </li>
                            </ul>
                        </c:forEach> 
                    </c:when>
                    <c:otherwise>

                    </c:otherwise>
                </c:choose>
            </div>
        </div>
        <!--    feedback-->

        <%--<div class="container-fluid">

            <div class="row">
                <hr class="marketing_feedback_margin">
                <div class="d-flex justify-content-between mb-3">

                    <h2 class="marketing_feedbac_displayinline">${total} Đánh giá</h2>
                    <h2 class="marketing_feedbac_displayinline">${Math.round(avg * 1000) / 1000}/5 <img style="height: 40px; width: 40px" src="images/images.png"></h2>
                </div>

                <hr class="marketing_feedback_margin">
                <div class="col-md-6 mx-auto">

                    <div class="rounded p-3">


                        <div class="content" class="row">



                            <c:forEach items="${listFeedback}" var="f">
                                <c:if test="${f.status == 'true'}">
                                    <div class="feedback">

                                        <div class="col-sm-12 mb-3">
                                            <span>
                                                <h6 class="marketing_feedbac_displayinline">
                                                    <script>
                                                        for (var i = 0; i < 5; i++) {
                                                            if (i < ${f.rated_star}) {
                                                                document.write('<div class="reviews-rating__star is-active"></div>');
                                                            } else {
                                                                document.write('<div class="reviews-rating__star"></div>');
                                                            }
                                                        }
                                                    </script>
                                                    <br/>
                                                    <b class="marketing_feedback_margin">${f.fullName}</b>
                                                </h6>
                                            </span>



                                            <h6 class="marketing_feedback_margin mt-2">${f.feedBack}</h6>

                                            <c:if test="${not empty f.feedBackImage and not empty fn:trim(f.feedBackImage)}">
                                                <!-- Nếu feedBackImage trong database chứa URL hình ảnh, hiển thị hình ảnh tương ứng -->
                                                <h6 class="marketing_feedback_margin"><img style="height: 100px; width: 100px" src="${f.feedBackImage}"></h6>
                                                </c:if>

                                            <span class="reviews-listing__date marketing_feedback_margin">${f.date}</span>
                                            <hr class="marketing_feedback_margin">
                                        </div>
                                    </div> 
                                </c:if>



                            </c:forEach>



                            <nav aria-label="..." class="pagination-container">
                                <c:choose>
                                    <c:when test="${total != 0}">
                                        <c:forEach items="${productDetail}" var="productD">

                                            <ul class="pagination">

                                                <li class="page-item">
                                                    <a <c:if test="${page!=1}">
                                                            href="ShowProductDetailUserController?page=${page-1}&product_id=${productD.productID}"
                                                        </c:if> class="page-link" aria-label="Next">
                                                        <span aria-hidden="true">«</span>
                                                    </a>
                                                </li>

                                                <c:forEach begin="1" end="${totalPage}" var="i">
                                                    <li class="page-item ${i==page?"active":""}"><a class="page-link" href="ShowProductDetailUserController?page=${i}&product_id=${productD.productID}">${i}</a></li>
                                                    </c:forEach>    

                                                <li class="page-item">
                                                    <a <c:if test="${page!=totalPage}">
                                                            href="ShowProductDetailUserController?page=${page+1}&product_id=${productD.productID}"
                                                        </c:if> class="page-link" aria-label="Next">
                                                        <span aria-hidden="true">»</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </c:forEach> 
                                    </c:when>
                                    <c:otherwise>

                                    </c:otherwise>
                                </c:choose>


                            </nav>


                        </div>

                    </div>



                </div>
            </div>
        </div>
    </div>--%>


        <jsp:include page="components/footer.jsp" />
    </body>


</html>