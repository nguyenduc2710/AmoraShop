<%-- 
    Document   : update-informaton
    Created on : Feb 8, 2023, 10:04:47 AM
    Author     : thaiq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="assets/css/home.css"/>
        <link rel="stylesheet" href="assets/css/base.css"/>
        <link rel="icon" type="image/png" href="assets/images/LogoDoneEdited.png"/>
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


        <div class="container bootstrap snippet">
            <div class="row">
                <div class="col-sm-10"><h1>Update profile</h1></div>
            </div>
            <div class="row">
                <div class="col-sm-3"><!--left col-->

                    <form class="form" action="UpdateProfileController" method="POST" id="registrationForm" enctype="multipart/form-data">
                        <div class="text-center">
                            <img src="${sessionScope.LOGIN_USER.image}"  class="avatar img-circle img-thumbnail" alt="avatar">
                            <h6>Upload a different photo...</h6>
                            <input type="file" name="image" value="${sessionScope.LOGIN_USER.image}" class="text-center center-block file-upload">
                        </div></hr><br>
                        </div><!--/col-3-->
                        <div class="col-sm-9">



                            <div class="tab-content" style="font-size: 40px">
                                <div class="tab-pane active" id="home">
                                    <hr>

                                    <input type="hidden" name="email" value="${sessionScope.LOGIN_USER.email}">
                                    <div class="form-group">

                                        <div class="col-xs-6">
                                            <label for="full_name"><h4>Full Name:</h4></label>
                                            <input type="text" class="form-control" name="newName" id="first_name" placeholder="Enter new full name" value="${sessionScope.LOGIN_USER.fullName}" required=""/>
                                        </div>
                                    </div>


                                    <div class="form-group">

                                        <div class="col-xs-6">
                                            <label for="paswword"><h4>Password:</h4></label>
                                            <input type="password" class="form-control" name="newPassword" id="user-email-password" placeholder="enter new password" onchange="validatePassword()" />
                                            <div class="error" id="errorMessage3" style="color: red">Password must have  9 to 30 characters and at least one number</div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-6">
                                            <label for="gender"><h4>Gender:</h4></label>
                                            <input type="text" class="form-control" name="newGender" id="mobile" placeholder="enter new gender" required="" />
                                        </div>
                                    </div>

                                    <div class="col-xs-6">
                                        <label for="copassword"><h4>Confirm Password:</h4></label>
                                        <input type="password" class="form-control" name="confirmPassword" id="user-email-passwords" placeholder="confirm password" onchange="validatePassword()"  required=""/>
                                        <div class="error" id="errorMessage2" style="color: red">Confirm password does not match password</div>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="phone"><h4>Phone:</h4></label>
                                        <input type="text" class="form-control" name="newPhone" id="user-phone-num" placeholder="enter new phone" onchange="checkPhone()" required=""/>
                                        <div class="error" id="errorMessage4" style="color: red">Phone number must be 10 digits</div>
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="address"><h4>Address:</h4></label>
                                        <input type="text" class="form-control" name="newAddress" id="user-address" placeholder="enter new address" required=""/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <br>
                                        <button id="button" class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                        <button  class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                                    </div>
                                </div>

                                </form>

                                <script src="assets/js/validation.js"></script>
                                <script src="assets/js/updateAvata.js"></script>
                                </body>
                                </html>
