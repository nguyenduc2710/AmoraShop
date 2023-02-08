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
    </head>
    <body>
        <h1>USER PAGE</h1>
        
        
        Welcome: <h1>${sessionScope.LOGIN_USER.fullName}</h1>
        Email:   <h1>${sessionScope.LOGIN_USER.email}</h1>
        Password:   <h1>${sessionScope.LOGIN_USER.password}</h1>
        Phone Number: <h1>${sessionScope.LOGIN_USER.phoneNumber}</h1>
        Address: <h1>${sessionScope.LOGIN_USER.address}</h1>
        Gender: <h1>${sessionScope.LOGIN_USER.gender}</h1>
        
        <form action="LogoutController" method="POST">
                <input type="submit" name="action" value="Logout">
        </form>
        <a href="update-informaton.jsp">Update</a>
        
        
    </body>
</html>
