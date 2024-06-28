/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import java.sql.Connection;
import java.sql.*;
import entity.Account;
import context.DBContext;
/**
 *
 * @author Hieu.Nguyxn
 */
public class DaoAccount {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public Account checkAccount(String userName, String passWord){
        String query = "select * from Account where username = ? and password = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, passWord);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getString(1), rs.getString(2), rs.getBoolean(3), rs.getBoolean(4));
            }
            
        } catch (Exception e) {
        }
        return null;
    }
    
}
