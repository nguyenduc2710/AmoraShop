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

    private static final String GET_ALL_PRODUCT = "SELECT [Product].*, [ProductImage].image\n"
            + "FROM [Product]\n"
            + "INNER JOIN [ProductImage] ON [Product].product_id = [ProductImage].product_id;";
    
    private static final String GET_ALL_PRODUCT_BY_CATEGORYID = "SELECT [Product].*, [ProductImage].image FROM [Product] INNER JOIN [ProductImage] ON [Product].product_id = [ProductImage].product_id where category_id = ?";

    
    private static final String GET_ALL_PRODUCT_BY_PAGGINGSIZE = "SELECT [Product].*, [ProductImage].image\n"
            + "FROM [Product]\n"
            + "INNER JOIN [ProductImage] ON [Product].product_id = [ProductImage].product_id order by price offset (?-1)*? row fetch next ? rows only";

    
    private static final String COUNT_ALL_PRODUCT = "select count(product_id) from Product";



    public List<ProductDTO> getAllProducts() throws SQLException {
        List<ProductDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_ALL_PRODUCT);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int productID = rs.getInt("product_id");
                    String name = rs.getString("product_name");
                    int quantity = rs.getInt("quantity");
                    String status = rs.getString("status");
                    String description = rs.getString("description");
                    String capacity = rs.getString("capacity");
                    String brand = rs.getString("brand");
                    float price = rs.getFloat("price");
                    int categoryID = rs.getInt("category_id");
                    String image = rs.getString("image");
                    list.add(new ProductDTO(productID, name, quantity, status, description, capacity, brand, price, categoryID, image));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

    public List<ProductDTO> getAllProductByCategoryId(int categoryID) throws SQLException {
        List<ProductDTO> list = new ArrayList<>();
        ProductDTO product = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_ALL_PRODUCT_BY_CATEGORYID);
                ptm.setInt(1, categoryID);

                rs = ptm.executeQuery();
                while (rs.next()) {
                    int productID = rs.getInt("product_id");
                    String name = rs.getString("product_name");
                    int quantity = rs.getInt("quantity");
                    String status = rs.getString("status");
                    String description = rs.getString("description");
                    String capacity = rs.getString("capacity");
                    String brand = rs.getString("brand");
                    float price = rs.getFloat("price");
                    categoryID = rs.getInt("category_id");
                    String image = rs.getString("image");
                    list.add(new ProductDTO(productID, name, quantity, status, description, capacity, brand, price, categoryID, image));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

    public List<ProductDTO> getProductsWithPagging(int page, int PAGE_SIZE) throws SQLException {
        List<ProductDTO> list = new ArrayList<>();
        ProductDTO product = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_ALL_PRODUCT_BY_PAGGINGSIZE);
                ptm.setInt(1, page);
                ptm.setInt(2, PAGE_SIZE);
                ptm.setInt(3, PAGE_SIZE);

                rs = ptm.executeQuery();
                while (rs.next()) {
                    int productID = rs.getInt("product_id");
                    String name = rs.getString("product_name");
                    int quantity = rs.getInt("quantity");
                    String status = rs.getString("status");
                    String description = rs.getString("description");
                    String capacity = rs.getString("capacity");
                    String brand = rs.getString("brand");
                    float price = rs.getFloat("price");
                    int categoryID = rs.getInt("category_id");
                    String image = rs.getString("image");
                    list.add(new ProductDTO(productID, name, quantity, status, description, capacity, brand, price, categoryID, image));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

    public int getTotalProducts() throws SQLException {

        ProductDTO product = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(COUNT_ALL_PRODUCT);

                rs = ptm.executeQuery();
                while (rs.next()) {
                    return rs.getInt(1);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return 0;
    }

}
