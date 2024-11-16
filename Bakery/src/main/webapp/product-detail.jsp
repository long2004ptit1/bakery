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
    <!-- Link to CSS -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="product.css">
    <link rel="stylesheet" href="product-detail.css">
    <!-- box Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
            <a href="#">
                <img src="img/logo2.png" alt="logo" class="logo-img">
            </a>
        </div>        
        <div class="bx bx-menu" id="menu-icon"></div>
        <ul class="navbar">
            <li><a href="home.jsp#home" class="home-active">Trang chủ</a></li>
            <li><a href="home.jsp#categories">Danh mục</a></li>
            <li><a href="#products">Sản phẩm</a></li>
            <li><a href="home.jsp#about">Chúng tôi</a></li>
            <li><a href="home.jsp#customers">Khách hàng</a></li>
        </ul>
       
       
       <%-- Kiểm tra nếu người dùng đã đăng nhập --%>
		<div class="profile">
			<c:if test="${not empty userobj}">
				<ul class="navbar profile">
					<li><a href="cart.jsp"><i class="fas fa-shopping-cart"></i></a></li>
					<!-- Icon Giỏ hàng -->
					<li><a href="messages.jsp"><i class="fas fa-solid fa-bell"></i></a></li>
					<!-- Icon Hộp thư -->
					   <li class="dropdown">
                <a href="#" class="username">${userobj.name}</a>
                <div class="dropdown-menu">
                    <a href="profile.jsp">Thông tin cá nhân</a>
                    <a href="change-password.jsp">Đổi mật khẩu</a>
                    <a href="orders.jsp">Đơn hàng của tôi</a>
                </div>
            </li>


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

    <!-- Product Detail Section -->
    <section class="product-detail">
        <div class="product-detail-container">
            <div class="product-info">
                <h1>Bánh Bông lan Gỗ Giáng sinh</h1>
                <p class="price">100,000đ</p>
            </div>
            <!-- Product Image Section -->
            <div class="product-image">
                <img src="img/product-xmas-cake9.jpg" alt="Bánh Fondant Unicorn" class="main-image">
                <div class="thumbnail-container">
                    <div class="thumbnail">
                        <img src="img/product-xmas-cake9.jpg" alt="Thumbnail">
                    </div>
                    <div class="thumbnail">
                        <img src="img/product-xmas-cake1.webp" alt="Thumbnail">
                    </div>
                    <div class="thumbnail">
                        <img src="img/product-xmas-cake5.jpg" alt="Thumbnail">
                    </div>
                </div>
            </div>

            <div class="order-section">
                <div class="order-controls">
                    <button class="quantity-btn">-</button>
                    <input type="number" value="1" min="1" class="quantity-input">
                    <button class="quantity-btn">+</button>
                </div>
                <div class="order-buttons">
                    <button class="btn add-to-cart">THÊM VÀO GIỎ</button>
                    <button class="btn buy-now">MUA NGAY</button>
                </div>

                <div class="product-description">
                    <h3>Mô tả</h3>
                    <p><strong>Chi tiết sản phẩm:</strong></p>
                    <ul>
                        <li><strong>Size bánh:</strong>
                            <ul>
                                <li>Đường kính: 20cm</li>
                                <li>Độ cao mỗi tầng: 6cm</li>
                            </ul>
                        </li>
                        <li><strong>Cốt bánh:</strong> Vanilla butter, Chocolate butter, Củ dền, Đậu phộng, Matcha, Chocomint</li>
                        <li><strong>Nhân bánh:</strong> Mứt dâu/ thơm/ việt quất, Kem bơ truyền thống, Sốt phô mai/ sốt trứng muối</li>
                        <li><small>* Kích thước trên chỉ là phần thân bánh, chưa bao gồm phần trang trí.</small></li>
                    </ul>
                    <h3>Hướng dẫn bảo quản:</h3>
                    <ul>
                        <li>Bánh để ngoài nhiệt độ thường 3-4 tiếng.</li>
                        <li>Phòng máy lạnh và trời mát 4-6 tiếng.</li>
                        <li>Không để bánh gần thực phẩm hoặc hộp kín, bảo quản trong ngăn mát tủ lạnh.</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <section class="footer" id="footer">
            <div class="footer-box">
                <a href="#" class="logo"><i class='bx bxs-basket'></i>Snow Pastry</a>
                <p>24, Phố Hai Bà Trưng, Tràng Tiền <br>Hoàn Kiếm, Hà Nội</p>
                <div class="social">
                    <a href="#"><i class='bx bxl-facebook'></i></a>
                    <a href="#"><i class='bx bxl-twitter'></i></a>
                    <a href="#"><i class='bx bxl-instagram'></i></a>
                    <a href="#"><i class='bx bxl-youtube'></i></a>
                </div>
            </div>
            <div class="footer-box">
                <h2>Danh mục</h2>
                <a href="#">Bread</a>
                <a href="#">Pastry & Pie</a>
                <a href="#">Bingsu</a>
                <a href="#">Cake</a>
            </div>
            <div class="footer-box">
                <h2>Thông tin liên hệ</h2>
                <a href="#">Hotline tư vấn: 1900 779 907</a>
                <a href="#">Hotline khiếu nại: 0948225982</a>
                <a href="#">Liên hệ hợp tác: 0921004598</a>
                <a href="#">Email: support@snow.vn</a>
            </div>
            <div class="footer-box">
                <h2>Newsletter</h2>
                <p>Get 10% Discount with <br>Email Newsletter</p>
                <form action="">
                    <i class='bx bxs-envelope'></i>
                    <input type="email" name="" id="" placeholder="Nhập Email của bạn">
                    <i class='bx bx-arrow-back bx-rotate-180'></i>
                </form>
            </div>
        </section>
    </footer>  

    <div class="copy-right">
        <p>&#169; CarpoolVenom All Rights Reserved. Công ty TNHH Snow Việt Nam.</p>
    </div>

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script>
    document.addEventListener('DOMContentLoaded', () => {
        const thumbnails = document.querySelectorAll('.thumbnail img');
        const mainImage = document.querySelector('.main-image');

        thumbnails.forEach(thumbnail => {
            thumbnail.addEventListener('click', () => {
                // Thay đổi src của mainImage thành src của thumbnail được nhấn vào
                mainImage.src = thumbnail.src;
            });
        });
    });

    </script>
</body>
</html>
