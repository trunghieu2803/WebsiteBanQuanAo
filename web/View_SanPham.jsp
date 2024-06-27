<%-- 
    Document   : View_SanPham
    Created on : Jun 18, 2024, 9:01:33 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sách Sản Phẩm</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>
            .table-bordered {
                border: 2px solid #ddd;
            }
            .table-bordered th, .table-bordered td {
                border: 1px solid #ddd;
                padding: 12px;
                text-align: center;
            }
            .table thead th {
                background-color: #f2f2f2;
            }
            .btn-primary {
                margin-right: 10px;
            }
            .btn-danger {
                margin-left: 10px;
            }
            .container {
                margin-top: 50px;
            }
            h2 {
                margin-bottom: 20px;
            }
            .tiktok-container {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                gap: 10px;
                margin-top: 30px;
            }
            .tiktok-video {
                flex: 1 1 30%;
                max-width: 605px;
                min-width: 325px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2 class="text-center">Sản Phẩm của chúng tôi</h2>
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Mã SP </th>
                        <th>Tên SP</th>
                        <th>image</th>
                        <th>Size</th>
                        <th>Số lượng</th>
                        <th>Giá</th>                      
                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${list_sp}" var="x">
                        <tr>
                            <td>${x.masp}</td>
                            <td>${x.tensp}</td>
                            <td><img src="${x.image}" alt="${x.tensp}" style="width: 100px; height: auto;" /></td>
                            <td>${x.size}</td>
                            <td>${x.soLuong}</td>
                            <td>${x.gia}</td>

                            
                            <td>
                                <a href="Update_SanPham?sid=${x.masp}" class="btn btn-primary">Sửa</a>
                                <a href="Delete_SanPham?sid=${x.masp}" class="btn btn-danger">Xóa</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            
            <a href="Add_SanPham.jsp" class="btn btn-success">Thêm sản phẩm</a>
            <p>${view}</P>
        </div>
    </body>

</html>

