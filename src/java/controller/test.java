/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import category.CategoryDAO;
import category.CategoryDTO;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import orderDetail.OrderDetailDAO;
import orders.OrderDAO;
import org.apache.jasper.tagplugins.jstl.core.Catch;
import product.ProductDAO;
import product.ProductDTO;
import user.UserDAO;
import user.UserDTO;
import utils.Encode;

/**
 *
 * @author thaiq
 */
public class test {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
       
        String pass = Encode.toSHA1("1");

OrderDetailDAO dao = new OrderDetailDAO();
        System.out.println(pass);
    }
}
