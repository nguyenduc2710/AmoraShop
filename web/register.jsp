<%-- 
    Document   : register
    Created on : Feb 3, 2023, 3:37:21 PM
    Author     : thaiq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Input your information</h1>
        <form action="RegisterController" method="POST">
            Full Name <input type="text" name="fullname"><br>
            Email <input type="email" name="email"><br>
            Password <input type="password" name="password">${requestScope.erorrPassword}<br> 
            Repeat Password <input type="password" name="repassword">${requestScope.errorRepeat}<br>
            Mobile <input type="text" name="mobile">${requestScope.erorrMobile}<br>
            Gender <input type="text" name="gender"><br>
            Address <input type="text" name="address"><br>
            <input type="submit" value="Create New Account">
            ${requestScope.successfully}
        </form>
    </body>
</html>
