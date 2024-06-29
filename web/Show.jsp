<%-- 
    Document   : Show
    Created on : Jun 9, 2024, 4:49:41 PM
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
        <c:if test="${btnname == 'btnsanpham'}">
                <div class="col-sm-10">
                   <h2 class="text-center">Sản Phẩm của chúng tôi</h2>
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Mã SP</th>
                                <th>Tên SP</th>
                                <th>Giá</th>
                                <th>Nhân viên kinh doanh</th>
                                <th>admin</th>                      
                                <th>Chức năng</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${list_sp}" var="x">
                                <tr>
                                    <td>${x.masp}</td>
                                    <td>${x.tensp}</td>
                                    <td>${x.gia}</td>
                                    <td>
                                        <c:if test="${x.nvkd == 1}">
                                              True
                                        </c:if>
                                        <c:if test="${x.nvkd == 0}">
                                              False
                                        </c:if>

                                    </td>
                                    <td>
                                        <c:if test="${x.admin == 1}">
                                              True
                                        </c:if>
                                        <c:if test="${x.admin == 0}">
                                              False
                                        </c:if>

                                    </td>
                                    <td>
                                        <a href="update?sid=${x.masp}" class="btn btn-primary">Sửa</a>
                                        <a href="delete?sid=${x.masp}" class="btn btn-danger">Xóa</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <a href="addsp.jsp" class="btn btn-success">Thêm sản phẩm</a>
                    <p>${view}</P>
            </div>   
        </c:if>
        <c:if test="${btnname == 'danhmucsanpham'}">
                <div class="col-sm-10">
                   <h2 class="text-center">Danh mục sản phẩm</h2>
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Mã SP</th>
                                <th>Tên SP</th>
                                <th>Giá</th>
                                <th>Nhân viên kinh doanh</th>
                                <th>admin</th>                      
                                <th>Chức năng</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${list_sp}" var="x">
                                <tr>
                                    <td>${x.masp}</td>
                                    <td>${x.tensp}</td>
                                    <td>${x.gia}</td>
                                    <td>
                                        <c:if test="${x.nvkd == 1}">
                                              True
                                        </c:if>
                                        <c:if test="${x.nvkd == 0}">
                                              False
                                        </c:if>

                                    </td>
                                    <td>
                                        <c:if test="${x.admin == 1}">
                                              True
                                        </c:if>
                                        <c:if test="${x.admin == 0}">
                                              False
                                        </c:if>

                                    </td>
                                    <td>
                                        <a href="update?sid=${x.masp}" class="btn btn-primary">Sửa</a>
                                        <a href="delete?sid=${x.masp}" class="btn btn-danger">Xóa</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <a href="addsp.jsp" class="btn btn-success">Thêm sản phẩm</a>
                    <p>${view}</P>
            </div>   
        </c:if>
    </body>

</html>
