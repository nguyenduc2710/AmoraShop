<%-- 
    Document   : admin-update-product
    Created on : Feb 20, 2023, 3:28:30 PM
    Author     : thaiq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Product</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
        <form class="form-horizontal" action="MainController" method="POST">
            <fieldset>

                <!-- Form Name -->
                <legend style="padding: 30px 20px; font-size: 24px; font-weight: 800; color: darkcyan;">PRODUCT UPDATE</legend>

                <input id="product_id" name="productID" value="${products.productID}" type="hidden">

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_name"> NAME</label>  
                    <div class="col-md-4">
                        <input id="product_name" name="pName"  value="${products.name}" class="form-control input-md" type="text">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="available_quantity">QUANTITY</label>  
                    <div class="col-md-4">
                        <input id="available_quantity" name="pQuantity" value="${products.quantity}" placeholder="AVAILABLE QUANTITY" class="form-control input-md" required="" type="number">

                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-md-4 control-label" for="available_quantity">STATUS</label>  
                    <div class="col-md-4">
                        <input type="radio" name="pStatus" value="Available"  checked="checked">Available 
                        <input type="radio" name="pStatus" value="Unavailable" >Unavailable
                    </div>
                </div>

                <!-- Textarea -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_description">PRODUCT DESCRIPTION</label>
                    <div class="col-md-4">                     
                        <textarea class="form-control" id="product_description" name="pDescrip">${products.description}</textarea>
                    </div>
                </div>


                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_weight">CAPACITY</label>  
                    <div class="col-md-4">
                        <input id="product_weight" name="pCapacity" value="${products.capacity}" class="form-control input-md" required="" type="text">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="percentage_discount">BRAND</label>  
                    <div class="col-md-4">
                        <input id="percentage_discount" name="pBrand" value="${products.brand}"  class="form-control input-md" required="" type="text">

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="percentage_discount">PRICE</label>  
                    <div class="col-md-4">
                        <input id="percentage_discount" name="pPrice" value="${products.price}" class="form-control input-md" required="" type="number">

                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_categorie"> CATEGORY</label>
                    <div class="col-md-4">
                        <input type="radio" name="pCategory" value="1" checked="checked">MALE 
                        <input type="radio" name="pCategory" value="2">FEMALE
                    </div>
                </div>


                <!-- File Button --> 
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">main_image</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="pImage" class="input-file" type="text" value="${products.image}" required=""/>
                    </div>
                </div>


                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton"></label>
                    <div class="col-md-4">
                        <input type="submit" name="action" value="Update"/>
                    </div>
                </div>

            </fieldset>
        </form>
</html>
