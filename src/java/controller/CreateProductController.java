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
import product.ProductDAO;
import product.ProductDTO;

/**
 *
 * @author thaiq
 */
public class CreateProductController extends HttpServlet {
   
     private static final String ERROR = "error.jsp";
    private static final String SUCCESS = "admin.jsp";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
//        try {
//            ProductDAO dao = new ProductDAO();
//            String productName = request.getParameter("newproductname");
//            int quantity = Integer.parseInt(request.getParameter("newquantity"));
//            String status = request.getParameter("newstatus");
//            String description = request.getParameter("newdescription");
//            String capacity = request.getParameter("newcapacity");
//            String brand = request.getParameter("newbrand");
//            float price = Float.parseFloat(request.getParameter("newprice"));
//            int categoryID = Integer.parseInt(request.getParameter("newcategoryid"));
//            ProductDTO product = new ProductDTO(0, productName, quantity, status, description, capacity, brand, price, categoryID);
//            boolean checkInsert = dao.insert(product);
//            if (checkInsert) {
//                url = SUCCESS;
//            }
//        } catch (Exception e) {
//            log("Error at CreateController: " + e.toString());
//        } finally {
//            request.getRequestDispatcher(url).forward(request, response);
//        }
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
        processRequest(request, response);
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
        processRequest(request, response);
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
