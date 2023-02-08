/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package user;

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
public class UserDAO {

    private static final String LOGIN = "SELECT * FROM Users WHERE email = ? AND [password] = ?";

    private static final String CHECK_DUPLICATE = "SELECT * FROM Users WHERE email = ? ";
    
    private static final String INSERT="INSERT INTO Users(full_name,password,email, status,role_id) VALUES(?,?,?,?,?)";
    
    private static final String REGISTER ="insert into Users(full_name, [password], gender, email, phone_number, [address], [status], role_id) values(?,?,?,?,?,?,?,?)";
    
    private static final String GET_ALL_USERS = "SELECT * FROM Users";
    
    private static final String GET_USER_BY_ID ="SELECT * FROM USERS WHERE email = ?";
    private static final String UPDATE_USER_BY_EMAIL = "UPDATE [dbo].[Users]\n"
            + "   SET full_name = ?\n"
            + "      ,[password] = ?\n"
            + "      ,gender = ?\n"
            + "      ,phone_number = ?\n"
            + "      ,address = ?\n"
            + " WHERE email = ?";

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

    public boolean checkDuplicate(String email) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if(conn != null){
                ptm = conn.prepareStatement(CHECK_DUPLICATE);
                ptm.setString(1, email);
                rs = ptm.executeQuery();
                if(rs.next()){
                    check = true;
                }
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
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
        return check;
    }
    
    

    public void register(String fullName, String password, String gender, String email, String phoneNumber, String address) throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if(conn != null){
                ptm = conn.prepareStatement("insert into Users values(?,?,?,?,?,?,?,?)");
                ptm.setString(1, fullName);
                ptm.setString(2, password);
                ptm.setString(3, gender);
                ptm.setString(4, email);
                ptm.setString(5, phoneNumber);          
                ptm.setString(6, address);
                ptm.setString(7, "ACTIVE");
                ptm.setInt(8, 2);
                ptm.executeUpdate();
            }
        } catch (Exception e) {
        } finally{
            if(ptm != null)ptm.close();
            if(conn != null)conn.close();
        }
    }
   public boolean insert(UserDTO user) throws SQLException {
        boolean checkInsert = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if(conn != null){
                ptm = conn.prepareStatement(INSERT);
                ptm.setString(1, user.getFullName());
                ptm.setString(2, user.getPassword());
                ptm.setString(3, user.getEmail());
                ptm.setString(4, "ACTIVE");
                ptm.setInt(5, 2);
                checkInsert = ptm.executeUpdate()>0?true:false;
            }
        } catch (Exception e) {
        } finally{
            if(ptm != null)ptm.close();
            if(conn != null)conn.close();
        }
        return checkInsert;
    }
     public List<UserDTO> getAllUsers() throws SQLException {
        List<UserDTO> list = new ArrayList<>();
        PreparedStatement ptm = null;
        ResultSet rs = null;
        Connection conn = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_ALL_USERS);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int userID = rs.getInt("user_id");
                    String fullName = rs.getString("full_name");
                    String password = rs.getString("password");
                    String gender = rs.getString("gender");
                    String email = rs.getString("email");
                    String phoneNumber = rs.getString("phone_number");
                    String address = rs.getString("address");
                    String status = rs.getString("status");
                    int roleID = rs.getInt("role_id");
                    list.add(new UserDTO(userID, fullName, password, gender, email, phoneNumber, address, status, roleID));
                }
            }
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ptm != null) {
                    ptm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                System.out.println("Error when closing connection: " + e.getMessage());
            }
        }
        return list;
    }
     
     public UserDTO getUserByID(){
         UserDTO user = null;
         
         return user;
     }
     
     
     public void updateUserByEmail(String fullName, String password, String gender, String phoneNumber,String address,String email) throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn =  DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE_USER_BY_EMAIL);
                ptm.setString(1, fullName);
                ptm.setString(2, password);
                ptm.setString(3, gender);
                ptm.setString(4, phoneNumber);          
                ptm.setString(5, address);
                ptm.setString(6, email);
                ptm.executeUpdate();
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
    }
}

