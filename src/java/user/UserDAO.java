/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import utils.DBUtils;

/**
 *
 * @author thaiq
 */
public class UserDAO {
    //query get information from datase
    private static final String LOGIN = "SELECT * FROM Users WHERE email = ? AND [password] = ?";
    private static final String CHECK_DUPLICATE = "SELECT email, status FROM tblUsers email = ? ";
    
    
    //Check Login funtions
    public UserDTO checkLogin(String email, String password) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LOGIN);
                ptm.setString(1, email);
                ptm.setString(2, password);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int userID = rs.getInt("user_id");
                    String fullName = rs.getString("full_name");
                    password = rs.getString("password");
                    String gender = rs.getString("gender");
                    email = rs.getString("email");
                    String phoneNumber = rs.getString("phone_number");
                    String address = rs.getString("address");
                    String status = rs.getString("status");
                    int roleID = rs.getInt("role_id");

                    user = new UserDTO(userID, fullName, password, gender, email, phoneNumber, address, status, roleID);
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
        return user;
    }

    public UserDTO checkDuplicate(int userID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        UserDTO userDTO = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CHECK_DUPLICATE);
                ptm.setInt(1, userID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    String status = rs.getString("status");
                    userDTO = new UserDTO();
                    userDTO.setUserID(userID);
                    userDTO.setStatus(status);
                    return userDTO;
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
        return userDTO;
    }
}
