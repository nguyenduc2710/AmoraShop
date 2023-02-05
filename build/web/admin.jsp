<%-- 
    Document   : admin
    Created on : Feb 1, 2023, 5:06:30 PM
    Author     : thaiq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN PAGE</title>
    </head>
    <body>
        <table border="1">
           
            <tbody>
            <c:forEach items="${sessionScope.userList}" var="U"> 
                <tr>
                    <td>${U.userID}</td>                    
                    <td>${U.fullName}</td>
                    <td>${U.password}</td>
                    <td>${U.gender}</td>
                    <td>${U.email}</td>
                    <td>${U.phoneNumber}</td>
                    <td>${U.address}</td>
                    <td>${U.status}</td>
                    <td>${U.roleID}</td>
                </tr>
                </c:forEach>
                
            </tbody>
        </table>

</body>
</html>
