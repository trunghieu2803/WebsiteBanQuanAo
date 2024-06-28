CREATE DATABASE QuanLyDeCao;
GO
USE QuanLyDeCao;
GO

-- Tạo bảng DanhMucSanPham trước
CREATE TABLE DanhMucSanPham (
    danhmuc_id INT NOT NULL IDENTITY(1,1),
    tendanhmuc NVARCHAR(255) NOT NULL,
    mota NVARCHAR(255) NOT NULL,
    CONSTRAINT danhmucsanpham_danhmuc_id_primary PRIMARY KEY(danhmuc_id)
);

-- Tạo bảng Account
CREATE TABLE Account (
    account_id INT NOT NULL IDENTITY(1,1),
    username NVARCHAR(255) NOT NULL,
    password NVARCHAR(255) NOT NULL,
    hoten NVARCHAR(255) NOT NULL,
    email NVARCHAR(255) NOT NULL,
    sodienthoai NVARCHAR(255) NOT NULL,
    diachi NVARCHAR(255) NOT NULL,
    insell BIT NOT NULL,
    inadmin BIT NOT NULL,
    CONSTRAINT account_account_id_primary PRIMARY KEY(account_id)
);

-- Tạo bảng SanPham sau khi đã có bảng DanhMucSanPham
CREATE TABLE SanPham (
    sanpham_id INT NOT NULL IDENTITY(1,1),
    ten_sanpham NVARCHAR(255) NOT NULL,
    mota_sanpham NVARCHAR(255) NOT NULL,
    soluong INT NOT NULL,
    gia_tien DECIMAL(18, 2) NOT NULL,
    anh NVARCHAR(255) NOT NULL,
    danhmuc_id INT NOT NULL,
    CONSTRAINT sanpham_sanpham_id_primary PRIMARY KEY(sanpham_id),
    CONSTRAINT sanpham_danhmuc_id_foreign FOREIGN KEY(danhmuc_id) REFERENCES DanhMucSanPham(danhmuc_id)
);

-- Tạo bảng DonHang sau khi đã có bảng Account
CREATE TABLE DonHang (
    donhang_id INT NOT NULL IDENTITY(1,1),
    khachhang_id INT NOT NULL,
    ngaydathang DATETIME NOT NULL,
    tongtien DECIMAL(18, 2) NOT NULL,
    trangthai NVARCHAR(255) NOT NULL,
    CONSTRAINT donhang_donhang_id_primary PRIMARY KEY(donhang_id),
    CONSTRAINT donhang_khachhang_id_foreign FOREIGN KEY(khachhang_id) REFERENCES Account(account_id)
);

-- Tạo bảng ChiTietDonHang sau khi đã có bảng DonHang và SanPham
CREATE TABLE ChiTietDonHang (
    chitietdonhang_id INT NOT NULL IDENTITY(1,1),
    donhang_id INT NOT NULL,
    sanpham_id INT NOT NULL,
    soluong INT NOT NULL,
    giaban DECIMAL(18, 2) NOT NULL,
    CONSTRAINT chitietdonhang_chitietdonhang_id_primary PRIMARY KEY(chitietdonhang_id),
    CONSTRAINT chitietdonhang_donhang_id_foreign FOREIGN KEY(donhang_id) REFERENCES DonHang(donhang_id),
    CONSTRAINT chitietdonhang_sanpham_id_foreign FOREIGN KEY(sanpham_id) REFERENCES SanPham(sanpham_id)
);

-- Tạo bảng GioHang sau khi đã có bảng Account và SanPham
CREATE TABLE GioHang (
    giohang_id INT NOT NULL IDENTITY(1,1),
    khachhang_id INT NOT NULL,
    sanpham_id INT NOT NULL,
    soluong INT NOT NULL,
    CONSTRAINT giohang_giohang_id_primary PRIMARY KEY(giohang_id),
    CONSTRAINT giohang_khachhang_id_foreign FOREIGN KEY(khachhang_id) REFERENCES Account(account_id),
    CONSTRAINT giohang_sanpham_id_foreign FOREIGN KEY(sanpham_id) REFERENCES SanPham(sanpham_id)
);

-- Insert sample data
INSERT INTO Account (username, password, hoten, email, sodienthoai, diachi, insell, inadmin) VALUES 
('user1', 'pass1', 'Nguyen Van A', 'user1@example.com', '0123456789', 'Address 1', 0, 0),
('user2', 'pass2', 'Le Thi B', 'user2@example.com', '0987654321', 'Address 2', 1, 0),
('admin', 'adminpass', 'Admin User', 'admin@example.com', '0111222333', 'Admin Address', 0, 1);

INSERT INTO DanhMucSanPham (tendanhmuc, mota) VALUES 
('Electronics', 'Electronic items'),
('Clothing', 'Clothing and apparel');

INSERT INTO SanPham (ten_sanpham, mota_sanpham, soluong, gia_tien, anh, danhmuc_id) VALUES 
('Smartphone', 'Latest smartphone model', 100, 699.99, 'smartphone.jpg', 1),
('Jeans', 'Comfortable blue jeans', 200, 49.99, 'jeans.jpg', 2);

INSERT INTO DonHang (khachhang_id, ngaydathang, tongtien, trangthai) VALUES 
(1, '2023-06-01 10:00:00', 749.98, 'Processing'),
(2, '2023-06-02 11:00:00', 99.98, 'Shipped');

INSERT INTO ChiTietDonHang (donhang_id, sanpham_id, soluong, giaban) VALUES 
(1, 1, 1, 699.99),
(2, 2, 2, 49.99);

INSERT INTO GioHang (khachhang_id, sanpham_id, soluong) VALUES 
(1, 1, 1),
(2, 2, 2);
