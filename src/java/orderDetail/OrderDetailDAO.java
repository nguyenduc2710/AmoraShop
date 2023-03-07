/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package orderDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author long
 */
public class OrderDetailDAO {

    public double createOrderDetail(int orderID, String productID, float price, int quantity) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement st = null;
        float total = 0;
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                String sql = "INSERT INTO [dbo].[OrderDetail]\n"
                        + "           ([order_id]\n"
                        + "           ,[product_id]\n"
                        + "           ,[price]\n"
                        + "           ,[quantity]\n"
                        + "           ,[total_price])\n"
                        + "     VALUES\n"
                        + "           (?,?,?,?,?)";
                st = con.prepareStatement(sql);
                st.setInt(1, orderID);
                st.setString(2, productID);
                st.setFloat(3, price);
                st.setInt(4, quantity);
                st.setFloat(5, quantity * price);
                //execute
                int effectedRow = st.executeUpdate();
                if (effectedRow > 0) {
                    total = quantity * price;
                }
            }
        } finally {
            if (con != null) {
                con.close();
            }
            if (st != null) {
                st.close();
            }
        }
        return total;
    }


    public List<OrderDetailDTO> getListOrderDetailByOrderID(int orderID) throws SQLException {
        List<OrderDetailDTO> list = new ArrayList<>();
        OrderDetailDTO orderDT = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "SELECT OrderDetail.*,Product.product_name, Product.capacity, Product.brand, ProductImage.image\n"
                        + "FROM OrderDetail\n"
                        + "INNER JOIN Product ON OrderDetail.product_id = Product.product_id\n"
                        + "INNER JOIN ProductImage ON OrderDetail.product_id = ProductImage.product_id\n"
                        + "WHERE OrderDetail.order_id = ?";
                ptm = conn.prepareStatement(sql);
                ptm.setInt(1, orderID);

                rs = ptm.executeQuery();
                while (rs.next()) {
                     orderID = rs.getInt("order_id");
                     int productID = rs.getInt("product_id");
                     float price = rs.getFloat("price");
                     float totalPrice = rs.getFloat("total_price");
                    int quantity = rs.getInt("quantity");
                    String name = rs.getString("product_name");
                    String capacity = rs.getString("capacity");
                    String brand = rs.getString("brand");
                    String image = rs.getString("image");
                   
                    

                    orderDT = new OrderDetailDTO(orderID, productID, price, quantity, totalPrice, name, capacity, brand, image);
                    list.add(orderDT);
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
}

