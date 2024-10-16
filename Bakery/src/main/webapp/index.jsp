<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--Link to CSS -->
    <link rel="stylesheet" href="all_component/style.css">
    <!--box Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <!--Link Swiper Css-->
    <link
    rel="stylesheet"
    href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />
</head>
<body>

    <!-- Navbar -->
    <header>
<%@include file="all_component/navbar.jsp"%>
    </header>
    <!-- Carousel -->
    <div class="carousel">
        <div class="carousel-images">
            <div class="slide active">
                <img src="img/Pasted Graphic 1.png" alt="Slide 1">
            </div>
            <div class="slide">
                <img src="img/Pasted Graphic 2.png" alt="Slide 2">
            </div>
            <div class="slide">
                <img src="img/Pasted Graphic 3.png" alt="Slide 3">
            </div>
            <div class="slide">
                <img src="img/wintersale.png" alt="Slide 3">
            </div>
            <div class="slide">
                <img src="img/Pasted Graphic 5.png" alt="Slide 3">
            </div>
        </div>
        <button class="prev" onclick="moveSlide(-1)">&#10094;</button>
        <button class="next" onclick="moveSlide(1)">&#10095;</button>
    </div>

    <!-- Home -->
    <section class="home swiper" id="home">
        <div class="swiper-wrapper">
            <!-- Slide 1 -->
            <div class="swiper-slide container">
                <div class="home-text">
                    <span>Chúng tôi là Snow Pastry</span>
                    <h1>Bánh xinh đẹp <br>nguyên liệu chất lượng <br>hương vị thơm ngon</h1>
                    <a href="#" class="btn">Mua ngay!<i class='bx bx-right-arrow-alt'></i></a>
                </div>
                <img src="img/animebake.webp" alt="Ice Cream">
            </div>

            <!-- Slide 2 -->
            <div class="swiper-slide container">
                <div class="home-text">
                    <span>Tuyết tan - vị ngọt lan</span>
                    <h1>Bingsu mát lạnh <br>Tận hưởng bingsu <br>đánh thức vị giác</h1>
                    <a href="#" class="btn">Shop now<i class='bx bx-right-arrow-alt'></i></a>
                </div>
                <img src="img/bingsuanime.webp" alt="Home Image 2">
            </div>

            <!-- Slide 3 -->
            <div class="swiper-slide container">
                <div class="home-text">
                    <span>We are delicacy</span>
                    <h1>Choose delicacy <br>the best healthy <br>chicken salad</h1>
                    <a href="#" class="btn">Shop now<i class='bx bx-right-arrow-alt'></i></a>
                </div>
                <img src="img/crossaint.png" alt="Home Image 3">
            </div>
        </div>

        <!-- Nút điều hướng -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

        <!-- Pagination -->
        <div class="swiper-pagination"></div>
    </section> 
    <!-- web savor-->
    <section class="mousse-collection">
        <div class="mousse-content">
            <div class="mousse-info">
                <h2>Bộ sưu tập bánh Christmas <br>
                    <span class="highlight">Cookies</span>
                    <span class="highlight1">Cake</span>
                    <span class="highlight">Panettone</span>
                </h2>
                <p>
                    Chào đón mùa lễ hội Snow ra mắt bộ sưu tập bánh giáng sinh, bao gồm cookies thơm giòn, cake mềm mịn, và Panettone truyền thống Ý đầy hấp dẫn. 🎄🍪.
                    Ngọt ngào không thể chối từ - mỗi chiếc bánh trong bộ sưu tập đều mang hương vị ấm áp của Giáng Sinh để tận hưởng cùng gia đình và bạn bè. 🎁🍰
                </p>
            </div>
            <div class="mousse-images">
                <img src="img/Christmas1.png" alt="Bánh mousse 1" class="mousse-img">
                <img src="img/Christmas2.png" alt="Bánh mousse 2" class="mousse-img">
                <img src="img/Christmas3.png" alt="Bánh mousse 3" class="mousse-img">
            </div>
        </div>
    </section>
     
    <!-- Categories -->
    <section class="categories" id="categories">
        <div class="heading">
            <h1>Browse Our Hottest <br><span>Categories</span></h1>
            <a href="#" class="btn">See All<i class='bx bx-right-arrow-alt'></i></a>
        </div>
        <div class="categories-container">
            <div class="box box1">
                <img src="img/catechristmas.png" alt="">
                <h2 class="christmas">Christmas</h2>
                <span class="christmas">22 Items</span>
                <i class='bx bx-right-arrow-alt'></i>
            </div>
            <div class="box box2">
                <img src="img/catebread.png" alt="">
                <h2>Bread</h2>
                <span>22 Items</span>
                <i class='bx bx-right-arrow-alt'></i>
            </div>
            <div class="box box3">
                <img src="img/catepastry.png" alt="">
                <h2>Pastry & Pie</h2>
                <span>22 Items</span>
                <i class='bx bx-right-arrow-alt'></i>
            </div>
            <div class="box box4">
                <img src="img/catebingsu.png" alt="">
                <h2>Bingsu</h2>
                <span>22 Items</span>
                <i class='bx bx-right-arrow-alt'></i>
            </div>
            <div class="box box5">
                <img src="img/catecake.png" alt="">
                <h2>Cake</h2>
                <span>5 Items</span>
                <i class='bx bx-right-arrow-alt'></i>
            </div>
        </div>
    </section>
    <!-- Products -->
    <section class="products" id="products">
        <div class="heading">
            <h1>Our Popular<br><span>Products</span></h1>
            <a href="#" class="btn">Shop now<i class='bx bx-right-arrow-alt'></i></a>
        </div>
        <!-- Product Content -->
        <div class="product-container">
            <!-- Box 1 -->
            <div class="box">
                <img src="img/p1.png" alt="">
                <span>Fresh Items</span>
                <h2>Farm fresh organic <br>fruits 250g</h2>
                <h3 class="price">$7.99 <span>/kg</span></h3>
                <i class='bx bx-cart-alt'></i>
                <i class='bx bx-heart'></i>
                <span class="discount">-25%</span>
            </div>
            <!-- Box 2 -->
            <div class="box">
                <img src="img/p2.png" alt="">
                <span>Fresh Items</span>
                <h2>Farm fresh organic <br>fruits 250g</h2>
                <h3 class="price">$7.99 <span>/kg</span></h3>
                <i class='bx bx-cart-alt'></i>
                <i class='bx bx-heart'></i>
                <span class="discount">-25%</span>
            </div>
            <!-- Box 3 -->
            <div class="box">
                <img src="img/p3.png" alt="">
                <span>Fresh Items</span>
                <h2>Farm fresh organic <br>fruits 250g</h2>
                <h3 class="price">$7.99 <span>/kg</span></h3>
                <i class='bx bx-cart-alt'></i>
                <i class='bx bx-heart'></i>
                <span class="discount">-25%</span>
            </div>
            <!-- Box 4 -->
            <div class="box">
                <img src="img/p4.png" alt="">
                <span>Fresh Items</span>
                <h2>Farm fresh organic <br>fruits 250g</h2>
                <h3 class="price">$7.99 <span>/kg</span></h3>
                <i class='bx bx-cart-alt'></i>
                <i class='bx bx-heart'></i>
                <span class="discount">-25%</span>
            </div>
            <!-- Box 5 -->
            <div class="box">
                <img src="img/p5.png" alt="">
                <span>Fresh Items</span>
                <h2>Farm fresh organic <br>fruits 250g</h2>
                <h3 class="price">$7.99 <span>/kg</span></h3>
                <i class='bx bx-cart-alt'></i>
                <i class='bx bx-heart'></i>
                <span class="discount">-25%</span>
            </div>
        </div>
    </section>
    <!-- About -->
    <section class="about" id="about">
        <img src="img/about.png" alt="">
        <div class="about-text">
            <span>Về Snow Pastry</span>
            <p>Snow Pastry cam kết mang đến những chiếc bánh chất lượng cao, mềm mịn, ẩm mượt và tốt cho sức khỏe.</p>
            <p>Chúng tôi cung cấp đa dạng các loại bánh ngọt và kem, được chế biến để mang lại niềm vui trong từng miếng bánh.

            </p>
            <a href="#" class="btn">Learn More<i class='bx bx-right-arrow-alt'></i></a>
        </div>
    </section>
    <!-- Customers -->
    <section class="customers" id="customers">
        <h2>Why Customers Love Us?</h2>
        <!-- Customers Content -->
        <div class="customer-container">
            <!-- Review 1 -->
            <div class="box">
                <i class='bx bxs-quote-alt-left'></i>
                <div class="stars">
                    <i class='bx bxs-star'></i>
                    <i class='bx bxs-star'></i>
                    <i class='bx bxs-star'></i>
                    <i class='bx bxs-star'></i>
                    <i class='bx bxs-star-half'></i>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                <div class="review-profile">
                    <img src="img/c1.jpg" alt="">
                    <h3>Michele Smith</h3>
                </div>
            </div>
            <!-- Review 2 -->
            <div class="box">
                <i class='bx bxs-quote-alt-left'></i>
                <div class="stars">
                    <i class='bx bxs-star'></i>
                    <i class='bx bxs-star'></i>
                    <i class='bx bxs-star'></i>
                    <i class='bx bxs-star'></i>
                    <i class='bx bxs-star-half'></i>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                <div class="review-profile">
                    <img src="img/c2.jpg" alt="">
                    <h3>Michele Smith</h3>
                </div>
            </div>
            <!-- Review 3 -->
            <div class="box">
                <i class='bx bxs-quote-alt-left'></i>
                <div class="stars">
                    <i class='bx bxs-star'></i>
                    <i class='bx bxs-star'></i>
                    <i class='bx bxs-star'></i>
                    <i class='bx bxs-star'></i>
                    <i class='bx bxs-star-half'></i>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                <div class="review-profile">
                    <img src="img/c3.jpg" alt="">
                    <h3>Michele Smith</h3>
                </div>
            </div>
        </div>
    </section>
 <%@include file="all_component/footer.jsp"%> 
    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <!-- Link To JS -->
    <script src="main.js"></script>
</body>
</html>