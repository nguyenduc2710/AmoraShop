/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import product.ProductDAO;
import product.ProductDTO;

/**
 *
 * @author dangn
 */
public class UpdateProductController extends HttpServlet {

    private static final String ERROR = "error.jsp";
    private static final String SUCCESS = "admin.jsp";

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
        String url = ERROR;
        try {
            int productID = Integer.parseInt(request.getParameter("productID"));
            String pName = request.getParameter("pName");
            int pQuantity = Integer.parseInt(request.getParameter("pQuantity"));
            String pStatus = request.getParameter("pStatus");
            String pDescrip = request.getParameter("pDescrip");
            String pCapacity = request.getParameter("pCapacity");
            String pBrand = request.getParameter("pBrand");
            float pPrice = Float.parseFloat(request.getParameter("pPrice"));
            int pCategory = Integer.parseInt(request.getParameter("pCategory"));

//            System.out.println(productID + pName + pQuantity + pStatus + pDescrip + pCapacity + pBrand + pPrice + pCategory);
            ProductDTO newProduct = new ProductDTO(productID, pName, pQuantity, pStatus, pDescrip, pCapacity, pBrand, pPrice, pCategory);
            ProductDAO dao = new ProductDAO();
            HttpSession session = request.getSession();
            ProductDTO product = (ProductDTO) session.getAttribute("products");//product = null can fix
            boolean checkUpdate = dao.update(newProduct);
//            if (product.getProductID() == (productID)) {
//                product.setName(pName);
//                product.setQuantity(0);
//                product.setStatus(pStatus);
//                product.setDescription(pDescrip);
//                product.setCapacity(pCapacity);
//                product.setBrand(pBrand);
//                product.setPrice(0);
//                product.setCategoryID(0);
//            }
            if (checkUpdate) {
                url = SUCCESS;
            } else {
                request.setAttribute("ERROR", "Update fail!");
            }
        } catch (Exception e) {
            log("Error at Update Controller: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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
        processRequest(request, response);
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
