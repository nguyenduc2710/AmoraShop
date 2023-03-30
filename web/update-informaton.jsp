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
        <link rel="stylesheet" href="./assets/bootstrap-5.0.2-dist/css/bootstrap.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="assets/css/home.css" />
        <link rel="stylesheet" href="assets/css/base.css" />
        <link rel="stylesheet" href="assets/css/user.css">
        <link rel="icon" type="image/png" href="assets/images/LogoDoneEdited.png" />
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
            .update-img-container{
                display: flex;
                width: 100%;
                align-items: center;
            }
            .form-group div input{
                font-size: 1.4rem;
            }
        </style>
    </head>

    <body>
        <jsp:include page="components/header.jsp" />


        <div class="container bootstrap snippet user-update-info-container">

            <div class="row">
                <div class="col-sm-10">
                    <h1>Update Profile</h1>
                </div>
            </div>

            <div class="row user-update-info-form">

                <div class="col-sm-3 update-img-container" style="dis"><!--left col-->
                    <div style="width: 100%" class="text-center">
                        <img style="width: 100%" src="${sessionScope.LOGIN_USER.image}" class="avatar img-circle img-thumbnail"
                             alt="avatar">

                    </div>

                </div><!--/col-3-->

                <div class="col-sm-9">
                    <div class="tab-content">
                        <div class="tab-pane active" id="home">
                            <hr/>
                            <form class="form row" action="UpdateProfileController" method="POST" id="registrationForm" enctype="multipart/form-data">
                                <input type="hidden" name="email" value="${sessionScope.LOGIN_USER.email}">

                                <div class="form-group col-6">
                                    <div>
                                        <label class="input-field-title" for="first_name">
                                            Update Image
                                        </label>
                                        <input type="file" name="image" class="form-control">
                                        <input type="hidden" name="image-new" value="${sessionScope.LOGIN_USER.image}"/>
                                    </div>
                                </div>
                                <div class="form-group col-6">
                                    <div>
                                        <label class="input-field-title" for="first_name">
                                            Full Name:
                                        </label>
                                        <input type="text" class="form-control" name="newName" id="first_name"
                                               placeholder="Enter new full name" value="${sessionScope.LOGIN_USER.fullName}"
                                               required="" />
                                    </div>
                                </div>



                                <div class="form-group col-6">
                                    <div>
                                        <label class="input-field-title" for="mobile">
                                            Gender:
                                        </label>
                                        <input type="text" class="form-control" name="newGender" id="mobile" value="${sessionScope.LOGIN_USER.gender}"
                                               placeholder="enter new gender" required="" />
                                    </div>
                                </div>



                                <div class="form-group col-6">
                                    <div>
                                        <label class="input-field-title" for="password2">
                                            Phone:
                                        </label>
                                        <input type="text" class="form-control" name="newPhone" id="user-phone-num" value="${sessionScope.LOGIN_USER.phoneNumber}"
                                               placeholder="enter new phone" onchange="checkPhone()" required="" />
                                        <div class="error" id="errorMessage4" style="color: red">Phone number must be 10digits</div>
                                    </div>
                                </div>

                                <div class="form-group col-6">
                                    <div>
                                        <label class="input-field-title" for="password2">
                                            Address:
                                        </label>
                                        <input type="text" class="form-control" name="newAddress" id="user-address" value="${sessionScope.LOGIN_USER.address}"
                                               placeholder="enter new address" required="" />
                                    </div>
                                </div>

                                <div class="form-group col-12">
                                    <div class="form-action-container row">
                                        <br>
                                        <button id="button" class="btn btn-lg btn-success" type="submit">
                                            <img class="form-group-icon" src="assets/font/save_white_24dp.svg" alt="" />
                                            Save
                                        </button>
                                        <button class="btn btn-lg" type="reset">
                                            <img class="form-group-icon" src="assets/font/restart_alt_black_24dp.svg" alt="" />
                                            Reset
                                        </button>
                                    </div>
                                </div>

                            </form>

                            <!-- <script src="assets/js/validation.js"></script>
                            <script src="assets/js/updateAvata.js"></script> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <jsp:include page="components/footer.jsp" />

        <script src="assets/js/validation.js"></script>
        <script src="assets/js/updateAvata.js"></script>
    </body>

</html>
