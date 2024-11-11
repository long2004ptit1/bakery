<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
    
<!-- header section starts  -->

<header class="header">

    <a href="home.html" class="logo"> <i class="fas fa-shopping-basket"></i> groco </a>

    <nav class="navbar">
        <a href="home.html">home</a>
        <a href="shop.html">shop</a>
        <a href="about.html">about</a>
        <a href="review.html">review</a>
        <a href="blog.html">blog</a>
        <a href="contact.html">contact</a>
    </nav>

    <div class="icons">
        <div id="menu-btn" class="fas fa-bars"></div>
        <div id="search-btn" class="fas fa-search"></div>
        <div id="cart-btn" class="fas fa-shopping-cart"></div>
        <div id="login-btn" class="fas fa-user"></div>
    </div>

    <form action="" class="search-form">
        <input type="search" placeholder="search here..." id="search-box">
        <label for="search-box" class="fas fa-search"></label>
    </form>

    <div class="shopping-cart">
        <div class="box">
            <i class="fas fa-times"></i>
            <img src="image/cart-1.jpg" alt="">
            <div class="content">
                <h3>organic food</h3>
                <span class="quantity">1</span>
                <span class="multiply">x</span>
                <span class="price">$18.99</span>
            </div>
        </div>
        <div class="box">
            <i class="fas fa-times"></i>
            <img src="image/cart-2.jpg" alt="">
            <div class="content">
                <h3>organic food</h3>
                <span class="quantity">1</span>
                <span class="multiply">x</span>
                <span class="price">$18.99</span>
            </div>
        </div>
        <div class="box">
            <i class="fas fa-times"></i>
            <img src="image/cart-3.jpg" alt="">
            <div class="content">
                <h3>organic food</h3>
                <span class="quantity">1</span>
                <span class="multiply">x</span>
                <span class="price">$18.99</span>
            </div>
        </div>
        <h3 class="total"> total : <span>56.97</span> </h3>
        <a href="#" class="btn">checkout cart</a>
    </div>

    <form action="" class="login-form">
        <h3>login form</h3>
        <input type="email" placeholder="enter your email" class="box">
        <input type="password" placeholder="enter your password" class="box">
        <div class="remember">
            <input type="checkbox" name="" id="remember-me">
            <label for="remember-me">remember me</label>
        </div>
        <input type="submit" value="login now" class="btn">
        <p>forget password? <a href="#">click here</a></p>
        <p>don't have an account? <a href="#">create one</a></p>
    </form>

</header>

<!-- header section ends -->

<section class="home">

    <div class="slides-container">

        <div class="slide active">
            <div class="content">
                <span>fresh and organic</span>
                <h3>upto 50% off</h3>
                <a href="#" class="btn">shop now</a>
            </div>
            <div class="image">
                <img src="image/home-img-1.png" alt="">
            </div>
        </div>

        <div class="slide">
            <div class="content">
                <span>fresh and organic</span>
                <h3>upto 50% off</h3>
                <a href="#" class="btn">shop now</a>
            </div>
            <div class="image">
                <img src="image/home-img-2.png" alt="">
            </div>
        </div>

        <div class="slide">
            <div class="content">
                <span>fresh and organic</span>
                <h3>upto 50% off</h3>
                <a href="#" class="btn">shop now</a>
            </div>
            <div class="image">
                <img src="image/home-img-3.png" alt="">
            </div>
        </div>

    </div>

    <div id="next-slide" class="fas fa-angle-right" onclick="next()"></div>
    <div id="prev-slide" class="fas fa-angle-left" onclick="next()"></div>

</section>

<section class="banner-container">

    <div class="banner">
        <img src="image/banner-1.jpg" alt="">
        <div class="content">
            <span>limited sales</span>
            <h3>upto 50% off</h3>
            <a href="#" class="btn">shop now</a>
        </div>
    </div>

    <div class="banner">
        <img src="image/banner-2.jpg" alt="">
        <div class="content">
            <span>limited sales</span>
            <h3>upto 50% off</h3>
            <a href="#" class="btn">shop now</a>
        </div>
    </div>

    <div class="banner">
        <img src="image/banner-3.jpg" alt="">
        <div class="content">
            <span>limited sales</span>
            <h3>upto 50% off</h3>
            <a href="#" class="btn">shop now</a>
        </div>
    </div>

</section>





















<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>quick links</h3>
            <a href="home.html"> <i class="fas fa-arrow-right"></i> home</a>
            <a href="shop.html"> <i class="fas fa-arrow-right"></i> shop</a>
            <a href="about.html"> <i class="fas fa-arrow-right"></i> about</a>
            <a href="review.html"> <i class="fas fa-arrow-right"></i> review</a>
            <a href="blog.html"> <i class="fas fa-arrow-right"></i> blog</a>
            <a href="contact.html"> <i class="fas fa-arrow-right"></i> contact</a>
        </div>

        <div class="box">
            <h3>extra links</h3>
            <a href="#"> <i class="fas fa-arrow-right"></i> my order </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> my favorite </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> my wishlist </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> my account </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> terms or use </a>
        </div>

        <div class="box">
            <h3>follow us</h3>
            <a href="#"> <i class="fab fa-facebook-f"></i> facebook </a>
            <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
            <a href="#"> <i class="fab fa-instagram"></i> instagram </a>
            <a href="#"> <i class="fab fa-linkedin"></i> linkedin </a>
            <a href="#"> <i class="fab fa-pinterest"></i> pinterest </a>
        </div>

        <div class="box">
            <h3>newsletter</h3>
            <p>subscribe for latest updates</p>
            <form action="">
                <input type="email" placeholder="enter your email">
                <input type="submit" value="subscribe" class="btn">
            </form>
            <img src="image/payment.png" class="payment" alt="">
        </div>

    </div>

</section>

<section class="credit">created by mr. web designer | all rights reserved!</section>

<!-- footer section ends -->













<!-- custom css file link  -->
<script src="js/script.js"></script>

</body>
</html>