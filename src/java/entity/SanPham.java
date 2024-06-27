/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Hieu.NGUYXN
 */
public class SanPham {
    private String masp;
    private String tensp;
    private String image;
    private String size;
    private int soLuong;
    private float gia;

    public SanPham(String masp, String tensp, String image, String size, int soLuong, float gia) {
        this.masp = masp;
        this.tensp = tensp;
        this.image = image;
        this.size = size;
        this.soLuong = soLuong;
        this.gia = gia;
    }

    public String getMasp() {
        return masp;
    }

    public void setMasp(String masp) {
        this.masp = masp;
    }

    public String getTensp() {
        return tensp;
    }

    public void setTensp(String tensp) {
        this.tensp = tensp;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public float getGia() {
        return gia;
    }

    public void setGia(float gia) {
        this.gia = gia;
    }

    @Override
    public String toString() {
        return "TestEntity{" + "masp=" + masp + ", tensp=" + tensp + ", image=" + image + ", size=" + size + ", soLuong=" + soLuong + ", gia=" + gia + '}';
    }
    
}
