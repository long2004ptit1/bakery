<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cake is for life</title>
<!--Link to CSS -->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="product.css">
<!--box Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
<!--Link Swiper Css-->
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />

<style>
/* Profile Section */
.navbar.profile {
	display: flex;
	justify-content: flex-end; /* Align to the right */
	gap: 5px; /* Add space between login and register links */
	list-style-type: none;
}

.navbar.profile li  {
	display: inline-flex;
	white-space: nowrap; /* Prevent text from wrapping to a new line */
}

.navbar.profile a {
	font-size: 1.1rem;
	font-weight: 500;
	color: var(- -text-color);
	padding: 0rem 0.3rem; /* Adjust padding to allow more space */
	text-decoration: none; /* Remove underline from the links */
}

.navbar.profile a:hover {
	background: var(- -green-color);
	border-radius: 6rem;
	color: var(- -bg-color);
}

/* Định dạng cho ô chứa nút Đăng xuất */
.logout-container {
	background-color: #ff7f7f; /* Màu đỏ */
	border-radius: 5px;
	padding: 0.3rem 0.7rem; /* Giảm padding để đủ không gian */
	display: inline-block;
	margin-left: 10px;
}

/* Định dạng cho nút Đăng xuất */
.logout-button {
	color: black;
	font-size: 0.8rem;
	font-weight: 500;
	text-decoration: none;
	display: inline-block;
	text-align: center;
	white-space: nowrap; /* Ngăn chữ bị xuống dòng */
}

.logout-button:hover {
	opacity: 0.8; /* Hiệu ứng khi hover */
}


/* Định dạng cho dropdown */
.dropdown {
    position: relative;
}

.dropdown .dropdown-menu {
    display: none; /* Ẩn menu theo mặc định */
    position: absolute;
    top: 100%;
    left: 0;
    background-color: #ffffff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    padding: 10px 0;
    min-width: 150px;
    z-index: 1000;
}

.dropdown .dropdown-menu a {
    display: block;
    padding: 10px 15px;
    color: black;
    text-decoration: none;
    font-size: 0.9rem;
}

.dropdown .dropdown-menu a:hover {
    background-color: var(- -green-color); /* Màu nền khi hover */
    color:white;
}

/* Hiển thị menu khi click vào tên người dùng */
.dropdown.active .dropdown-menu {
    display: block;
}

</style>


