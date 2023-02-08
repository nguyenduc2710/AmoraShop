<%-- 
    Document   : update-user
    Created on : Feb 7, 2023, 3:01:58 PM
    Author     : long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <form action="UpdateUserController" method="POST">

            <table>
                <tr>
                <input class="form-control" type="hidden" name="userID"
                       value="${us.userID}"/><br/>
                </tr>

                <tr>
                    <td>full name*
                        <c:if test="${not empty messagefullName}">
                            <i style="color: red">${messagefullName}</i>
                        </c:if> 
                    </td>
                    <td><input type="text" name="fullName" value="${us.fullName}"required/> (6-20 chars)</td>
                </tr>

               

                <tr>
                    <td>address*
                        <c:if test="${not empty messageaddress}">
                            <i style="color: red">${messageaddress}</i>
                            
                        </c:if>
                    </td>
                    <td><input type="text" name="address" value="${us.address}" required/>(3-50 chars)</td>
                </tr>
                <tr>
                <input class="form-control" type="hidden" name="password"
                       value="${us.password}"/>
                </tr>
                <tr>
                <input class="form-control" type="hidden" name="email"
                       value="${us.email}"/>
                </tr>
                <tr>
                <input class="form-control" type="hidden" name="phoneNumber"
                       value="${us.phoneNumber}"/>
                </tr>
                <tr>
                    <td>Gender*<input type="radio" name="gender" value="MALE" checked="checked">MALE 
                        <input type="radio" name="gender" value="FEMALE">FEMALE
                    </td>
                </tr>
                <tr>
                    <td>Status*<input type="radio" name="status" value="ACTIVE" checked="checked">ACTIVE 
                        <input type="radio" name="status" value="INACTIVE"  >INACTIVE
                    </td>
                </tr>

                <tr>
                <form action="UpdateUserController">
                    Role: <select name="roleID">
                        
                        <c:forEach items="${roleU}" var="D">
                            <option value="${D.role_id}">${D.role_name}</option>
                        </c:forEach>
                    </select>
                </form>

                </tr>
                <td><input class="btn btn-primary w-100" type="submit" value="Update"></td></br>              
                </tr>
                <td><a style="color: green" href="ShowUserController">Comeback</a></td>
                <h3 class="text-danger">${MSG_SUCCESS}</h3>
                <h3 class="text-danger">${msg}</h3>
                <h3 class="text-danger">${MSG_ERROR}</h3>
            </table>



        </form>

    </body>
</html>
