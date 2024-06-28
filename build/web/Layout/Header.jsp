<%-- 
    Document   : Header
    Created on : Jun 28, 2024, 10:17:49 AM
    Author     : Hieu.Nguyxn
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
    <style>
        /* CSS: Đặt màu mặc định cho các thẻ a */
        .link {
        }

        /* CSS: Đặt màu cho thẻ a khi được chọn */
        .link.selected {
            color: #6c7ae0;
        }
    </style>
    
    </head>
    <body class="animsition">
        <header>
            <header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
			</div>

			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="#" class="logo">
						<img src="images/icons/logo-01.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li >
                                                            <a data-id="link1" href="Home.jsp" class="link">Home</a>
							</li>

							<li class="link">
                                                            <a data-id="link2" href="Product.jsp">Shop</a>
							</li>

							<li class="label1" data-label1="hot">
                                                            <a data-id="link3" class="link" href="ShopingCart.jsp">Features</a>
							</li>

							<li>
                                                            <a data-id="link4" class="link" href="Contact.jsp">Contact</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>

						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="2">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>

						<a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
							<i class="zmdi zmdi-favorite-outline"></i>
						</a>
                                                <c:if test="${username != null}">
                                                     <a href="Login_Register.jsp" style="padding-left: 30px; font-size: 14px" class=" icon-header-item cl2 hov-cl1">${username}</a>
                                                </c:if> 
                                                <c:if test="${username == null}">
                                                    <a href="Login_Register.jsp" style="padding-left: 30px; font-size: 14px" class=" icon-header-item cl2 hov-cl1">Login</a>
                                                </c:if>
                                            </div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="index.html"><img src="images/icons/logo-01.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>

				<a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0">
					<i class="zmdi zmdi-favorite-outline"></i>
				</a>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="topbar-mobile">
				<li>
					<div class="left-top-bar">
						Free shipping for standard order over $100
					</div>
				</li>

				<li>
					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m p-lr-10 trans-04">
							Help & FAQs
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							My Account
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							EN
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							USD
						</a>
					</div>
				</li>
			</ul>

			<ul class="main-menu-m">
				<li>
					<a href="Home.jsp">Home</a>
					<ul class="sub-menu-m">
						<li><a href="index.html">Homepage 1</a></li>
						<li><a href="home-02.html">Homepage 2</a></li>
						<li><a href="home-03.html">Homepage 3</a></li>
					</ul>
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>

				<li>
					<a href="product.html">Shop</a>
				</li>

				<li>
					<a href="shoping-cart.html" class="label1 rs1" data-label1="hot">Features</a>
				</li>

				<li>
					<a href="blog.html">Blog</a>
				</li>

				<li>
					<a href="about.html">About</a>
				</li>

				<li>
					<a href="contact.html">Contact</a>
				</li>
			</ul>
		</div>

		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search" placeholder="Search...">
				</form>
			</div>
		</div>
	</header>
    </body>
    
    
    <script>
        // JavaScript: Lấy tất cả các thẻ a
        const links = document.querySelectorAll('.link');

        // JavaScript: Gắn sự kiện click cho từng thẻ a
        links.forEach(link => {
            link.addEventListener('click', function(event) {
                // Lưu ID của thẻ được chọn vào localStorage
                localStorage.setItem('selectedLinkId', this.dataset.id);

                // Loại bỏ class 'selected' khỏi tất cả các thẻ a
                links.forEach(l => l.classList.remove('selected'));

                // Thêm class 'selected' vào thẻ a được click
                this.classList.add('selected');
            });
        });

        // JavaScript: Đọc giá trị từ localStorage để thiết lập màu sắc khi tải lại trang
        const selectedLinkId = localStorage.getItem('selectedLinkId');
        if (selectedLinkId) {
            const selectedLink = document.querySelector(`[data-id="${selectedLinkId}"]`);
            if (selectedLink) {
                selectedLink.classList.add('selected');
            }
        }
    </script>
</html>