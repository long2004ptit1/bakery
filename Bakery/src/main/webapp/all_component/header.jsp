<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>/* Google Fonts */
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;900&display=swap");
        :root {
          --green-color: #004380;
          --light-green-color: #ffc2c2;
          --orange-color: #ff7e00;
          --light-orange-color: #ff7e00;
          --text-color: #1a2428;
          --bg-color: #fff;
        }
        body {
          font-family: "Poppins", sans-serif;
          position: fixed;
          width: 100%;
          height: 50px;
          top: 0;
          right: 0;
          z-index: 1000;
          display: flex;
          align-items: center;
          justify-content: space-between;
          background: var(--bg-color);
          box-shadow: 0 8px 11px rgba(14, 55, 54, 0.15);
          padding: 20px 100px;
          transition: 0.5s;
        }
        
        /* Profile Section */
        .navbar.profile {
          display: flex;
          justify-content: flex-end; /* Align to the right */
          gap: 10px; /* Add space between login and register links */
          list-style-type: none;
        }
        
        .navbar.profile li {
          display: inline-flex;
          white-space: nowrap; /* Prevent text from wrapping to a new line */
        }
        
        .navbar.profile a {
          font-size: 1.1rem;
          font-weight: 500;
          color: var(--text-color);
          padding: 0.1rem 1rem; /* Adjust padding to allow more space */
          text-decoration: none; /* Remove underline from the links */
        }
        
        .navbar.profile a:hover {
          background: var(--green-color);
          border-radius: 5rem;
          color: var(--bg-color);
        }
        
        .logo-container {
          display: flex;
          align-items: center;
          margin-left: 120px;
        }
        
        .logo-img {
          width: 220px;
          height: 80px; /* Điều chỉnh kích thước theo nhu cầu */
          margin-right: 20px; /* Tạo khoảng cách giữa logo và text */
        }
        
        .logo {
          font-size: 20px;
          color: #1d2ffa; /* Màu sắc cho text */
        }
        
        .logo {
          display: flex;
          align-items: center;
          font-size: 1.2rem;
          font-weight: 600;
          color: #c0eb7b;
          column-gap: 0.5rem;
        }
        
        .logo .bx {
          font-size: 0px;
          color: var(--orange-color);
        }
        
        ul {
          list-style-type: none; /*loại bỏ dấu chấm ở đầu xấu vãi */
          padding: 0;
          margin: 0;
        }
        .navbar {
          display: flex;
          justify-content: space-between;
          align-items: center;
          padding: 10px 20px; /* Giảm padding để thanh navbar trông gọn hơn */
          background-color: #b9ecff;
          box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
          max-width: 1000px; /* Giới hạn chiều rộng tối đa cho thanh navbar */
          width: 80%; /* Thanh navbar sẽ chiếm 80% chiều ngang trang */
          margin: 0 auto; /* Căn giữa thanh navbar trên trang */
          border-radius: 9px; /* Bo góc thanh navbar (tùy chọn) */
        }
        .nav-links {
          list-style: none; /* Loại bỏ dấu chấm trước mỗi mục */
          display: flex;
          justify-content: center; /* Đảm bảo các mục menu được căn giữa trong thanh navbar */
          margin: 0 auto; /* Căn giữa phần menu */
          flex: 1; /* Chiếm toàn bộ khoảng trống còn lại giữa logo và profile */
          gap: 0px;
          padding-left: 0;
        }
        
        .navbar a {
          font-size: 1.1rem;
          font-weight: 500;
          color: var(--text-color);
          padding: 0.5rem 1rem;
        }
        
        .navbar a:hover {
          background: var(--green-color);
          border-radius: 5rem;
          color: var(--bg-color);
        }
        </style>
</head>
<body>
   <div class="logo-container">
        <a href="#">
            <img src="/Bakery/img/logo2.png" alt="logo" class="logo-img">

        </a>
    </div>        

    <!-- Nav List -->
    <ul class="navbar">
        <li><a href="#home" class="home-active">Trang chủ</a></li>
        <li><a href="#categories">Danh mục</a></li>
        <li><a href="#products">Sản phẩm</a></li>
        <li><a href="#about">Chúng tôi</a></li>
        <li><a href="#customers">Khách hàng</a></li>
    </ul>
    <!-- Profile -->
    <div class="profile" >
        <ul class="navbar profile">
            <li><a href="login.jsp">Đăng nhập</a></li>
            <li><a href="register.jsp">Đăng ký</a></li>
        </ul>

    </div>
</body>
</html>