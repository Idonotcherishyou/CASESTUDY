<jsp:include page="include/header.jsp" />
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!link rel="stylesheet" href="css/vendor.css" />
    <link rel="stylesheet" href="css/style.css" />

    <title>Homepage</title>
</head>
<body>


<!-- header -->
<header class="header header-absolute">
    <div class="py-1 bg-dark">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="owl-carousel owl-carousel-promo" data-loop="true" data-items="[3,3,2,1]" data-margin="10" data-nav="true">
                        <h6 class="fs-14 text-uppercase text-center text-white m-0"><i class="icon-truck mr-1 text-opaque"></i> Free Shipping and Returns</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a href="home.jsp" class="navbar-brand order-1 order-lg-2"><img src="images/logo copy.jpg" alt="Logo"></a>

            <div class="collapse navbar-collapse order-4 order-lg-1" id="navbarMenu">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown dropdown-sm dropdown-hover">
                        <a class="nav-link dropdown-toggle" href="#!" id="navbarDropdown-1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Home
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown-1">
                            <ul class="menu-list">
                                <li class="menu-list-item"><a href="#!" class="menu-list-link">Homepage</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item dropdown dropdown-lg dropdown-hover">
                        <a class="nav-link dropdown-toggle" href="#!" id="navbarDropdown-2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Template
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown-2">
                            <div class="container">
                                <div class="row gutter-2">
                                    <div class="col-lg-2">
                                        <span class="eyebrow text-muted mb-1">Shop</span>
                                        <ul class="menu-list">
                                            <li class="menu-list-item"><a href="shop/listing.jsp" class="menu-list-link">Listing sidebar</a></li>
                                            <li class="menu-list-item"><a href="shop/product.jsp" class="menu-list-link">Product default</a></li>

                                        </ul>
                                    </div>
                                    <div class="col-lg-2">
                                        <span class="eyebrow text-muted mb-1">Cart</span>
                                        <ul class="menu-list">
                                            <li class="menu-list-item"><a href="Cart/cart.jsp" class="menu-list-link">Cart</a></li>
                                            <li class="menu-list-item"><a href="Cart/checkout.jsp" class="menu-list-link">Checkout</a></li>
                                            <li class="menu-list-item"><a href="Cart/order.jsp" class="menu-list-link">Order</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-4">
                                        <span class="eyebrow text-muted mb-1">Account</span>
                                        <div class="row">
                                            <div class="col-6">
                                                <ul class="menu-list">
                                                    <li class="menu-list-item"><a href="Account/account-order-list.jsp" class="menu-list-link">Order list</a></li>
                                                    <li class="menu-list-item"><a href="Account/account-order-details.jsp" class="menu-list-link">Order details</a></li>
                                                    <li class="menu-list-item"><a href="Account/account-favorites.jsp" class="menu-list-link">Favorites</a></li>
                                                    <li class="menu-list-item"><a href="Account/account-personal-data.jsp" class="menu-list-link">Personal data</a></li>
                                                    <li class="menu-list-item"><a href="Account/account-password.jsp" class="menu-list-link">Change password</a></li>
                                                </ul>
                                            </div>
                                            <div class="col-6">
                                                <ul class="menu-list">
                                                    <li class="menu-list-item"><a href="Account/account-address-list.jsp" class="menu-list-link">Addresses</a></li>
                                                    <li class="menu-list-item"><a href="Account/account-address-edit.jsp" class="menu-list-link">Edit address</a></li>
                                                    <li class="menu-list-item"><a href="Account/login.jsp" class="menu-list-link">Login</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <span class="eyebrow text-muted mb-1">Other Pages</span>
                                        <ul class="menu-list">
                                            <li class="menu-list-item"><a href="about.html" class="menu-list-link">About</a></li>
                                            <li class="menu-list-item"><a href="contact.html" class="menu-list-link">Contact</a></li>
                                            <li class="menu-list-item"><a href="blog.html" class="menu-list-link">Blog</a></li>
                                            <li class="menu-list-item"><a href="blog-post.html" class="menu-list-link">Blog post</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="documentation.html">
                            Docs
                        </a>
                    </li>
                    <li class="nav-item dropdown-lg dropdown-hover">
                        <a class="nav-link dropdown-toggle text-red" href="#!" id="navbarDropdown-3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Sale
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown-3">
                            <div class="container">
                                <div class="row gutter-1">
                                    <div class="col-lg-6">
                                        <div class="card card-tile">
                                            <figure class="card-image equal equal-50">
                                                <span class="image" style="background-image:url(images/pk1.jpg)"></span>
                                            </figure>
                                            <div class="card-footer p-1">
                                                <div class="bg-white p-2">
                                                    <div class="row align-items-center">
                                                        <div class="col">
                                                            <h4 class="fs-20"><a href="#">50% Sale on Cardigans</a></h4>
                                                        </div>
                                                        <div class="col text-right">
                                                            <a href="" class="underline">Shop Now</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="card card-tile">
                                            <figure class="card-image equal equal-50">
                                                <span class="image" style="background-image: url(assets/images/demo/menu-sale-2.jpg)"></span>
                                            </figure>
                                            <div class="card-footer p-1">
                                                <div class="bg-white p-2">
                                                    <div class="row align-items-center">
                                                        <div class="col">
                                                            <h4 class="fs-20"><a href="#">20% Sale on Jewelery</a></h4>
                                                        </div>
                                                        <div class="col text-right">
                                                            <a href="" class="underline">Shop Now</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="collapse navbar-collapse order-5 order-lg-3" id="navbarMenu2">
                <ul class="navbar-nav ml-auto position-relative">

                    <!-- search -->
                    <li class="nav-item dropdown dropdown-md dropdown-hover">
                        <a class="nav-icon dropdown-toggle" id="navbarDropdown-4" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="icon-search d-none d-lg-inline-block"></i>
                            <span class="d-inline-block d-lg-none">Search</span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown-4">
                            <div class="form-group">
                                <input type="text" class="form-control" id="searchForm" placeholder="Search for items and brands">
                            </div>
                        </div>
                    </li>

                    <!-- localisation -->
                    <li class="d-none d-lg-inline nav-item dropdown dropdown-md dropdown-hover">
                        <a class="nav-icon" id="navbarDropdown-5" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon-globe"></i></a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown-5">
                            <fieldset>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="select-frame">
                                            <select class="custom-select custom-select-lg" id="countrySelect1">
                                                <option value="1">United States</option>
                                                <option value="2">Germany</option>
                                                <option value="3">France</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="select-frame">
                                            <select class="custom-select custom-select-lg" id="curencySelect1">
                                                <option value="1">USD</option>
                                                <option value="2">EUR</option>
                                                <option value="3">RUB</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </li>

                    <!-- user area -->
                    <li class="nav-item dropdown dropdown-md dropdown-hover">
                        <a class="nav-icon dropdown-toggle" id="navbarDropdown-6" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="icon-user d-none d-lg-inline-block"></i>
                            <span class="d-inline-block d-lg-none">Account</span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown-6">
                            <div class="row gutter-2">
                                <div class="col-12">
                                    <fieldset>
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-label-group">
                                                    <input type="text" id="inputName" class="form-control form-control-lg" placeholder="Name" required="" value="Dumitru">
                                                    <label for="inputName">First Name</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-label-group">
                                                    <input type="text" id="inputSurname" class="form-control form-control-lg" placeholder="Surname" required="">
                                                    <label for="inputSurname">Surname</label>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                                <div class="col-12 text-center">
                                    <a href="" class="underline fs-14">Forgot Password ?</a>
                                </div>
                                <div class="col-12">
                                    <a href="" class="btn btn-primary btn-block">Sign In</a>
                                    <a href="" class="btn btn-outline-secondary btn-block">Create Account</a>
                                </div>
                            </div>
                        </div>
                    </li>

                    <!-- favourites -->
                    <li class="d-none d-lg-inline nav-item dropdown dropdown-md dropdown-hover">
                        <a class="nav-icon" id="navbarDropdown-7" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon-heart"></i></a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown-7">
                            <div class="row gutter-3">
                                <div class="col-12">
                                    <h3 class="eyebrow text-dark fs-16 mb-1">My Favorites</h3>
                                    <p class="text-muted fs-14"><a href="" class="underline">Sign in</a> to keep your saves for up to 60 days.</p>
                                </div>
                                <div class="col-12">
                                    <div class="cart-item">
                                        <a href="#!" class="cart-item-image"><img src="assets/images/demo/product-1.jpg" alt="Image"></a>
                                        <div class="cart-item-body">
                                            <div class="row">
                                                <div class="col-9">
                                                    <h5 class="cart-item-title">Bold Cuff Insert Polo Shirt</h5>
                                                    <small>Fred Perry</small>
                                                    <ul class="list list--horizontal fs-14">
                                                        <li><s>$85.00</s></li>
                                                        <li class="text-red">$42.00</li>
                                                    </ul>
                                                </div>
                                                <div class="col-3 text-right">
                                                    <ul class="cart-item-options">
                                                        <li><a href="" class="icon-x"></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <a href="" class="btn btn-primary btn-block">Add all to cart</a>
                                    <a href="" class="btn btn-outline-secondary btn-block">View favorites</a>
                                </div>
                            </div>
                        </div>
                    </li>

                    <!-- cart -->
                    <li class="nav-item dropdown dropdown-md dropdown-hover">
                        <a class="nav-icon dropdown-toggle" id="navbarDropdown-8" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="icon-shopping-bag d-none d-lg-inline-block"></i>
                            <span class="d-inline-block d-lg-none">Bag</span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown-8">
                            <div class="row gutter-3">
                                <div class="col-12">
                                    <h3 class="eyebrow text-dark fs-16 mb-0">My Bag</h3>
                                </div>
                                <div class="col-12">
                                    <div class="cart-item">
                                        <a href="#!" class="cart-item-image"><img src="assets/images/demo/product-1.jpg" alt="Image"></a>
                                        <div class="cart-item-body">
                                            <div class="row">
                                                <div class="col-9">
                                                    <h5 class="cart-item-title">Bold Cuff Insert Polo Shirt</h5>
                                                    <small>Fred Perry</small>
                                                    <ul class="list list--horizontal fs-14">
                                                        <li><s>$85.00</s></li>
                                                        <li class="text-red">$42.00</li>
                                                    </ul>
                                                </div>
                                                <div class="col-3 text-right">
                                                    <ul class="cart-item-options">
                                                        <li><a href="" class="icon-x"></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <ul class="list-group list-group-minimal">
                                        <li class="list-group-item d-flex justify-content-between align-items-center text-uppercase font-weight-bold">
                                            Subtotal
                                            <span>$78.00</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-12">
                                    <a href="" class="btn btn-primary btn-block">Add all to cart</a>
                                    <a href="" class="btn btn-outline-secondary btn-block">View favorites</a>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="order-2 d-flex d-lg-none" id="navbarMenuMobile">
                <ul class="navbar-nav navbar-nav--icons ml-auto position-relative">

                    <!-- search -->
                    <li class="nav-item">
                        <a href="" class="nav-icon"><i class="icon-search"></i></a>
                    </li>

                    <!-- cart -->
                    <li class="nav-item dropdown dropdown-md dropdown-hover">
                        <a href="" class="nav-icon"><i class="icon-shopping-bag"></i></a>
                    </li>

                    <!-- menu -->
                    <li class="nav-item dropdown dropdown-md dropdown-hover">
                        <a href="" class="nav-icon" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbarMenu" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="icon-menu"></i>
                        </a>
                    </li>

                </ul>
            </div>

        </nav>
    </div>
</header>


<!-- swiper -->
<div class="swiper-container">
    <div class="swiper-wrapper">

        <div class="swiper-slide">
            <div class="image" style="background-image:url(images/frontpage/pk1.jpg)"></div>
            <div class="container">
                <div class="row align-items-end vh-100">
                    <div class="col-lg-8 text-white" data-swiper-parallax-x="-100%">
                        <span class="eyebrow">Big Bodies Collection</span>
                        <h1 class="mb-3 text-uppercase">Prints available now!</h1>
                        <a href="listing-full.html" class="btn btn-outline-white">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="swiper-slide">
            <div class="image image--overlay" style="background-image:url(images/frontpage/kay1.jpg)"></div>
            <div class="container">
                <div class="row align-items-end vh-100">
                    <div class="col-lg-8 text-white" data-swiper-parallax-x="-100%">
                        <span class="eyebrow">New Collection</span>
                        <h1>Casual Dresses</h1>
                        <a href="listing-full.html" class="btn btn-outline-white">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="swiper-footer">
        <div class="container">
            <div class="row justify-content-end align-items-center">
                <div class="col-lg-6 text-right">
                    <div class="swiper-navigation">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="include/footer.jsp" />