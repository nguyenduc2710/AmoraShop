<%-- 
    Document   : register
    Created on : Feb 3, 2023, 3:37:21 PM
    Author     : thaiq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <style>
            .error {
                color: #333;
                font-size: 14px;
                padding: 20px;
                text-align: center;
                display: none;
            }

            .invalid {
                border: 2px solid red;
            }
        </style>
    </head>

    <body>
        <div class="wrapper">

            <header class="header">
                <div class="header-nav-up">
                    <div class="ivisible-bar"></div>
                    <div class="wrap-logo">
                        <img class="header-logo" src="assets/images/HomeLogo.png" alt="AmoraShop">
                    </div>
                    <ul class="utility-list">
                        <li class="utility-item">
                            <a class="header-icon"><img src="assets/font/account_circle_black_24dp.svg" alt=""></a>
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
                        <li class="main-menu-item">Shop</li>
                        <li class="main-menu-item">Brand</li>
                        <li class="main-menu-item">New Arrivals</li>
                        <li class="main-menu-item">Sale</li>
                    </ul>
                </div>
            </header>

            <div class="login-signup-container row">
                <div class="login-signup-block col-6 ">
                    <div class="img-container">
                        <img src="assets/images/LogoDoneEdited.png" alt="" class="login-page-logo">
                    </div>
                </div>
                <div class="login-signup-block col-6 ">
                    <form class="login-signup-wrapper" id="myform"  action="RegisterController" method="POST">
                        <div class="login-signup-title">
                            Sign Up
                            <div class="slash-decor"></div>
                        </div>
                        <input type="text" name="fullname" id="user-fullname" class="user-login-signup-input" placeholder="Full Name" required=""/>
                        <div id="customer-gender-wrap">
                            <input type="radio" id="radio1" value="Male" name="gender">
                            <label for="radio1">Male</label>

                            <input type="radio" id="radio0" value="Female" name="gender">
                            <label for="radio0">Female</label>
                        </div>

                        <input name="email" id="user-email" class="user-login-signup-input" placeholder="Email" onchange="validateEmail()" required=""/>
                        <div class="error" id="errorMessage" style="color: red">Please enter a valid email address(Example: example@domain.com)</div>
                        <input type="password" name="password" id="user-email-password" class="user-login-signup-input" placeholder="Password" required="" />
                        <div class="error" id="errorMessage3" style="color: red">Password must have  9 to 30 characters and at least one number</div>
                        <input type="password" name="repassword" id="user-email-passwords" class="user-login-signup-input" placeholder="Repeat password" onchange="validatePassword()" required=""/><h2 style="color: red">${requestScope.errorRepeat}</h2>
                        <div class="error" id="errorMessage2" style="color: red">Confirm password does not match password</div>
                        
                        <input type="text" name="address" id="user-address" class="user-login-signup-input" placeholder="Address" required=""/>
                        <input type="text" name="mobile" id="user-phone-num" class="user-login-signup-input" placeholder="Phone number" onchange="checkPhone()" required=""/>
                        <div class="error" id="errorMessage4" style="color: red">Phone number must be 10 digits</div>

                        <!-- Submit button -->
                        <div class="action-bottom col">
                            <button id="button" type="submit" value="Create New Account" class="button-57 col-3">
                                <span>Sign up</span>
                                <span>Sign up</span>
                            </button>

                            <div class="action-to-home col-4">
                                <a href="homePage.jsp">
                                    <img id="action-to-home-icon" src="assets/font/chevron_left_FILL0_wght400_GRAD0_opsz48.svg" alt="Back to home">
                                    Back to home
                                </a>
                            </div>
                        </div>
                        
                        

                        <div class="divider d-flex align-items-center my-4">
                            <p class="text-center fw-bold mx-3 mb-0 text-muted">OR</p>
                        </div>

                        <a class="btn btn-primary btn-lg btn-block" style="background-color: #3b5998" href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile%20openid&redirect_uri=http://localhost:8080/AmoraShop/LoginGoogleController&response_type=code&client_id=591003804845-5tufd24ql7v462gen0vp1n0lhov8v369.apps.googleusercontent.com&approval_prompt=force"
                           role="button">
                            <i class="fab fa-facebook-f me-2"></i>Continue with Google
                        </a>
                    </form>
                    ${requestScope.successfully}
                    ${requestScope.erorr}
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
                                Lô E2a-7, Đường D1, Đ. D1, Long Thạnh Mỹ, Thành Phố Thủ Đức, Thành phố Hồ Chí Minh 700000,
                                Việt Nam
                            </div>
                        </div>

                    </div>
                </div>
                <div class="copyright">
                    Copyright © 2023 Amora Shop. Powered by SWP391 FPT University
                </div>
            </footer>
        </div>
                <script src="assets/js/validation.js"></script>
    </body>

</html>