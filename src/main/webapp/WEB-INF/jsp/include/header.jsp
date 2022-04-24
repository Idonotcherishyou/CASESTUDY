<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <title>Website menu 08</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/style.css">

</head>
<body>

<div class="page">
    <nav id="colorlib-main-nav" role="navigation">
        <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle active"><i></i></a>
        <div class="js-fullheight colorlib-table">
            <div class="img" style="background-image: url(images/bg_3.jpg);"></div>
            <div class="colorlib-table-cell js-fullheight">
                <div class="row no-gutters">
                    <div class="col-md-12 text-center">
                        <h1 class="mb-4"><a href="index.html" class="logo">Company Logo</a></h1>
                        <ul>
                            <li class="active"><a href="index"><span>Home</span></a></li>
                            <li><a href="/login/login"><span>Login</span></a></li>
                            <li><a href="/register/registerForm"><span>Register</span></a></li>
                            <li><a href="/home/prints"><span>Shop</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <div id="colorlib-page">
        <header>
            <div class="container">
                <div class="colorlib-navbar-brand">
                    <a class="navbar-brand" href="#">
                        <img src="images/logo.jpg" width="200" height="100" alt="">
                    </a>
                </div>
                <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
            </div>
        </header>

<%--<nav class="navbar navbar-light bg-light">--%>

<%--    </a>--%>
<%--</nav>--%>













<%--<!-- header -->--%>

<%--<!doctype html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>
<%--&lt;%&ndash;    <!link rel="stylesheet" href="css/vendor.css" />&ndash;%&gt;--%>
<%--&lt;%&ndash;    <link rel="stylesheet" href="css/style.css" />&ndash;%&gt;--%>

<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>


<%--<header class="header header-absolute">--%>
<%--    <div class="py-1 bg-dark">--%>
<%--        <div class="container">--%>
<%--            <div class="row">--%>
<%--                <div class="col">--%>
<%--                    <div class="owl-carousel owl-carousel-promo" data-loop="true" data-items="[3,3,2,1]" data-margin="10" data-nav="true">--%>
<%--                        <h6 class="fs-14 text-uppercase text-center text-white m-0"><i class="icon-truck mr-1 text-opaque"></i> Free Shipping and Returns</h6>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="container">--%>
<%--        <nav class="navbar navbar-expand-lg navbar-light">--%>
<%--            <a href="index" class="navbar-brand order-1 order-lg-2"><img src="images/logo copy.jpg" alt="Logo"></a>--%>

<%--            <div class="collapse navbar-collapse order-4 order-lg-1" id="navbarMenu">--%>
<%--                <ul class="navbar-nav mr-auto">--%>
<%--                    <li class="nav-item dropdown dropdown-sm dropdown-hover">--%>
<%--                        <a class="nav-link dropdown-toggle" href="index" id="navbarDropdown-1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
<%--                            Home--%>
<%--                        </a>--%>
<%--                        <div class="dropdown-menu" aria-labelledby="navbarDropdown-1">--%>
<%--                            <ul class="menu-list">--%>
<%--                                <li class="menu-list-item"><a href="index.jsp" class="menu-list-link">Homepage</a></li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item dropdown dropdown-lg dropdown-hover">--%>
<%--                        <a class="nav-link dropdown-toggle" href="#!" id="navbarDropdown-2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
<%--                            Start Here--%>
<%--                        </a>--%>
<%--                        <div class="dropdown-menu" aria-labelledby="navbarDropdown-2">--%>
<%--                            <div class="container">--%>
<%--                                <div class="row gutter-2">--%>
<%--                                    <div class="col-lg-2">--%>
<%--                                        <span class="eyebrow text-muted mb-1">Shop</span>--%>
<%--                                        <ul class="menu-list">--%>
<%--                                            <li class="menu-list-item"><a href="shop/listing" class="menu-list-link">Product List</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                    <div class="col-lg-2">--%>
<%--                                        <span class="eyebrow text-muted mb-1">Cart</span>--%>
<%--                                        <ul class="menu-list">--%>
<%--                                            <li class="menu-list-item"><a href="Cart/cart.jsp" class="menu-list-link">Cart</a></li>--%>
<%--                                            <li class="menu-list-item"><a href="Cart/checkout.jsp" class="menu-list-link">Checkout</a></li>--%>
<%--                                            <li class="menu-list-item"><a href="Cart/order.jsp" class="menu-list-link">Order</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                    <div class="col-lg-4">--%>
<%--                                        <span class="eyebrow text-muted mb-1">Account</span>--%>
<%--                                        <div class="row">--%>
<%--                                            <div class="col-6">--%>
<%--                                            </div>--%>
<%--                                            <div class="col-6">--%>
<%--                                                <ul class="menu-list">--%>
<%--                                                    <li class="menu-list-item"><a href="/login/login" class="menu-list-link">Login</a></li>--%>
<%--                                                    <li class="menu-list-item"><a href="/register/registerForm" class="menu-list-link">Register</a></li>--%>
<%--                                                </ul>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="col-lg-2">--%>
<%--                                        <span class="eyebrow text-muted mb-1">Other Pages</span>--%>
<%--                                        <ul class="menu-list">--%>
<%--                                            <li class="menu-list-item"><a href="about.html" class="menu-list-link">About</a></li>--%>
<%--                                            <li class="menu-list-item"><a href="contact.html" class="menu-list-link">Contact</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </nav>--%>
<%--    </div>--%>
<%--</header>--%>



