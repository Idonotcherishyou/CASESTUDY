<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Day Bootstrap Template - Index</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/public/vendor/aos/aos.css" rel="stylesheet">
    <link href="/public/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/public/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/public/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="/public/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="/public/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/public/css/style.css" rel="stylesheet">

</head>

<body>

<!-- ======= Top Bar ======= -->
<section id="topbar" class="d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
        <div class="contact-info d-flex align-items-center">
            <i class="bi bi-envelope-fill"></i><a href="mailto:contact@example.com">scrishw@gmail.com</a>
            <i class="bi bi-phone-fill phone-icon"></i> 612-615-3888
        </div>
        <div class="social-links d-none d-md-block">
            <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
            <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
            <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
            <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
        </div>
    </div>
</section>

<!-- ======= Header ======= -->
<header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

        <%--        <h1 class="logo"><a href="/index">Day</a></h1>--%>
        <!-- Uncomment below if you prefer to use an image logo -->
        <a href="/index" class="logo"><img src="/public/img/logo.png" alt="" class="img-fluid"></a>

        <nav id="navbar" class="navbar">
            <ul>
                <li><a class="nav-link scrollto active" href="/index">Home</a></li>
                <sec:authorize access="hasAuthority('Admin')">
                    <li><a class="nav-link scrollto" href="/shop/prints">Prints</a></li>
                </sec:authorize>
<%--                <sec:authorize access="hasAuthority('Admin')">--%>
<%--                    <li><a class="nav-link scrollto" href="/user/search">Search</a></li>--%>
<%--                </sec:authorize>--%>
                <sec:authorize access="!isAuthenticated()">
                <li><a class="nav-link scrollto" href="/login/login">Login</a></li>
                </sec:authorize>
                <li><a class="nav-link scrollto" href="/register/registerForm">Register</a></li>
                <li><a class="nav-link scrollto" href="/shop/listing">Lisiting</a></li>
                <li><a class="nav-link scrollto" href="/login/logout">LogOUT</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
            <li><a class="nav-link scrollto" href="/user/search">Search</a></li>

    </div>
</header>
<script src="/public/js/main.js"></script>
