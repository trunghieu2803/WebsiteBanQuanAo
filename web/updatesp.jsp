<%-- 
    Document   : Add
    Created on : Oct 12, 2020, 9:17:52 PM
    Author     : trinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa sản phẩm</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>
            .form-container {
                max-width: 600px;
                margin: 50px auto;
                padding: 20px;
                border: 1px solid #ddd;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
            }
            .form-container h2 {
                text-align: center;
                margin-bottom: 20px;
            }
        </style>
    </head>
    <body>
        <div class="container form-container">
            <h2>Sửa sản phẩm</h2>
            <form action="update" method="post">
                <div class="form-group">
                    <label for="tensp">Mã sản phẩm</label>
                    <input type="text" class="form-control" id="tensp" name="masp" value="${spham.masp}" readonly>
                </div>
                <div class="form-group">
                    <label for="tensp">Tên sản phẩm</label>
                    <input type="text" class="form-control" id="tensp" name="tensp" value="${spham.tensp}" required>
                </div>
                <div class="form-group">
                    <label for="soluong">Giá</label>
                    <input type="number" class="form-control" id="soluong" name="gia" value="${spham.gia}" required>
                </div>
                <div class="form-group">
                    <label>Nhân viên kinh doanh</label><br>
                    <label class="radio-inline">
                        <input type="radio" name="nvkd" value="1" ${spham.nvkd == 1?"checked":""} required >True
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="nvkd" value="0" ${spham.nvkd == 0?"checked":""} required>False
                    </label>
                </div>
                <div class="form-group">
                    <label>Admin</label><br>
                    <label class="radio-inline">
                        <input type="radio" name="admin" value="1" ${spham.admin == 1?"checked":""} required >True
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="admin" value="0" ${spham.admin == 0?"checked":""} required>False
                    </label>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Xác nhận</button>
            </form>
        </div>
    </body>
</html>
