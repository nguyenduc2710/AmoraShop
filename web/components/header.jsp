<%-- 
    Document   : header
    Created on : Feb 13, 2023, 1:08:49 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="header">
    <div class="header-nav-up">
        <div class="ivisible-bar col-4"></div>
        <div class="wrap-logo col-4">
            <img class="header-logo" src="assets/images/HomeLogo.png" alt="AmoraShop">
        </div>
        <ul class="utility-list col-4">
            <li class="utility-item">
                <a href="login.jsp" class="header-icon"><img src="assets/font/account_circle_black_24dp.svg" alt=""></a>
            </li>
            <li class="utility-item js-search-btn">
                <a href="user-search-prd-page.jsp" class="header-icon"><img src="assets/font/search_black_24dp.svg" alt=""></a>
            </li>
            <li class="utility-item">
                <div class="cart-position-rel">
                    <a href="ViewCartController" class="header-icon"><img src="assets/font/shopping_bag_black_24dp.svg" alt=""></a>
                    <a class="btn btn-outline-dark cart-quantity" href="ViewCartController">
                        ${sessionScope.CART.items.size()}    
                    </a>    
                </div>
            </li>
        </ul>
    </div>

    <div class="header-nav-down">
        <ul class="main-menu-list">
            <div id="underline"></div>
            <form action="ShowAllArrivalsProduct" method="POST">
                <a class="header-nav-link" >
                    <input type="submit" class="main-menu-item" value="Home">
                    <input type="hidden" name="homePage" value="getNewArrivalAnd6Prods">
                </a>
            </form>
            
            <form action="ShowProductController" method="POST">
                <a class="header-nav-link" href="/AmoraShop/products-user-page.jsp">
                    <input type="submit" class="main-menu-item" value="Shop">
                </a>
            </form>
            
            <div class="dropdown-cover brand-position-rel">
                <a class="header-nav-link" href="#">
                    <li class="main-menu-item">Brand</li>                        
                </a>
                <!-- Brands hover select  -->
                <div class="brand-dropdown-box">
                    <div class="cover-item-box">
                        <a href="http://localhost:8080/AmoraShop/ShowProductByBrand?brand=Chanel" class="brand-nav-item">Chanel</a>
                        <a href="http://localhost:8080/AmoraShop/ShowProductByBrand?brand=Dior" class="brand-nav-item">Dior</a>
                        <a href="http://localhost:8080/AmoraShop/ShowProductByBrand?brand=DvG" class="brand-nav-item">Gabbana & Dolce</a>
                        <a href="http://localhost:8080/AmoraShop/ShowProductByBrand?brand=Gucci" class="brand-nav-item">Gucci</a>
                        <a href="http://localhost:8080/AmoraShop/ShowProductByBrand?brand=Prada" class="brand-nav-item">Prada</a>
                        <a href="http://localhost:8080/AmoraShop/ShowProductByBrand?brand=YSL" class="brand-nav-item">YSL</a>
                    </div>
                </div>
            </div>
            <div class="dropdown-cover gender-position-rel">
                <a class="header-nav-link" href="#">
                    <li class="main-menu-item">Genders</li>
                </a>

                <div class="brand-dropdown-box">
                    <div class="cover-item-box">
                        <a href="http://localhost:8080/AmoraShop/ShowProductByCategory?cateID=1" class="brand-nav-item">For Man</a>
                        <a href="http://localhost:8080/AmoraShop/ShowProductByCategory?cateID=2" class="brand-nav-item">For Woman</a>                                
                    </div>
                </div>
            </div>


            <form action="ShowAllArrivalsProduct" method="POST">
                <a type="submit" class="header-nav-link">
                    <!--<li class="main-menu-item">New Arrivals</li>--> 
                    <input type="submit" class="main-menu-item" value="New Arrivals">
                </a>
                <input type="hidden" name="searchNewArr" value="NewArr">
            </form>
        </ul>

        <!--    <div class="search-box-container js-modal">
                <div class="search-box js-modal-container">
                    <div class="search-box-header">
                        <div class="search-title">
                            SEARCH PRODUCT
                        </div>
        
                        <div class="search-box-exit js-modal-close">
                            <img src="assets/font/close_black_24dp.svg" style="width: 100%;" alt="Close">
                        </div>
                    </div>
                    <div class="search-wrapper">
                        <input class="search-input-real-time" type="text" placeholder="Search..."/>
                        <img class="search-submit-button" src="assets/font/search_black_24dp.svg" alt="Search">
                    </div>
                </div>
            </div>
             Hiện Search Modal 
            <script>
                const searchBtns = document.querySelectorAll('.js-search-btn');
                const modal = document.querySelector('.js-modal');
                const modalContainer = document.querySelector('.js-modal-container');
                const modalClose = document.querySelector('.js-modal-close');
        
                function showSearchModal() {
                    modal.classList.add('open');
                }
                function hideSearchModal() {
                    modal.classList.remove('open');
                }
        
                for (const buyBtn of searchBtns) {
                    buyBtn.addEventListener('click', showSearchModal);
                }
        
                modalClose.addEventListener('click', hideSearchModal);
        
                modal.addEventListener('click', hideSearchModal);
        
                modalContainer.addEventListener('click', function (event) {
                    event.stopPropagation();
                });
            </script>-->
</header>
