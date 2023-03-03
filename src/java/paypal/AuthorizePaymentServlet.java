/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package paypal;

import Cart.CartObj;
import com.paypal.base.rest.PayPalRESTException;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import orderDetail.OrderDetailDAO;
import orders.OrderDAO;
import product.ProductDAO;
import user.UserDTO;

/**
 *
 * @author thaiq
 */
public class AuthorizePaymentServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException, PayPalRESTException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession(false);
            Date date = new Date(System.currentTimeMillis());
            if (session != null) {
                CartObj cart = (CartObj) session.getAttribute("CART");
                if (cart != null) {
                    Map<String, Integer> items = cart.getItems();
                    if (items != null) {
                        UserDTO dto = (UserDTO) session.getAttribute("LOGIN_USER");
                        OrderDAO order = new OrderDAO();
                        String fullName = request.getParameter("fullName");
                        String address = request.getParameter("address");
//                        String note = request.getParameter("note");
                        String status = request.getParameter("status");
                        int userID = Integer.parseInt(request.getParameter("userID"));
                        int orderId = order.createOrder(fullName, address, "Processing", date, userID, 0);
                        if (orderId > 0) {
                            float finalTotal = 0;
                            for (String productID : items.keySet()) {
                                ProductDAO product = new ProductDAO();
                                float price = product.getProductByIdTypeString(productID).getPrice();
                                int ProductQuantity = product.getProductByIdTypeString(productID).getQuantity();
                                int userQuantity = items.get(productID);
                                //Check if enough product in storage
                                if (ProductQuantity > userQuantity) {
                                    OrderDetailDAO orderDetail = new OrderDetailDAO();
                                    finalTotal += orderDetail.createOrderDetail(orderId, productID, price, userQuantity);
                                    product.updateQuantity(productID, ProductQuantity, userQuantity);
                                }
                                float total = price * userQuantity;
                                String oId = String.valueOf(orderId);
                                String pId = String.valueOf(productID);
                                String p = String.valueOf(price);
                                String q = String.valueOf(userQuantity);
                                String totalprice = String.valueOf(total);

                                OrderDetail orderDetail = new OrderDetail(oId, pId, p, q, totalprice);

                                try {
                                    PaymentServices paymentServices = new PaymentServices();
                                    String approvalLink = paymentServices.authorizePayment(orderDetail);
//                                    request.getRequestDispatcher(approvalLink).forward(request, response);
                                    response.reset();
                                    response.sendRedirect(approvalLink);

                                } catch (PayPalRESTException ex) {
                                    request.setAttribute("errorMessage", ex.getMessage());
                                    ex.printStackTrace();
                                    request.getRequestDispatcher("error.jsp").forward(request, response);
                                }
                            }

                        }

                    }
                }

            }

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AuthorizePaymentServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AuthorizePaymentServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (PayPalRESTException ex) {
            Logger.getLogger(AuthorizePaymentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AuthorizePaymentServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AuthorizePaymentServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (PayPalRESTException ex) {
            Logger.getLogger(AuthorizePaymentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
