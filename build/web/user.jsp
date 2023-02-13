<%-- 
    Document   : user
    Created on : Feb 1, 2023, 5:06:24 PM
    Author     : thaiq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USER</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
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
                <div class="col-sm-10"><h1>Hello ${sessionScope.LOGIN_USER.fullName} </h1></div>

            </div>
            <div class="row">
                <div class="col-sm-3"><!--left col-->


                    <div class="text-center">
                        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">

                    </div></hr><br>

                </div><!--/col-3-->
                <div class="col-sm-9">

                    <div class="tab-content">
                        <div class="tab-pane active" id="home">
                            <hr>
                            <form class="form" action="##" method="post" id="registrationForm">
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <h2 for="first_name"><h4>Full Name:</h4></h2>
                                        <h1>${sessionScope.LOGIN_USER.fullName}</h1>
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="phone"><h4>Phone:</h4></label>
                                        <h1>${sessionScope.LOGIN_USER.phoneNumber}</h1>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="mobile"><h4>Gender:</h4></label>
                                        <h1>${sessionScope.LOGIN_USER.gender}</h1>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="email"><h4>Email:</h4></label>
                                        <h1>${sessionScope.LOGIN_USER.email}</h1>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="email"><h4>Address:</h4></label>
                                        <h1>${sessionScope.LOGIN_USER.address}</h1>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-6">
                                        <label for="password"><h4>Password:</h4></label>
                                        <h1>${sessionScope.LOGIN_USER.password}</h1>
                                    </div>
                                </div>

                            </form>

                            <h2>

                                <a href="update-informaton.jsp">Update</a>

                            </h2>
                            <h2>
                                <form action="LogoutController" method="POST">
                                    <input type="submit" name="action" value="Logout">
                                </form>
                            </h2>
                            </body>
                            </html>
