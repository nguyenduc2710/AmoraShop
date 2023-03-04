<%-- 
    Document   : review-paypal
    Created on : Mar 3, 2023, 10:29:23 PM
    Author     : thaiq
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table {
                border-collapse: collapse;
                margin: auto;
            }

            th, td {
                border: 1px solid black;
                padding: 10px;
                text-align: left;
            }

            input[type=submit] {
                background-color: #4CAF50;
                border: none;
                color: white;
                padding: 12px 20px;
                text-decoration: none;
                font-size: 16px;
                cursor: pointer;
                border-radius: 5px;
            }

            input[type=submit]:hover {
                background-color: #45a049;
            }

            h1 {
                text-align: center;
            }

            div {
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <h1>Please Review Before Paying</h1>

        <div>
            <form action="ExecutePaymentServlet" method="post">
                <table>
                    <tr>
                        <th colspan="2">Transaction Details:</th>
                        <td>
                            <input type="hidden" name="paymentId" value="${param.paymentId}" />
                            <input type="hidden" name="PayerID" value="${param.PayerID}" />
                            <input type="hidden" name="orderID" value="${transaction.description}" />

                        </td>
                    </tr>
                    <tr>
                        <td>Total:</td>
                        <td>${transaction.amount.total} USD</td>
                    </tr>

                    <tr>
                        <td>order ID</td>
                        <td>${transaction.description}</td>
                    </tr>

                    <tr>
                        <th colspan="2">Payer Information:</th>
                    </tr>
                    <tr>
                        <td>First Name:</td>
                        <td>${payer.firstName}</td>
                    </tr>
                    <tr>
                        <td>Last Name:</td>
                        <td>${payer.lastName}</td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td>${payer.email}</td>
                    </tr>

                    <tr>
                        <th colspan="2">Shipping Address:</th>
                    </tr>
                    <tr>
                        <td>Recipient Name:</td>
                        <td>${shippingAddress.recipientName}</td>
                    </tr>
                    <tr>
                        <td>Line 1:</td>
                        <td>${shippingAddress.line1}</td>
                    </tr>
                    <tr>
                        <td>City:</td>
                        <td>${shippingAddress.city}</td>
                    </tr>
                    <tr>
                        <td>State:</td>
                        <td>${shippingAddress.state}</td>
                    </tr>
                    <tr>
                        <td>Country Code:</td>
                        <td>${shippingAddress.countryCode}</td>
                    </tr>
                    <tr>
                        <td>Postal Code:</td>
                        <td>${shippingAddress.postalCode}</td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="Pay Now" />
                        </td>
                    </tr>    
                </table>
            </form>
        </div>
    </body>
</html>
