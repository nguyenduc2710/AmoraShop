<%-- 
    Document   : feed-back
    Created on : Mar 8, 2023, 7:27:57 AM
    Author     : long
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="assets/bootstrap-5.0.2-dist/css/bootstrap.css">       
        <link rel="stylesheet" href="assets/css/base.css">
        <link rel="stylesheet" href="assets/css/home.css">
        <link rel="stylesheet" href="assets/css/slider.css">
        <link rel="stylesheet" href="assets/css/review.css">  
        <link rel="icon" type="image/png" href="assets/images/LogoDoneEdited.png"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <script src="assets/bootstrap-5.0.2-dist/js/bootstrap.bundle.js"></script>        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
        <!--        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>-->

        <title>AmoraShop</title>        
    </head>

    <body>

        <jsp:include page="components/header.jsp" />

        <c:if test="${sessionScope.LOGIN_USER != null}">
            <!-- Reuse login code -->
            <div class="login-signup-container row">
                <div class="quote-wrapper col-5">
                    <div class="quote-slider">
                        <img src="assets/images/Perfume Quote 1.2.jpg" alt="" class="img-fluid quote-item active">
                        <img src="assets/images/Perfume Quote 2.1.jpg" alt="" class="img-fluid quote-item">
                        <img src="assets/images/Perfume Quote 3.jpg" alt="" class="img-fluid quote-item">
                        <img src="assets/images/Perfume Quote 4.jpg" alt="" class="img-fluid quote-item">
                        <img src="assets/images/Perfume Quote 1.2.jpg" alt="" class="img-fluid quote-item">
                    </div>
                </div>

                <div class="login-signup-block col-7">
                    <div class="product-short-detail row">
                        <div class="product-img col-3">
                            <img class="img-fluid" src="${sessionScope.accept.image}" alt="">
                        </div>
                        <div class="product-info col-9">
                            <div class="product-title">
                                <div class="product-title-info">${sessionScope.accept.name}</div>
                                <div class="product-title-info">Quantity: ${sessionScope.accept.quantity}</div>
                            </div>
                            <div class="product-inner-detail">
                                <div class="product-inner-info">
                                    Brand: ${sessionScope.accept.brand}
                                </div>
                                <div class="product-inner-info">
                                    Capacity: ${sessionScope.accept.capacity}ml
                                </div>
                                <div class="product-inner-info">
                                    Cost: ${sessionScope.accept.price}$
                                </div>                                 
                            </div>
                        </div>
                    </div>

                    <div class="product-review">
                        <form action="FeedBackController" enctype="multipart/form-data" method="POST">

                            <div class="wrapper">
                                <div class="master">
                                    <h2 class="review-title">How was your experience about our product?</h2>

                                    <div class="rating-component">
                                        <div class="status-msg">
                                            <label>
                                                <input class="rating_msg" type="hidden" name="rating_msg" value="" />
                                            </label>
                                        </div>
                                        <div class="stars-box">
                                            <i class="star" title="1 star" data-message="Poor" data-value="1">
                                                <img src="assets/font/grade_white_24dp.svg" alt="">
                                            </i>
                                            <i class="star" title="2 stars" data-message="Too bad" data-value="2">
                                                <img src="assets/font/grade_white_24dp.svg" alt="">

                                            </i>
                                            <i class="star" title="3 stars" data-message="Average quality"
                                               data-value="3">
                                                <img src="assets/font/grade_white_24dp.svg" alt="">

                                            </i>
                                            <i class="star" title="4 stars" data-message="Nice" data-value="4">
                                                <img src="assets/font/grade_white_24dp.svg" alt="">

                                            </i>
                                            <i class="star" title="5 stars" data-message="Very good quality"
                                               data-value="5">
                                                <img src="assets/font/grade_white_24dp.svg" alt="">

                                            </i>
                                        </div>
                                        <div class="starrate">
                                            <label>
                                                <input class="ratevalue" type="hidden" name="rated_star" value="" />
                                            </label>
                                        </div>
                                    </div>

                                    <div class="feedback-tags">
                                        <div class="tags-container" data-tag-set="1">
                                            <div class="question-tag">
                                                Why was your experience so bad?
                                            </div>
                                        </div>
                                        <div class="tags-container" data-tag-set="2">
                                            <div class="question-tag">
                                                Why was your experience so bad?
                                            </div>

                                        </div>

                                        <div class="tags-container" data-tag-set="3">
                                            <div class="question-tag">
                                                Why was your average rating experience ?
                                            </div>
                                        </div>
                                        <div class="tags-container" data-tag-set="4">
                                            <div class="question-tag">
                                                Why was your experience good?
                                            </div>
                                        </div>

                                        <div class="tags-container" data-tag-set="5">
                                            <div class="make-compliment">
                                                <div class="compliment-container">
                                                    Give a compliment!?
                                                    <i class="far fa-smile-wink">
                                                        <img src="assets/font/sentiment_very_satisfied_black_24dp.svg" alt="Satisfied">
                                                    </i>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="tags-box">
                                            <textarea type="text" class="tag form-control" name="feedBack" id="inlineFormInputName"
                                                      placeholder="Let us know your thought"></textarea>
                                            <!-- <input type="hidden" name="product_id" value="{{ $products->id }}" /> -->
                                        </div>

                                    </div>

                                    <div class="button-box">
                                        <input type="file" class="button-file btn btn-info" name="pImage" disabled="disabled" value="Add picture" />

                                        <input type="submit" class="done btn btn-success" disabled="disabled" value="Add review" />
                                        <!--Param for review-->
                                        <input type="hidden"  name="fullName" value="${sessionScope.LOGIN_USER.fullName}" readonly=""/>
                                        <input type="hidden"  name="status" value="false" readonly=""/>
                                        <input type="hidden"  name="productID" value="${sessionScope.accept.productID}" readonly=""/>
                                        <input type="hidden"  name="userID" value="${sessionScope.LOGIN_USER.userID}" readonly=""/>
                                        <input type="hidden"  name="product_name" value="${sessionScope.accept.name}" readonly=""/>
                                        <input type="hidden"  name="email" value="${sessionScope.LOGIN_USER.email}" readonly=""/>
                                        <input type="hidden"  name="phoneNumber" value="${sessionScope.LOGIN_USER.phoneNumber}" readonly=""/>
                                        <input type="hidden"  name="image" value="${sessionScope.accept.image}" readonly=""/>
                                    </div>

                                    <div class="submited-box">
                                        <div class="loader"></div>
                                        <div class="success-message">
                                            Thank you!
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </c:if>


        <jsp:include page="components/footer.jsp" />


        <script>//Review
            $(".rating-component .star").on("mouseover", function () {
                var onStar = parseInt($(this).data("value"), 10); //
                $(this).parent().children("i.star").each(function (e) {
                    if (e < onStar) {
                        $(this).addClass("hover");
                    } else {
                        $(this).removeClass("hover");
                    }
                });
            }).on("mouseout", function () {
                $(this).parent().children("i.star").each(function (e) {
                    $(this).removeClass("hover");
                });
            });

            $(".rating-component .stars-box .star").on("click", function () {
                var onStar = parseInt($(this).data("value"), 10);
                var stars = $(this).parent().children("i.star");
                var ratingMessage = $(this).data("message");

                var msg = "";
                if (onStar > 1) {
                    msg = onStar;
                } else {
                    msg = onStar;
                }
                $('.rating-component .starrate .ratevalue').val(msg);



                $(".fa-smile-wink").show();

                $(".button-box .done").show();
                
                $(".button-box .button-file").show();


                if (onStar === 5) {
                    $(".button-box .done").removeAttr("disabled");
                } else {
                    $(".button-box .done").attr("disabled", "true");
                }

                for (i = 0; i < stars.length; i++) {
                    $(stars[i]).removeClass("selected");
                }

                for (i = 0; i < onStar; i++) {
                    $(stars[i]).addClass("selected");
                }

                $(".status-msg .rating_msg").val(ratingMessage);
                $(".status-msg").html(ratingMessage);
                $("[data-tag-set]").hide();
                $("[data-tag-set=" + onStar + "]").show();
            });

            $(".feedback-tags  ").on("click", function () {
                var choosedTagsLength = $(this).parent("div.tags-box").find("input").length;
                choosedTagsLength = choosedTagsLength + 1;

                if ($(this).hasClass("choosed")) {
                    $(this).removeClass("choosed");
                    choosedTagsLength = choosedTagsLength - 2;
                } else {
                    $(this).addClass("choosed");
                    $(".button-box .done").removeAttr("disabled");
                    $(".button-box .button-file").removeAttr("disabled");

                }

                console.log(choosedTagsLength);

                if (choosedTagsLength <= 0) {
                    $(".button-box .done").attr("enabled", "false");
                    $(".button-box .button-file").attr("enabled", "false");

                }
            });



            $(".compliment-container .fa-smile-wink").on("click", function () {
                $(this).fadeOut("slow", function () {
                    $(".list-of-compliment").fadeIn();
                });
            });



            $(".done").on("click", function () {
                $(".rating-component").hide();
                $(".feedback-tags").hide();
                $(".button-box").hide();
                $(".submited-box").show();
                $(".submited-box .loader").show();

                setTimeout(function () {
                    $(".submited-box .loader").hide();
                    $(".submited-box .success-message").show();
                }, 1500);
            });          

           

        </script>

        <script>
            let slides = document.querySelectorAll('.quote-item');
            let currentSlide = 0;
            function nextSlide() {
                slides[currentSlide].classList.remove('active');
                currentSlide = (currentSlide + 1) % slides.length;
                slides[currentSlide].classList.add('active');
            }

            setInterval(nextSlide, 8000);
        </script>
    </body>

</html>
