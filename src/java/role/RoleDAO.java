/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package role;

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
public class RoleDAO {
    
     private static final String GET_ALL_ROLE ="SELECT * FROM Role";
     
       public List<RoleDTO> getAllRole() throws SQLException {
        List<RoleDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if(conn != null){
                ptm = conn.prepareStatement(GET_ALL_ROLE);
                rs = ptm.executeQuery();
                while(rs.next()){
                   int role_id = rs.getInt("role_id");
                   String role_name = rs.getString("role_name");
                   
                   list.add(new RoleDTO(role_id, role_name));
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
