
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm sản phẩm</title>
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
            <h2>Thêm sản phẩm mới</h2>
            <form action="addControll" method="post">
                 <div class="form-group">
                    <label for="tensp">Mã sản phẩm</label>
                    <input type="text" class="form-control" id="tensp" name="masp" required>
                </div>
                <div class="form-group">
                    <label for="tensp">Tên sản phẩm</label>
                    <input type="text" class="form-control" id="tensp" name="tensp" required>
                </div>
                <div class="form-group">
                    <label for="soluong">Giá</label>
                    <input type="number" class="form-control" id="soluong" name="gia" required>
                </div>
                <div class="form-group">
                    <label>Nhân viên kinh doanh</label><br>
                    <label class="radio-inline">
                        <input type="radio" name="nvkd" value="1" required>True
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="nvkd" value="0" required>False
                    </label>
                </div>
                <div class="form-group">
                    <label>Admin</label><br>
                    <label class="radio-inline">
                        <input type="radio" name="admin" value="1" required>True
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="admin" value="0" required>False
                    </label>
                </div>
                
                <button type="submit" class="btn btn-primary btn-block">Thêm sản phẩm</button>
            </form>
        </div>
    </body>
</html>
