/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import user.UserDAO;
import user.UserDTO;

/**
 *
 * @author thaiq
 */
public class UpdateUserController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try {
        HttpSession session = request.getSession();

            String message = null;
            UserDAO dao = new UserDAO();

            String fullName = request.getParameter("fullName");

            String gender = request.getParameter("gender");
            String address = request.getParameter("address");
            String password = request.getParameter("password");

            String email = request.getParameter("email");
            String phoneNumber = request.getParameter("phoneNumber");
            String status = request.getParameter("status");

            int roleID = Integer.parseInt(request.getParameter("roleID"));

            int userID = Integer.parseInt(request.getParameter("userID"));

            if (fullName.isEmpty()) {
                message = "Username Can be empty";
            } else if (address.trim().length() < 1 || address.trim().length() > 20) {
                message = "Address must be between 6-20 characters";
            } else if (address.isEmpty()) {
                message = "Please enter your Address";
            }
            if (message != null) {
                String url = "update-user.jsp";
                request.setAttribute("username", fullName);
                request.setAttribute("password", address);

                request.setAttribute("message", message);
                //  request.getRequestDispatcher("update-user.jsp").forward(request, response);

                response.sendRedirect("UserDetailController?userID=" + userID);
            } else {
//
                boolean check = dao.updateUserById(fullName, password, gender, email, phoneNumber, address, status, roleID, userID);
                if (check) {
                    //UserDTO us = new UserDAO().getUserById(userID);
                    request.setAttribute("MSG_SUCCESS", "Update user success!");
                    // request.setAttribute("us", us);
                    // request.getRequestDispatcher("update-user.jsp").forward(request, response);

                }
                response.sendRedirect("UserDetailController?userID=" + userID);
            }
        } catch (Exception ex) {
            log("Error at RegistrationController: " + ex.toString());
        }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
            Logger.getLogger(UpdateUserController.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
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
            Logger.getLogger(UpdateUserController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
