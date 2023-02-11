<%-- 
    Document   : update-user
    Created on : Feb 11, 2023, 11:21:50 AM
    Author     : thaiq
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                    </td>
                    <td><input type="text" name="fullName" value="${us.fullName}"required/> (6-20 chars)</td>
                </tr>



                <tr>
                    <td>address*
                    </td>
                    <td><input type="text" name="address" value="${us.address}" required/>(3-50 chars)</td>
                </tr>
                <tr>
                    <td> password
                <input class="form-control"  name="password"
                       value="${us.password}"/>
                </td>
                </tr>
                <tr>
                    <td> email 
                <input class="form-control" name="email"
                       value="${us.email}"/>
                </td>
                </tr>
                <tr>
                    <td> phone
                <input class="form-control"  name="phoneNumber"
                       value="${us.phoneNumber}"/>
                </td>
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

                    Role: 
                <select name="roleID">

                    <c:forEach items="${roleU}" var="D">
                        <option value="${D.role_id}">${D.role_name}</option>
                    </c:forEach>
                </select>
                 </tr>

                <h3 class="text-danger">${requestScope.MSG_SUCCESS}</h3>
                <h3 class="text-danger">${msg}</h3>
                <h3 class="text-danger">${MSG_ERROR}</h3>
                <c:if test="${not empty requestScope.message}">
                    <div class="alert alert-danger p-2 mt-2">${requestScope.message}</div>
                </c:if>
                    <p>${requestScope.MSG_SUCCESS}</p>
               
                <td><input class="btn btn-primary w-100" type="submit" value="Update"></td></br>              
                </tr>
                <td><a style="color: green" href="ShowUserController">Comeback</a></td>

            </table>



        </form>

    </body>
</html> 
