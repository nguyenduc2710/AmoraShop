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
    </head>
    <body>
        <form action="UpdateProfileController" method="POST">
            Email <h1>${sessionScope.LOGIN_USER.email}</h1>
         <input type="hidden" name="email" value="${sessionScope.LOGIN_USER.email}"><br>
        Full Name <input type="text" name="newName" placeholder="enter new full name" required=""><br>
        Password <input type="text" name="newPassword" placeholder="enter new password" required=""><br>
        Confirm Password <input type="text" name="confirmPassword" placeholder="Confirm password" required=""><br>
        Gender <input type="text" name="newGender" placeholder="enter new gender" required=""><br>
        Phone <input type="text" name="newPhone" placeholder="enter new phone number" required=""><br>
        Address <input type="text" name="newAddress" placeholder="enter new address" required=""><br>
        
        <input type="submit" value="update">
        </form>
         ${requestScope.errorRepeat}
    </body>
</html>