</head>
<body>
	<!-- Navbar -->
	<header>
		<div class="logo-container">
			<a href="#"> <img src="img/logo2.png" alt="logo" class="logo-img">
			</a>
		</div>
		<!-- Menu Icon -->
		<div class="bx bx-menu" id="menu-icon"></div>
		<!-- Nav List -->
		<ul class="navbar">
			<li><a href="snowbakery.html#home" class="home-active">Trang
					chủ</a></li>
			<li><a href="snowbakery.html#categories">Danh mục</a></li>
			<li><a href="#products">Sản phẩm</a></li>
			<li><a href="snowbakery.html#about">Chúng tôi</a></li>
			<li><a href="snowbakery.html#customers">Khách hàng</a></li>
		</ul>
		<%-- Kiểm tra nếu người dùng đã đăng nhập --%>
		<div class="profile">
			<c:if test="${not empty userobj}">
				<ul class="navbar profile">
					<li><a href="cart.jsp"><i class='bx bx-cart'></i></a></li>
					<!-- Icon Giỏ hàng -->
					<li><a href="messages.jsp"><i class='bx bx-envelope'></i></a></li>
					<!-- Icon Hộp thư -->
					<li class="dropdown"><a href="#" class="username">${userobj.name}</a>
						<div class="dropdown-menu">
							<a href="profile.jsp">Thông tin cá nhân</a> <a
								href="change-password.jsp">Đổi mật khẩu</a> <a href="orders.jsp">Đơn
								hàng của tôi</a>
						</div></li>


				</ul>
				<div class="logout-container">
					<a href="logout" class="logout-button">Đăng xuất</a>
					<!-- Nút Đăng xuất -->
				</div>
			</c:if>
			<c:if test="${empty userobj}">
				<ul class="navbar profile">
					<li><a href="login.jsp">Đăng nhập</a></li>
					<li><a href="register.jsp">Đăng ký</a></li>
				</ul>
			</c:if>
		</div>
	</header>
	<!-- Product-->
	<section id="products">
		<h2>Tất cả sản phẩm</h2>
		<div class="product-category">
			<h3 id="christmas-cake">Bánh giáng sinh</h3>
			<div class="products-container">
				<div class="product-grid">
					<div class="product-card">
						<img src="img/product-xmas-cake1.webp" alt="">
						<h3>Bánh Quả thông Noel</h3>
						<h4 class="price">230.000VNĐ</h4>
						<a href="product-detail.html"> <i
							class='bx bx-cart-alt cart-icon'></i>
						</a> <i class='bx bx-heart heart-icon'></i>
					</div>
					<div class="product-card">
						<img src="img/product-xmas-cake2.jpg" alt="">
						<h3>
							Cookie <br> Noel
						</h3>
						<h4 class="price">
							200.000VNĐ <span>/ 6 bánh</span>
						</h4>
						<a href="product-detail.html"> <i
							class='bx bx-cart-alt cart-icon'></i>
						</a> <i class='bx bx-heart heart-icon'></i>
					</div>
					<div class="product-card">
						<img src="img/product-xmas-cake3.jpg" alt="">
						<h3>
							Bánh tuần lộc <br> Caramel
						</h3>
						<h4 class="price">280.000VNĐ</h4>
						<a href="product-detail.html"> <i
							class='bx bx-cart-alt cart-icon'></i>
						</a> <i class='bx bx-heart heart-icon'></i>
					</div>
					<div class="product-card">
						<img src="img/product-xmas-cake4.jpg" alt="">
						<h3>
							Ngôi nhà Gừng <br> Xmas
						</h3>
						<h4 class="price">500.000VNĐ</h4>
						<a href="product-detail.html"> <i
							class='bx bx-cart-alt cart-icon'></i>
						</a> <i class='bx bx-heart heart-icon'></i>
					</div>
					<div class="product-card">
						<img src="img/product-xmas-cake5.jpg" alt="">
						<h3>
							CupCake <br> Xmas
						</h3>
						<h4 class="price">
							30.000VNĐ <span>/ 1 cupcake</span>
						</h4>
						<a href="product-detail.html"> <i
							class='bx bx-cart-alt cart-icon'></i>
						</a> <i class='bx bx-heart heart-icon'></i>
					</div>

					<div class="product-card">
						<img src="img/product-xmas-cake6.webp" alt="">
						<h3>
							Bánh sinh nhật <br> Noel
						</h3>
						<h4 class="price">300.000VNĐ</h4>
						<a href="product-detail.html"> <i
							class='bx bx-cart-alt cart-icon'></i>
						</a> <i class='bx bx-heart heart-icon'></i>
					</div>

					<div class="product-card">
						<img src="img/product-xmas-cake7.jpg" alt="">
						<h3>Bánh Giáng sinh Tiny Party</h3>
						<h4 class="price">
							250.000VNĐ <span>/ box</span>
						</h4>
						<a href="product-detail.html"> <i
							class='bx bx-cart-alt cart-icon'></i>
						</a> <i class='bx bx-heart heart-icon'></i>
					</div>
					<div class="product-card">
						<img src="img/product-xmas-cake8.jpg" alt="Cookies">
						<h3>Cookie Hạnh nhân Mistletoe</h3>
						<h4 class="price">
							130.000VNĐ <span>/ 4 cookies</span>
						</h4>
						<a href="product-detail.html"> <i
							class='bx bx-cart-alt cart-icon'></i>
						</a> <i class='bx bx-heart heart-icon'></i>
					</div>
					<div class="product-card">
						<img src="img/product-xmas-cake9.jpg" alt="Bánh xoài Tiny">
						<h3>Bánh bông lan Gỗ Giáng sinh</h3>
						<h4 class="price">130.000VNĐ</h4>
						<a href="product-detail.html"> <i
							class='bx bx-cart-alt cart-icon'></i>
						</a> <i class='bx bx-heart heart-icon'></i>
					</div>

				</div>

			</div>
		</div>
		</div>
		</div>

		<div class="product-category">
			<h3 id="bread">Bánh mỳ</h3>
			<div class="products-container">
				<div class="product-grid">
					<div class="product-card">
						<img src="img/product-cake3.webp" alt="">
						<h3>Bánh xoài Tiny</h3>
						<h4 class="price">
							130.000VNĐ <span>/ mini size</span>
						</h4>
						<i class='bx bx-cart-alt cart-icon'></i> <i
							class='bx bx-heart heart-icon'></i>
					</div>
					<div class="product-card">
						<img src="img/product-cake3.webp" alt="">
						<h3>Bánh xoài Tiny</h3>
						<h4 class="price">
							130.000VNĐ <span>/ mini size</span>
						</h4>
						<i class='bx bx-cart-alt cart-icon'></i> <i
							class='bx bx-heart heart-icon'></i>
					</div>
					<div class="product-card">
						<img src="img/product-cake3.webp" alt="">
						<h3>Bánh xoài Tiny</h3>
						<h4 class="price">
							130.000VNĐ <span>/ mini size</span>
						</h4>
						<i class='bx bx-cart-alt cart-icon'></i> <i
							class='bx bx-heart heart-icon'></i>
					</div>
				</div>
			</div>
		</div>

		<div class="product-category">
			<h3 id="pastry">Bánh ngọt</h3>
			<div class="products-container">
				<div class="product-grid">
					<div class="product-card">
						<img src="img/product-cake3.webp" alt="">
						<h3>Bánh xoài Tiny</h3>
						<h4 class="price">
							130.000VNĐ <span>/ mini size</span>
						</h4>
						<i class='bx bx-cart-alt cart-icon'></i> <i
							class='bx bx-heart heart-icon'></i>
					</div>
					<div class="product-card">
						<img src="img/product-cake3.webp" alt="">
						<h3>Bánh xoài Tiny</h3>
						<h4 class="price">
							130.000VNĐ <span>/ mini size</span>
						</h4>
						<i class='bx bx-cart-alt cart-icon'></i> <i
							class='bx bx-heart heart-icon'></i>
					</div>
					<div class="product-card">
						<img src="img/product-cake3.webp" alt="">
						<h3>Bánh xoài Tiny</h3>
						<h4 class="price">
							130.000VNĐ <span>/ mini size</span>
						</h4>
						<i class='bx bx-cart-alt cart-icon'></i> <i
							class='bx bx-heart heart-icon'></i>
					</div>
				</div>
			</div>
		</div>

		<div class="product-category">
			<h3 id="Bingsu">Bingsu</h3>
			<div class="products-container">
				<div class="product-grid">
					<div class="product-card">
						<img src="img/product-cake3.webp" alt="">
						<h3>Bánh xoài Tiny</h3>
						<h4 class="price">
							130.000VNĐ <span>/ mini size</span>
						</h4>
						<i class='bx bx-cart-alt cart-icon'></i> <i
							class='bx bx-heart heart-icon'></i>
					</div>
					<div class="product-card">
						<img src="img/product-cake3.webp" alt="">
						<h3>Bánh xoài Tiny</h3>
						<h4 class="price">
							130.000VNĐ <span>/ mini size</span>
						</h4>
						<i class='bx bx-cart-alt cart-icon'></i> <i
							class='bx bx-heart heart-icon'></i>
					</div>
					<div class="product-card">
						<img src="img/product-cake3.webp" alt="">
						<h3>Bánh xoài Tiny</h3>
						<h4 class="price">
							130.000VNĐ <span>/ mini size</span>
						</h4>
						<i class='bx bx-cart-alt cart-icon'></i> <i
							class='bx bx-heart heart-icon'></i>
					</div>
				</div>
			</div>
		</div>

		<div class="product-category">
			<h3 id="birthdaycake">Bánh sinh nhật</h3>
			<div class="products-container">
				<div class="product-grid">
					<div class="product-card">
						<img src="img/product-cake3.webp" alt="">
						<h3>Bánh xoài Tiny</h3>
						<h4 class="price">
							130.000VNĐ <span>/ mini size</span>
						</h4>
						<i class='bx bx-cart-alt cart-icon'></i> <i
							class='bx bx-heart heart-icon'></i>
					</div>
					<div class="product-card">
						<img src="img/product-cake3.webp" alt="">
						<h3>Bánh xoài Tiny</h3>
						<h4 class="price">
							130.000VNĐ <span>/ mini size</span>
						</h4>
						<i class='bx bx-cart-alt cart-icon'></i> <i
							class='bx bx-heart heart-icon'></i>
					</div>
					<div class="product-card">
						<img src="img/product-cake3.webp" alt="">
						<h3>Bánh xoài Tiny</h3>
						<h4 class="price">
							130.000VNĐ <span>/ mini size</span>
						</h4>
						<i class='bx bx-cart-alt cart-icon'></i> <i
							class='bx bx-heart heart-icon'></i>
					</div>
				</div>
			</div>
		</div>

		<div class="product-category">
			<h3>Bánh sinh nhật</h3>
			<div class="product-grid">
				<div class="product-card">
					<img src="img/product1.avif" alt="Bánh kem McDonald's">
					<h3>Bánh kem Fondant chúc mừng Mc Donald's 1 thập kỷ</h3>
					<p>Liên hệ</p>
				</div>
				<div class="product-card">
					<img src="https://via.placeholder.com/200"
						alt="Bánh kem hình heo hồng">
					<h3>Bánh kem sinh nhật Fondant cho bé tạo hình heo hồng</h3>
					<p>900,000đ</p>
				</div>
				<div class="product-card">
					<img src="img/product1.avif" alt="Bánh kem McDonald's">
					<h3>Bánh kem Fondant chúc mừng Mc Donald's 1 thập kỷ</h3>
					<p>Liên hệ</p>
				</div>
				<div class="product-card">
					<img src="img/product1.avif" alt="Bánh kem McDonald's">
					<h3>Bánh kem Fondant chúc mừng Mc Donald's 1 thập kỷ</h3>
					<p>Liên hệ</p>
				</div>
				<div class="product-card">
					<img src="img/product1.avif" alt="Bánh kem McDonald's">
					<h3>Bánh kem Fondant chúc mừng Mc Donald's 1 thập kỷ</h3>
					<p>Liên hệ</p>
				</div>
				<div class="product-card">
					<img src="img/product1.avif" alt="Bánh kem McDonald's">
					<h3>Bánh kem Fondant chúc mừng Mc Donald's 1 thập kỷ</h3>
					<p>Liên hệ</p>
				</div>
				<div class="product-card">
					<img src="img/product1.avif" alt="Bánh kem McDonald's">
					<h3>Bánh kem Fondant chúc mừng Mc Donald's 1 thập kỷ</h3>
					<p>Liên hệ</p>
				</div>
			</div>
		</div>
		</div>
	</section>

	<footer>
		<!-- Footer -->
		<section class="footer" id="footer">
			<div class="footer-box">
				<a href="#" class="logo"><i class='bx bxs-basket'></i>Snow
					Pastry</a>
				<p>
					24, Phố Hai Bà Trưng, Tràng Tiền <br>Hoàn Kiếm, Hà Nội
				</p>
				<div class="social">
					<a href="#"><i class='bx bxl-facebook'></i></a> <a href="#"><i
						class='bx bxl-twitter'></i></a> <a href="#"><i
						class='bx bxl-instagram'></i></a> <a href="#"><i
						class='bx bxl-youtube'></i></a>
				</div>
			</div>
			<div class="footer-box">
				<h2>Danh mục</h2>
				<a href="#">Bread</a> <a href="#">Pastry & Pie</a> <a href="#">Bingsu</a>
				<a href="#">Cake</a>
			</div>
			<div class="footer-box">
				<h2>Thông tin liên hệ</h2>
				<a href="#">Hotline tư vấn: 1900 779 907</a> <a href="#">Hotline
					khiếu nại: 0948225982</a> <a href="#">Liên hệ hợp tác: 0921004598</a> <a
					href="#">Email: support@snow.vn</a>
			</div>
			<div class="footer-box">
				<h2>Newsletter</h2>
				<p>
					Get 10% Discount with <br>Email Newsletter
				</p>
				<form action="">
					<i class='bx bxs-envelope'></i> <input type="email" name="" id=""
						placeholder="Nhập Email của bạn"> <i
						class='bx bx-arrow-back bx-rotate-180'></i>
				</form>
			</div>
		</section>
	</footer>
	<!-- Copyright -->
	<div class="copy-right">
		<p>&#169; CarpoolVenom All Rights Reserved. Công ty TNHH Snow Việt
			Nam.</p>
	</div>
</body>
</html>
