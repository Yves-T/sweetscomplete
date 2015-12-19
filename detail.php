<?php
require './View/View.php';
$view = new View();
require './Model/Products.php';
$products = new Products();

$id = (isset($_GET['id'])) ? (int)$_GET['id'] : 1;

$details = $products->getDetailsById($id);

?>
<!DOCTYPE HTML>
<html>
<head>
    <title>Sweets Complete | Detail</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="description" content="Sweets Complete">
    <meta name="keywords" content="">
    <link rel="stylesheet" href="css/main.css" type="text/css">
    <link rel="shortcut icon" href="images/favicon.ico?v=2" type="image/x-icon"/>
</head>
<body>
<div id="wrapper">
    <div id="maincontent">

        <div id="header">
            <div id="logo" class="left">
                <a href="index.php"><img src="images/logo.png" alt="SweetsComplete.Com"/></a>
            </div>
            <div class="right marT10">
                <b>
                    <a href="login.html">Login</a> |<a href="members.html">Our Members</a> |<a href="cart.html">Shopping
                        Cart</a>
                </b>
                <br/>
                Welcome Guest
            </div>
            <ul class="topmenu">
                <li><a href="home.html">Home</a></li>
                <li><a href="about.html">About Us</a></li>
                <li><a href="products.html">Products</a></li>
                <li><a href="contact.html">Contact Us</a></li>
            </ul>
            <br>

            <div class="banner"><p></p></div>
            <br class="clear"/>
        </div> <!-- header -->

        <div class="content">
            <br/>

            <div class="product-list">
                <h2>Product Details</h2>
                <br/>

                <?php print $view->displayDetail($details); ?>

            </div><!-- product-list -->
            <br class="clear-all"/>
        </div><!-- content -->

    </div><!-- maincontent -->

    <div id="footer">
        <div class="footer">
            Copyright &copy; 2012 sweetscomplete.com. All rights reserved. <br/>
            <a href="home.html">Home</a> | <a href="about.html">About Us</a> | <a href="products.html">Products</a> | <a
                href="contact.html">Contact Us</a> <br/>
			<span class="contact">Tel: +44-1234567890&nbsp;
			Fax: +44-1234567891&nbsp;
			Email:sales@sweetscomplete.com</span>
        </div>
    </div><!-- footer -->

</div><!-- wrapper -->

</body>
</html>

