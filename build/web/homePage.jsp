<%-- 
    Document   : homePage
    Created on : Feb 6, 2023, 3:39:59 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--<link rel="stylesheet" href="../node_modules/bootstrap/dist/css/bootstrap.css"/>-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!--<<script src="../node_modules/bootstrap/dist/js/bootstrap.bundle.js"></script>-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="assets/css/home.css"/>
        <link rel="stylesheet" href="assets/css/base.css"/>
        <link rel="icon" type="image/png" href="assets/images/LogoDoneEdited.png"/>
        <title>AmoraShop</title>
    </head>

    <body>
        <div id="wrapper">
            <header class="header">
                <div class="header-nav-up">
                    <div class="ivisible-bar"></div>
                    <div class="wrap-logo">
                        <img class="header-logo" src="assets/images/HomeLogo.png" alt="AmoraShop">
                    </div>
                    <ul class="utility-list">
                        <li class="utility-item">
                            <a href="login.jsp" class="header-icon"><img src="assets/font/account_circle_black_24dp.svg" alt=""></a>
                        </li>
                        <li class="utility-item">
                            <a class="header-icon"><img src="assets/font/search_black_24dp.svg" alt=""></a>
                        </li>
                        <li class="utility-item">
                            <a class="header-icon"><img src="assets/font/shopping_bag_black_24dp.svg" alt=""></a>
                        </li>
                    </ul>
                </div>
                <div class="header-nav-down">
                    <ul class="main-menu-list">
                        <li class="main-menu-item">Home</li>
                        <form action="ShowProductController" method="POST">
                            <!--<a class="main-menu-item">Shop</a>-->
                            <input class="main-menu-item" type="submit" value="Shop" style="background-color: white; border:none; font-size: 1.6rem">
                        </form>

                        <li class="main-menu-item">Brand</li>
                        <li class="main-menu-item">New Arrivals</li>
                        <li class="main-menu-item">Sale</li>
                    </ul>
                </div>
            </header>

            <div class="body-container">

                <div class="banner">
                    <img class="img-fluid home-banner" src="assets/images/HappyNewYearEdited.jpg" alt="Our banner">
                </div>
                <div class="new-product row">
                    <h2 class="new-product-title">New Products</h2>
                    <div class="product-block">
                        <div class="product-img-wrap">
                            <img src="assets/images/SensualRomance.png" alt="" class="product-img img-fluid" />
                        </div>
                        <div class="product-name">
                            Sensual Romance
                        </div>
                        <div class="product-price">
                            $50
                        </div>
                    </div>
                    <div class="product-block">
                        <div class="product-img-wrap">
                            <img src="assets/images/ElegantBloomGucci.png" alt="" class="product-img img-fluid" />
                        </div>
                        <div class="product-name">
                            Elegant Bloom
                        </div>
                        <div class="product-price">
                            $60
                        </div>
                    </div>
                    <div class="product-block">
                        <div class="product-img-wrap">
                            <img src="assets/images/FreshOcean.png" alt="" class="product-img img-fluid" />
                        </div>
                        <div class="product-name">
                            Fresh Ocean
                        </div>
                        <div class="product-price">
                            $70
                        </div>
                    </div>
                    <div class="product-block">
                        <div class="product-img-wrap">
                            <img src="assets/images/CitrusBliss.png" alt="" class="product-img img-fluid" />
                        </div>
                        <div class="product-name">
                            Citrus Bliss
                        </div>
                        <div class="product-price">
                            $80
                        </div>
                    </div>
                    <div class="product-block">
                        <div class="product-img-wrap">
                            <img src="assets/images/WoodyMystique.png" alt="" class="product-img img-fluid" />
                        </div>
                        <div class="product-name">
                            Woody Mystique
                        </div>
                        <div class="product-price">
                            $90
                        </div>
                    </div>
                </div>
                <div class="top-pf-brand-container row">

                    <div class="top-pf-brands-block col-sm-4 col-md-4">
                        <a href="" class="top-pf-iblock img-fluid">
                            <img class="img-fluid" src="assets/images/DolceGrabrana-home-page.jpg" alt="Dolce & Gabbana">
                        </a>
                        <div class="top-pf-brand-caption">
                            <div class="top-pf-name">Dolce & Gabbana</div>
                            <a href="#" class="button-57">
                                <span class="text">See More</span>
                                <span>See More</span>
                            </a>
                        </div>
                    </div>

                    <div class="top-pf-brands-block col-sm-4 col-md-4">
                        <a href="" class="top-pf-iblock img-fluid">
                            <img class="img-fluid" src="assets/images/prada-home-page.jpg" alt="Prada">
                        </a>
                        <div class="top-pf-brand-caption">
                            <div class="top-pf-name">Prada</div>
                            <a href="#" class="button-57">
                                <span class="text">See More</span>
                                <span>See More</span>
                            </a>
                        </div>
                    </div>

                    <div class="top-pf-brands-block col-sm-4 col-md-4">
                        <a href="" class="top-pf-iblock img-fluid">
                            <img class="img-fluid" src="assets/images/chanel-home-page.jpg" alt="Chanel">
                        </a>
                        <div class="top-pf-brand-caption">
                            <div class="top-pf-name">Chanel</div>
                            <a href="#" class="button-57">
                                <span class="text">See More</span>
                                <span>See More</span>
                            </a>
                        </div>
                    </div>

                </div>
                <div class="about-us processing-section">
                    <div class="processing-text">About-us section</div>
                    <img src="assets/images/working-on-it.jpg" alt="" class="processing-img">
                    <div class="processing-text">Working-on-it</div>
                </div>
            </div>

            <footer class="footer">
                <div class="footer-top row">

                    <div class="footer-inner-block col-4">
                        <h4 class="footer-inner-title">Introduction</h4>
                        <div class="footer-container">
                            <div class="inner-footer-text">
                                <!-- Một cửa hàng nước hoa giúp bạn sống lại cùng những kí ức đã bị lãng quên bằng hương thơm -->
                                Amora Shop, a perfume store that will bring to life again a forgotten memory by fragrance!
                            </div>
                            <div class="footer-shop-logo-container">
                                <img class="footer-shop-logo" src="assets/images/LogoDoneEdited.png" alt="AmoraShop logo">
                            </div>
                        </div>
                    </div>

                    <div class="footer-inner-block col-8">
                        <h4 class="footer-inner-title">Information</h4>
                        <div class="footer-container">
                            <div class="inner-footer-text">
                                <i class="ti-headphone-alt"></i>
                                Phone: 0902 Ngày mai nói tiếp
                            </div>
                            <div class="inner-footer-text">
                                Gmail: hongducnguyenho0@gmail.com
                            </div>
                            <div class="inner-footer-text">
                                Address: FPT University 
                                Lô E2a-7, Đường D1, Đ. D1, Long Thạnh Mỹ, Thành Phố Thủ Đức, Thành phố Hồ Chí Minh 700000, Việt Nam
                            </div>
                        </div>

                    </div>
                </div>
                <div class="copyright">
                    Copyright © 2023 Amora Shop. Powered by SWP391 FPT University
                </div>
            </footer>


        </div>

    </body>

</html>