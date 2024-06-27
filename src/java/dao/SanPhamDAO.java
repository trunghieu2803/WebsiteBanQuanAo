/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.SanPham;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class SanPhamDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<SanPham>getALLSanPham() {
        List<SanPham> list = new ArrayList<>();
        String query =  "Select * from tbl_SanPham";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new SanPham(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getFloat(6)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    
    public void DeleteSanPham(String masp){
        String query = "  delete from tbl_SanPham where masp = ?";
        try {
            //mở connect
            conn = new DBContext().getConnection();
            //trỏ query vào db
            ps = conn.prepareStatement(query);
            //truyền id vào query
            ps.setString(1, masp);
            ps.executeUpdate();
        }catch (Exception e){
            
        }
    }
    
    public void insertSanPham(String masp, String tensp ,String image ,String size, String soluong,String gia){
        String query = "  insert into tbl_SanPham values(?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, masp);
            ps.setString(2, tensp);
            ps.setString(3, image);
            ps.setString(4, size);
            ps.setString(5, soluong);
            ps.setString(6, gia);

            ps.executeUpdate();
        }catch (Exception e){
            
        }
    }
    

}

