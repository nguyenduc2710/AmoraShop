/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import product.ProductDAO;
import product.ProductDTO;
import role.RoleDAO;
import role.RoleDTO;
import user.UserDAO;
import user.UserDTO;

/**
 *
 * @author long
 */
public class UpdateUserController extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

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
        processRequest(request, response);

        try (PrintWriter out = response.getWriter()) {
            response.setContentType("text/html;charset=UTF-8");
            try {
                int userID = Integer.parseInt(request.getParameter("userID"));
                UserDTO us = new UserDAO().getUserById(userID);
                List<RoleDTO> roleU = new RoleDAO().getAllRole();
                request.setAttribute("roleU", roleU);
                request.setAttribute("us", us);

                request.getRequestDispatcher("update-user.jsp").forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(UpdateUserController.class.getName()).log(Level.SEVERE, null, ex);
            }

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
        processRequest(request, response);
        try {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();

            String fullName = request.getParameter("fullName");

            String gender = request.getParameter("gender");
            String address = request.getParameter("address");
            String password = request.getParameter("password");

            String email = request.getParameter("email");
            String phoneNumber = request.getParameter("phoneNumber");
            String status = request.getParameter("status");

            int roleID = Integer.parseInt(request.getParameter("roleID"));

            int userID = Integer.parseInt(request.getParameter("userID"));

            String messagefullName = null;

            String messageaddress = null;
            String messageroleID = null;

            UserDAO dao = new UserDAO();

            if (!(fullName.length() >= 6 && fullName.length() <= 20)) {
                messagefullName = "Course name phai tu 6 den 20 ki tu";
            }

            if (!(address.length() > 5 && address.length() <= 30)) {
                messageaddress = "address tu 5 - 30 ki tu";

            }

            if (messagefullName == null && messageaddress == null) {

                UserDTO updateUser = new UserDTO(userID, fullName, password, gender, email, phoneNumber, address, status, roleID);

                boolean check = dao.updateUserById(updateUser);
                if (check) {
                    UserDTO us = new UserDAO().getUserById(userID);
                    request.setAttribute("MSG_SUCCESS", "Update user success!");
                    request.setAttribute("us", us);
                    request.getRequestDispatcher("update-user.jsp").forward(request, response);

                }

            } else {
                request.setAttribute("messagefullName", messagefullName);

                request.setAttribute("messageaddress", messageaddress);

                UserDTO us = new UserDAO().getUserById(userID);
                request.setAttribute("us", us);
                request.getRequestDispatcher("update-user.jsp").forward(request, response);

            }

        } catch (SQLException ex) {
            Logger.getLogger(UpdateUserController.class.getName()).log(Level.SEVERE, null, ex);
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
