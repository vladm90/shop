<%@ page import="com.springapp.handler.FBConnection" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="p" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: vmotoroiu
  Date: 15.04.2016
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<!--[if IE 8]> <html class="ie8"> <![endif]-->
<!--[if IE 9]> <html class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <title>Venedor - Responsive eCommerce Template</title>
  <meta name="description" content="Responsive modern ecommerce Html5 Template">
  <!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic%7CPT+Gudea:400,700,400italic%7CPT+Oswald:400,700,300' rel='stylesheet' id="googlefont">

  <link rel="stylesheet" href="/css/bootstrap.min.css">
  <link rel="stylesheet" href="/css/font-awesome.min.css">
  <link rel="stylesheet" href="/css/font-awesome.css">
  <link rel="stylesheet" href="/css/prettyPhoto.css">
  <link rel="stylesheet" href="/css/colpick.css">
  <link rel="stylesheet" href="/css/sequence-slider.css">
  <link rel="stylesheet" href="/css/owl.carousel.css">
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/responsive.css">
  <link rel="stylesheet" href="/css/bootstrap-social.css">

  <!-- Favicon and Apple Icons -->
  <link rel="icon" type="image/png" href="/images/icons/icon.html">
  <link rel="apple-touch-icon" sizes="57x57" href="/images/icons/apple-icon-57x57.html">
  <link rel="apple-touch-icon" sizes="72x72" href="/images/icons/apple-icon-72x72.html">

  <!--- jQuery -->
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
  <!--[if lt IE 9]>
  <script src="/js/html5shiv.js"></script>
  <script src="/js/respond.min.js"></script>
  <![endif]-->

  <style id="custom-style">

  </style>

  <style>

  .error {
    padding: 15px;
    margin-bottom: 0px;
    border: 1px solid transparent;
    border-radius: 4px;
    color: #a94442;
    background-color: #f2dede;
    border-color: #ebccd1;
  }
  .msg {
    padding: 15px;
    margin-bottom: 20px;
    border: 1px solid transparent;
    border-radius: 4px;
    color: #31708f;
    background-color: #d9edf7;
    border-color: #bce8f1;
  }

  </style>
  <script>
    window.fbAsyncInit = function() {
      FB.init({
        appId      : '225673607790275',
        xfbml      : true,
        version    : 'v2.6'
      });
    };

    (function(d, s, id){
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) {return;}
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
  </script>
</head>

<body<%-- onload='document.loginForm.email.focus();'--%>>


<div id="wrapper">
  <header id="header">
    <div id="header-top">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="header-top-left">
              <ul id="top-links" class="clearfix">
                <li><a href="#" title="My Wishlist"><span class="top-icon top-icon-pencil"></span><span class="hide-for-xs">My Wishlist</span></a></li>
                <li><a href="#" title="My Account"><span class="top-icon top-icon-user"></span><span class="hide-for-xs">My Account</span></a></li>
                <li><a href="cart.html" title="My Cart"><span class="top-icon top-icon-cart"></span><span class="hide-for-xs">My Cart</span></a></li>
                <li><a href="checkout.html" title="Checkout"><span class="top-icon top-icon-check"></span><span class="hide-for-xs">Checkoaut</span></a></li>
                <li><a href="/test" title="asd"><span class="top-icon top-icon-check"></span><span class="hide-for-xs">TEST</span></a></li>
              </ul>
            </div><!-- End .header-top-left -->
            <div class="header-top-right">

              <div class="header-top-dropdowns pull-right">
                <div class="btn-group dropdown-money">
                  <button type="button" class="btn btn-custom dropdown-toggle" data-toggle="dropdown">
                    <span class="hide-for-xs">MONEDA</span><span class="hide-for-lg">$</span>
                  </button>
                  <ul class="dropdown-menu pull-right" role="menu">
                    <li><a href="#"><span class="hide-for-xs">LEI</span><span class="hide-for-lg">&euro;</span></a></li>
                    <li><a href="#"><span class="hide-for-xs">EURO</span><span class="hide-for-lg">&pound;</span></a></li>
                  </ul>
                </div><!-- End .btn-group -->
                <div class="btn-group dropdown-language">
                  <button type="button" class="btn btn-custom dropdown-toggle" data-toggle="dropdown">
                    <span class="flag-container"><img src="/images/romania-flag.png" alt="flag of romania"></span>
                    <span class="hide-for-xs">Romana</span>
                  </button>
                  <ul class="dropdown-menu pull-right" role="menu">
                    <li><a href="#"><span class="flag-container"><img src="/images/england-flag.png" alt="flag of england"></span><span class="hide-for-xs">English</span></a></li>
                    <li><a href="#"><span class="flag-container"><img src="/images/romania-flag.png" alt="flag of romania"></span><span class="hide-for-xs">Romana</span></a></li>
                    <li><a href="#"><span class="flag-container"><img src="/images/france-flag.png" alt="flag of france"></span><span class="hide-for-xs">French</span></a></li>
                    <li><a href="#"><span class="sm-separator"><img src="/images/germany-flag.png" alt="flag of germany"></span><span class="hide-for-xs">German</span></a></li>
                  </ul>
                </div><!-- End .btn-group -->
              </div><!-- End .header-top-dropdowns -->

              <div class="header-text-container pull-right">
                <p class="header-text">Welcome to Venedor!</p>
                <p class="header-link"><a href="#">login</a>&nbsp;or&nbsp;<a href="#">create an account</a></p>
              </div><!-- End .pull-right -->
            </div><!-- End .header-top-right -->
          </div><!-- End .col-md-12 -->
        </div><!-- End .row -->
      </div><!-- End .container -->
    </div><!-- End #header-top -->

    <div id="inner-header">
      <div class="container">
        <div class="row">
          <div class="col-md-5 col-sm-5 col-xs-12 logo-container">
            <h1 class="logo clearfix">
              <span>Responsive eCommerce Template</span>
              <a href="index-2.html" title="Venedor eCommerce Template"><img src="/images/logo.png" alt="Venedor Commerce Template" width="238" height="76"></a>
            </h1>
          </div><!-- End .col-md-5 -->
          <div class="col-md-7 col-sm-7 col-xs-12 header-inner-right">

            <div class="header-box contact-infos pull-right">
              <ul>
                <li><span class="header-box-icon header-box-icon-skype"></span>c.motoroiu</li>
                <li><span class="header-box-icon header-box-icon-email"></span><a href="mailto:c.motoroiu@yahoo.com">c.motoroiu@yahoo.com</a></li>
              </ul>
            </div><!-- End .contact-infos -->

            <div class="header-box contact-phones pull-right clearfix">
              <span class="header-box-icon header-box-icon-earphones"></span>
              <ul class="pull-left">
                <li>Cristian: +(40) 733 020 329</li>
                <li>Corina: +(40) 723 232 749</li>
              </ul>
            </div><!-- End .contact-phones -->

          </div><!-- End .col-md-7 -->
        </div><!-- End .row -->
      </div><!-- End .container -->

      <div id="main-nav-container">
        <div class="container">
          <div class="row">
            <div class="col-md-12 clearfix">

              <nav id="main-nav">
                <div id="responsive-nav">
                  <div id="responsive-nav-button">
                    Menu <span id="responsive-nav-button-icon"></span>
                  </div><!-- responsive-nav-button -->
                </div>
                <ul class="menu clearfix">
                  <li>
                    <a class="active" href="/shop">HOME</a>
                    <ul>
                      <li><a href="index-2.html">Home 1</a></li>
                      <li><a href="../blue/index-2.html">Home 2</a></li>
                      <li><a href="../orange/index-2.html">Home 3</a></li>
                      <li><a href="../pink/index-2.html">Home 4</a></li>
                    </ul>
                  </li>
                  <li class="mega-menu-container"><a href="#">SHOP</a>
                    <div class="mega-menu clearfix">
                      <div class="col-5">
                        <a href="category.html" class="mega-menu-title">Clothing</a><!-- End .mega-menu-title -->
                        <ul class="mega-menu-list clearfix">
                          <li><a href="#">Dresses</a></li>
                          <li><a href="#">Jeans &amp; Trousers</a></li>
                          <li><a href="#">Blouses &amp; Shirts</a></li>
                          <li><a href="#">Tops &amp; T-Shirts</a></li>
                          <li><a href="#">Jackets &amp; Coats</a></li>
                          <li><a href="#">Skirts</a></li>
                        </ul>
                      </div><!-- End .col-5 -->
                      <div class="col-5">
                        <a href="category.html" class="mega-menu-title">Shoes</a><!-- End .mega-menu-title -->
                        <ul class="mega-menu-list clearfix">
                          <li><a href="#">Formal Shoes</a></li>
                          <li><a href="#">Casual Shoes</a></li>
                          <li><a href="#">Sandals</a></li>
                          <li><a href="#">Boots</a></li>
                          <li><a href="#">Wide Fit</a></li>
                          <li><a href="#">Slippers</a></li>
                        </ul>
                      </div><!-- End .col-5 -->
                      <div class="col-5">
                        <a href="category.html" class="mega-menu-title">Accessories</a><!-- End .mega-menu-title -->
                        <ul class="mega-menu-list clearfix">
                          <li><a href="#">Bags &amp; Purses</a></li>
                          <li><a href="#">Belts</a></li>
                          <li><a href="#">Gloves</a></li>
                          <li><a href="#">Jewellery</a></li>
                          <li><a href="#">Sunglasses</a></li>
                          <li><a href="#">Hair Accessories</a></li>
                        </ul>
                      </div><!-- End .col-5 -->
                      <div class="col-5">
                        <a href="category.html" class="mega-menu-title">Sports</a><!-- End .mega-menu-title -->
                        <ul class="mega-menu-list clearfix">
                          <li><a href="#">Sport Tops &amp; Vests</a></li>
                          <li><a href="#">Swimwear</a></li>
                          <li><a href="#">Footwear</a></li>
                          <li><a href="#">Sports Underwear</a></li>
                          <li><a href="#">Bags</a></li>
                        </ul>
                      </div><!-- End .col-5 -->

                      <div class="col-5">
                        <a href="category.html" class="mega-menu-title">Maternity</a><!-- End .mega-menu-title -->
                        <ul class="mega-menu-list clearfix">
                          <li><a href="#">Tops &amp; Skirts</a></li>
                          <li><a href="#">Dresses</a></li>
                          <li><a href="#">Trousers &amp; Shorts</a></li>
                          <li><a href="#">Knitwear</a></li>
                          <li><a href="#">Jackets &amp; Coats</a></li>
                        </ul>
                      </div><!-- End .col-5 -->
                    </div><!-- End .mega-menu -->
                  </li>

                  <li>
                    <a href="#">PAGES</a>
                    <ul>
                      <li><a href="product.html">Product</a></li>
                      <li><a href="cart.html">Cart</a></li>
                      <li><a href="category.html">Category</a>
                        <ul>
                          <li><a href="category-list.html">Category list</a></li>
                          <li><a href="category.html">Category Banner 1</a></li>
                          <li><a href="category-banner-2.html">Category Banner 2</a></li>
                          <li><a href="category-banner-3.html">Category Banner 3</a></li>
                        </ul>
                      </li>
                      <li><a href="checkout.html">Checkout</a></li>
                      <li><a href="aboutus.html">About Us</a></li>
                      <li><a href="register-account.html">Register Account</a></li>
                      <li><a href="compare-products.html">Compare Products</a></li>
                      <li><a href="404.html">404 Page</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Portfolio</a>
                    <ul>
                      <li><a href="portfolio-2.html">Two Columns</a></li>
                      <li><a href="portfolio-3.html">Three Columns</a></li>
                      <li><a href="portfolio-4.html">Four Columns</a></li>
                      <li><a href="single-portfolio.html">Portfolio Post</a></li>
                    </ul>
                  </li>
                  <li><a href="blog.html">Blog</a>
                    <ul>
                      <li><a href="single.html">Blog Post</a></li>
                    </ul>
                  </li>
                  <li><a href="contact.html">Contact Us</a></li>
                </ul>

              </nav>

              <div id="quick-access">
                <div class="dropdown-cart-menu-container pull-right">
                  <div class="btn-group dropdown-cart">
                    <button type="button" class="btn btn-custom dropdown-toggle" data-toggle="dropdown">
                      <span class="cart-menu-icon"></span>
                      0 item(s) <span class="drop-price">- $0.00</span>
                    </button>

                    <div class="dropdown-menu dropdown-cart-menu pull-right clearfix" role="menu">
                      <p class="dropdown-cart-description">Recently added item(s).</p>
                      <ul class="dropdown-cart-product-list">
                        <li class="item clearfix">
                          <a href="#" title="Delete item" class="delete-item"><i class="fa fa-times"></i></a>
                          <a href="#" title="Edit item" class="edit-item"><i class="fa fa-pencil"></i></a>
                          <figure>
                            <a href="product.html"><img src="/images/products/thumbnails/phone4.jpg" alt="phone 4"></a>
                          </figure>
                          <div class="dropdown-cart-details">
                            <p class="item-name">
                              <a href="product.html">Cam Optia AF Webcam </a>
                            </p>
                            <p>
                              1x
                              <span class="item-price">$499</span>
                            </p>
                          </div><!-- End .dropdown-cart-details -->
                        </li>
                        <li class="item clearfix">
                          <a href="#" title="Delete item" class="delete-item"><i class="fa fa-times"></i></a>
                          <a href="#" title="Edit item" class="edit-item"><i class="fa fa-pencil"></i></a>
                          <figure>
                            <a href="product.html"><img src="/images/products/thumbnails/phone2.jpg" alt="phone 2"></a>
                          </figure>
                          <div class="dropdown-cart-details">
                            <p class="item-name">
                              <a href="product.html">Iphone Case Cover Original</a>
                            </p>
                            <p>
                              1x
                              <span class="item-price">$499<span class="sub-price">.99</span></span>
                            </p>
                          </div><!-- End .dropdown-cart-details -->
                        </li>
                      </ul>

                      <ul class="dropdown-cart-total">
                        <li><span class="dropdown-cart-total-title">Shipping:</span>$7</li>
                        <li><span class="dropdown-cart-total-title">Total:</span>$1005<span class="sub-price">.99</span></li>
                      </ul><!-- .dropdown-cart-total -->
                      <div class="dropdown-cart-action">
                        <p><a href="cart.html" class="btn btn-custom-2 btn-block">Cart</a></p>
                        <p><a href="checkout.html" class="btn btn-custom btn-block">Checkout</a></p>
                      </div><!-- End .dropdown-cart-action -->

                    </div><!-- End .dropdown-cart -->
                  </div><!-- End .btn-group -->
                </div><!-- End .dropdown-cart-menu-container -->


                <form class="form-inline quick-search-form" role="form" action="#">
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search here">
                  </div><!-- End .form-inline -->
                  <button type="submit" id="quick-search" class="btn btn-custom"></button>
                </form>
              </div><!-- End #quick-access -->
            </div><!-- End .col-md-12 -->
          </div><!-- End .row -->
        </div><!-- End .container -->

      </div><!-- End #nav -->
    </div><!-- End #inner-header -->
  </header><!-- End #header -->

  <section id="content">
    <div id="breadcrumb-container">
      <div class="container">
        <ul class="breadcrumb">
          <li><a href="index-2.html">Home</a></li>
          <li class="active">Login</li>
        </ul>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <header class="content-title">
            <h1 class="title">Login or Create An Account</h1>
            <div class="md-margin"></div><!-- space -->
          </header>

          <div class="row">

            <div class="col-md-6 col-sm-6 col-xs-12">
              <h2>New Customer</h2>

              <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
              <div class="md-margin"></div><!-- space -->
              <a href="register-account.html" class="btn btn-custom-2">Create An Account</a>
              <div class="lg-margin"></div><!-- space -->
            </div><!-- End .col-md-6 -->
            <div class="col-md-6 col-sm-6 col-xs-12">
              <h2>Registered Customers</h2>
              <p>If you have an account with us, please log in.</p>
              <div class="xs-margin"></div>
              <c:if test="${not empty error}">
                <div class="error">${error}</div>
              </c:if>
              <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
              </c:if>
              <div class="xs-margin"></div>

              <form id="loginForm" action="<c:url value='/j_spring_security_check' />" method='POST'>
                <div class="input-group">
                  <span class="input-group-addon"><span class="input-icon input-icon-email"></span><span class="input-text">Email&#42;</span></span>
                  <input type="email" name="email" required class="form-control input-lg" placeholder="Email">
                </div><!-- End .input-group -->
                <div class="input-group xs-margin">
                  <span class="input-group-addon"><span class="input-icon input-icon-password"></span><span class="input-text">Password&#42;</span></span>
                  <input type="password" name="password" required class="form-control input-lg" placeholder="Your Password">
                </div><!-- End .input-group -->
                <span class="help-block text-right"><a href="#">Forgot your password?</a></span>
                <button type="submit" class="btn btn-custom-2">LOGIN</button>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

              </form>
              <%--LOGIN WITH FACEBOOK--%>
              <div class="md-margin"></div><!-- space -->
              <%--<%FBConnection fbConnection = new FBConnection();%>--%>

              <a class="btn btn-block-facebook btn-social btn-facebook" href="/facebookLogin">
                <span class="fa fa-facebook"></span> Sign in with Facebook
              </a>
              <div class="xss-margin"></div>
              <a href="//www.iubenda.com/privacy-policy/7834577" class="iubenda-white iubenda-embed"
                 title="Privacy Policy">Privacy Policy</a>
              <script type="text/javascript">(function (w, d) {
                var loader = function () {
                  var s = d.createElement("script"), tag = d.getElementsByTagName("script")[0];
                  s.src = "//cdn.iubenda.com/iubenda.js";
                  tag.parentNode.insertBefore(s, tag);
                };
                if (w.addEventListener) {
                  w.addEventListener("load", loader, false);
                } else if (w.attachEvent) {
                  w.attachEvent("onload", loader);
                } else {
                  w.onload = loader;
                }
              })(window, document);</script>

            <%--PRIVACY POLICY FACEBOOK--%>
              <div class="sm-margin"></div><!-- space -->
            </div><!-- End .col-md-6 -->

          </div><!-- End.row -->

        </div><!-- End .col-md-12 -->
      </div><!-- End .row -->
    </div><!-- End .container -->

  </section><!-- End #content -->

  <footer id="footer">
    <%--<div id="twitterfeed-container">
      <div class="container">
        <div class="row">

          <div class="twitterfeed col-md-12">
            <div class="twitter-icon"><i class="fa fa-twitter"></i></div><!-- End .twitter-icon -->
            <div class="row">
              <div class="col-md-10 col-sm-10 col-xs-10 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
                <div class="twitter_feed flexslider"></div>
              </div>
            </div>

          </div><!-- End .twiitterfeed .col-md-12 -->

        </div><!-- End .row -->
      </div><!-- End .container -->
    </div><!-- End #twitterfeed-container -->--%>
    <div id="inner-footer">

      <div class="container">
        <div class="row">
          <div class="col-md-3 col-sm-4 col-xs-12 widget">
            <h3>MY ACCOUNT</h3>
            <ul class="links">
              <li><a href="#">My account</a></li>
              <li><a href="#">Personal information</a></li>
              <li><a href="#">Addresses</a></li>
              <li><a href="#">Discount</a></li>
              <li><a href="#">Order History</a></li>
              <li><a href="#">Your Vouchers</a></li>
            </ul>
          </div><!-- End .widget -->

          <div class="col-md-3 col-sm-4 col-xs-12 widget">
            <h3>INFORMATION</h3>
            <ul class="links">
              <li><a href="#">New products</a></li>
              <li><a href="#">Top sellers</a></li>
              <li><a href="#">Specials</a></li>
              <li><a href="#">Manufacturers</a></li>
              <li><a href="#">Suppliers</a></li>
              <li><a href="#">Our stores</a></li>
            </ul>
          </div><!-- End .widget -->

          <div class="col-md-3 col-sm-4 col-xs-12 widget">
            <h3>CONTACT INFORMATIOn</h3>

            <ul class="contact-list">
              <li><strong>Producator</strong></li>
              <li>Motoroiu Cristin</li>
              <li>Oras Breaza, Prahova</li>
              <li>Str. Colinei 23A</li>
              <li>Tel: Cristian: +(40) 733 020 329</li>
              <li>Tel: Corina: +(40) 723 232 749</li>
              <li>E-Mail:c.motoroiu@yahoo.com</li>
            </ul>
          </div><!-- End .widget -->

          <div class="clearfix visible-sm"></div>

          <div class="col-md-3 col-sm-12 col-xs-12 widget">
            <h3>FACEBOOK LIKE BOX</h3>

            <div class="facebook-likebox">
              <iframe src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fenvato&amp;colorscheme=dark&amp;show_faces=true&amp;header=false&amp;stream=false&amp;show_border=false"></iframe>
            </div>


          </div><!-- End .widget -->
        </div><!-- End .row -->
      </div><!-- End .container -->

    </div><!-- End #inner-footer -->

    <div id="footer-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-7 col-sm-7 col-xs-12 footer-social-links-container">
            <ul class="social-links clearfix">
              <li><a href="#" class="social-icon icon-facebook"></a></li>
              <li><a href="#" class="social-icon icon-twitter"></a></li>
              <li><a href="#" class="social-icon icon-rss"></a></li>
              <li><a href="#" class="social-icon icon-delicious"></a></li>
              <li><a href="#" class="social-icon icon-linkedin"></a></li>
              <li><a href="#" class="social-icon icon-flickr"></a></li>
              <li><a href="#" class="social-icon icon-skype"></a></li>
              <li><a href="#" class="social-icon icon-email"></a></li>
            </ul>
          </div><!-- End .col-md-7 -->

          <div class="col-md-5 col-sm-5 col-xs-12 footer-text-container">
            <p>&copy; 2016 Powered by VladM;. All Rights Reserved.</p>
          </div><!-- End .col-md-5 -->
        </div><!-- End .row -->
      </div><!-- End .container -->
    </div><!-- End #footer-bottom -->

  </footer><!-- End #footer -->
</div><!-- End #wrapper -->
<a href="#" id="scroll-top" title="Scroll to Top"><i class="fa fa-angle-up"></i></a><!-- End #scroll-top -->
<!-- END -->
<script src="/js/bootstrap.min.js"></script>
<script src="/js/smoothscroll.js"></script>
<script src="/js/retina-1.1.0.min.js"></script>
<script src="/js/jquery.placeholder.js"></script>
<script src="/js/jquery.hoverIntent.min.js"></script>
<script src="/js/twitter/jquery.tweet.min.js"></script>
<script src="/js/jquery.flexslider-min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/jflickrfeed.min.js"></script>
<script src="/js/jquery.prettyPhoto.js"></script>
<script src="/js/jquery.sequence-min.js"></script>
<script src="/js/colpick.js"></script>
<script src="/js/main.js"></script>

<script>
  $(function() {
    // Sequence.js Slider Plugin
    var options = {
              nextButton: true,
              prevButton: true,
              pagination:true,
              autoPlay: true,
              autoPlayDelay: 8500,
              pauseOnHover: true,
              preloader: true,
              theme: 'slide',
              speed: 700,
              animateStartingFrameIn: true
            },
            homeSlider = $('#slider-sequence').sequence(options).data("sequence");

  });
</script>
</body>
</html>
