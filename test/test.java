/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Hieu.Nguyxn
 */
import dao.*;
import entity.*;
import java.util.List;
public class test {
    
    public static void main(String[] args) {
        DaoAccount acc = new DaoAccount();
        DaoSanPham sp = new DaoSanPham();
        DaoDanhMucSanPham dmsp = new DaoDanhMucSanPham();
        List<DanhMucSanPham> ls = dmsp.getAllDanhMucSanPham();
//        for (DanhMucSanPham l : ls) {
//            System.out.println(l);
//        }
        
        List<SanPham> lsp = sp.getAllSanPhamByDMSP("1");
        
        for (SanPham l : lsp) {
            System.out.println(l);
        }
    }
}
