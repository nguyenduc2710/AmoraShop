<%-- 
    Document   : header
    Created on : Feb 13, 2023, 1:08:49 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <div id="underline"></div>
            <a class="header-nav-link" href="/AmoraShop/homePage.jsp">
                <li class="main-menu-item">Home</li>
            </a>
            <form action="ShowProductController" method="POST">
                <a class="header-nav-link" href="/AmoraShop/products-user-page.jsp">
                    <input type="submit" class="main-menu-item" value="Shop">
                </a>
            </form>
            <a class="header-nav-link" href="#">
                <li class="main-menu-item">Brand</li>
            </a>
            <a class="header-nav-link" href="#">
                <li class="main-menu-item">New Arrivals</li>
            </a>
            <a class="header-nav-link" href="#">
                <li class="main-menu-item">Sale</li>
            </a>

        </ul>
    </div>
</header>
