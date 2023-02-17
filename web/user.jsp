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
                        <a href="user.jsp" class="header-icon"><img src="assets/font/account_circle_black_24dp.svg" alt=""></a>
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
        <section style="background-color: #eee; font-size: 30px">
            <div class="container py-5">
                <div class="row">
                    <div class="col" style="font-size: 20px">
                        <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
                            <ol class="breadcrumb mb-0">
                                <li class="breadcrumb-item"><a href="homePage.jsp">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">User Profile</li>
                            </ol>
                        </nav>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4">
                        <div class="card mb-4">
                            <div class="card-body text-center">
                                <img src="${sessionScope.LOGIN_USER.image}" alt="avatar"
                                     class="rounded-circle img-fluid" style="width: 150px;">

                            </div>
                        </div>
                        <div class="card mb-4 mb-lg-0">
                            <div class="card-body p-0">

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Full Name:</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">${sessionScope.LOGIN_USER.fullName}</p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Email:</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">${sessionScope.LOGIN_USER.email}</p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Phone:</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">${sessionScope.LOGIN_USER.phoneNumber}</p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Gender:</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">${sessionScope.LOGIN_USER.gender}</p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Address:</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">${sessionScope.LOGIN_USER.address}</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
        </section>

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
