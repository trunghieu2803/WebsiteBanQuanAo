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
 * @author Hieu.Nguyxn
 */
public class DaoSanPham {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<SanPham> getAllSanPham() {
        List<SanPham> list = new ArrayList<>();
        String query = "select * from SanPham";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new SanPham(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),
                        rs.getString(5), rs.getFloat(6), rs.getString(7), rs.getInt(8)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<SanPham> getAllSanPhamByMSP(String msp) {
        List<SanPham> list = new ArrayList<>();
        String query = "select * from SanPham where [danhmuc_id] like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + msp + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new SanPham(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),
                        rs.getString(5), rs.getFloat(6), rs.getString(7), rs.getInt(8)));
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
}