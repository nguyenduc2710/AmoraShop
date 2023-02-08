/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author thaiq
 */
public class ProductDAO {
    private static final String GET_ALL_PRODUCT ="SELECT * FROM Product";
    
    public List<ProductDTO> getAllProducts() throws SQLException {
        List<ProductDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if(conn != null){
                ptm = conn.prepareStatement(GET_ALL_PRODUCT);
                rs = ptm.executeQuery();
                while(rs.next()){
                   int productID = rs.getInt("product_id");
                   String name = rs.getString("product_name");
                   int quantity = rs.getInt("quantity");
                   String status = rs.getString("status");
                   String description = rs.getString("description");
                   String capacity = rs.getString("capacity");
                   String brand = rs.getString("brand");
                   float price = rs.getFloat("price");
                   int categoryID = rs.getInt("category_id");
                   list.add(new ProductDTO(productID, name, quantity, status, description, capacity, brand, price, categoryID));
                }
            }           
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(rs != null) rs.close();
            if(ptm != null) ptm.close();
            if(conn != null) conn.close();
        }
        return list;
    }
    
}
