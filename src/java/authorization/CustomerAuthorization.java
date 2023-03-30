/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import Chart.ChartDTO;
import Date.DateDAO;
import Date.DateDTO;
import category.CategoryDAO;
import feedBack.FeedBackDAO;
import feedBackImage.FeedBackImageDTO;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import product.ProductDAO;
import product.ProductDTO;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import orderDetail.OrderDetailDAO;
import orders.OrderDAO;
import product.ProductImageDTO;
import user.UserDAO;
import user.UserDTO;

/**
 *
 * @author long
 */


@WebFilter(filterName = "CustomerAuthorization", urlPatterns = {"/CheckOrderByUserController", "/feed-back.jsp", "/FeedBackController"})
public class CustomerAuthorization implements Filter {
    

    // The filter configuration object we are associated with.  If
    // this value is null, this filter instance is not currently
    // configured. 
    
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        HttpSession session = req.getSession();

        UserDTO user = (UserDTO) session.getAttribute("LOGIN_USER");

        if (user != null && user.getRoleID() == 2) {
            chain.doFilter(request, response);
            return;
        }
        req.setAttribute("ERROR", "You do not have permission to access this URL!");
        
        request.getRequestDispatcher("login.jsp").forward(request, response);
       
        
    }

    /**
     * Return the filter configuration object for this filter.
     */

    /**
     * Set the filter configuration object for this filter.
     *
     * @param filterConfig The filter configuration object
     */

    /**
     * Destroy method for this filter
     */
    @Override
    public void destroy() {        
    }

    /**
     * Init method for this filter
     * @param filterConfig
     */
    @Override
    public void init(FilterConfig filterConfig) {        
        
    }


  

    /**
     * Return a String representation of this object.
     */
    
    
}