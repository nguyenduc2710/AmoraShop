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

    private static final String SEARCH = "SELECT [product_name], [product_id], [quantity], [status], [description], [capacity], [brand], [price], [category_id] \n"
            + "FROM [dbo].[Product]\n"
            + "WHERE [product_name] like ?";
    private static final String DELETE = "DELETE FROM [dbo].[ProductImage] WHERE [product_id] = ?\n"
            + "DELETE FROM [dbo].[Hashtag] WHERE [product_id] = ?\n"
            + "DELETE FROM [dbo].[Product] WHERE [product_id] = ?";
    private static final String UPDATE = "UPDATE [dbo].[Product] SET [product_name] = ?,[quantity] =?, [status]=?,[description]=?, [capacity]=?, [brand]=?,[price]=?,[category_id]=? where [product_id] like ?";
    private static final String INSERT = "INSERT INTO [dbo].[Product]([product_name],[quantity] , [status],[description],[capacity],[brand],[price],[category_id]) VALUES(?,?,?,?,?,?,?,?)";

    public List<ProductDTO> getListProducts(String search) throws SQLException {
        List<ProductDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SEARCH);
                ptm.setString(1, "%" + search + "%");
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
                    list.add(new ProductDTO(productID, name, quantity, status, description, capacity, brand, price, categoryID));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {//xong no chay thang xuong cau 
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

    public boolean delete(String productID) throws SQLException {
        boolean checkDelete = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(DELETE);
                ptm.setString(1, productID);
                ptm.setString(2, productID);
                ptm.setString(3, productID);
                checkDelete = ptm.executeUpdate() > 0 ;
            }
        } catch (Exception e) {

        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return checkDelete;
    }

    public boolean update(ProductDTO product) throws SQLException {
        boolean checkUpdate = false;
        Connection conn = null;
        PreparedStatement ptm = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE);
                ptm.setString(1, product.getName());
                ptm.setInt(2, product.getQuantity());
                ptm.setString(3, product.getStatus());
                ptm.setString(4, product.getDescription());
                ptm.setString(5, product.getCapacity());
                ptm.setString(6, product.getBrand());
                ptm.setFloat(7, product.getPrice());
                ptm.setInt(8, product.getCategoryID());
                ptm.setInt(9, product.getProductID());
                checkUpdate = ptm.executeUpdate() > 0 ;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return checkUpdate;
    }

    public boolean insert(ProductDTO product) throws SQLException {
        boolean checkInsert = false;
        Connection conn = null;
        PreparedStatement ptm = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(INSERT);
                ptm.setString(1, product.getName());
                ptm.setInt(2, product.getQuantity());
                ptm.setString(3, product.getStatus());
                ptm.setString(4, product.getDescription());
                ptm.setString(5, product.getCapacity());
                ptm.setString(6, product.getBrand());
                ptm.setFloat(7, product.getPrice());
                ptm.setInt(8, product.getCategoryID());
                checkInsert = ptm.executeUpdate() > 0; //cau nay no chay k dc :D ?? t thay bang cach cua co van cung k dc
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return checkInsert;
    }
}
