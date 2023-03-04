<%-- 
    Document   : receipt
    Created on : Mar 4, 2023, 2:12:52 PM
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
        <div align="center">
    <h1>Payment Done. Thank you for purchasing our products</h1>
    <br/>
    <h2>Receipt Details:</h2>
    <table>
        <tr>
            <td><b>Merchant:</b></td>
            <td>Amora Shop</td>
        </tr>
        <tr>
            <td><b>Payer:</b></td>
            <td>${payer.firstName} ${payer.lastName}</td>      
        </tr>
        <tr>
            <td><b>Description:</b></td>
            <td>${transaction.description}</td>
        </tr>
        <tr>
            <td><b>Subtotal:</b></td>
            <td>${transaction.amount.details.subtotal} USD</td>
        </tr>
        <tr>
            <td><b>Shipping:</b></td>
            <td>${transaction.amount.details.shipping} USD</td>
        </tr>
        <tr>
            <td><b>Tax:</b></td>
            <td>${transaction.amount.details.tax} USD</td>
        </tr>
        <tr>
            <td><b>Total:</b></td>
            <td>${transaction.amount.total} USD</td>
        </tr>                    
    </table>
</div>
    </body>
</html>
