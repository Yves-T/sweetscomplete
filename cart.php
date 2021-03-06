<?php
require './Model/Products.php';
$products = new Products();
require './View/View.php';
$view = new View();
$cartList = $products->getShoppingCart();

// name, phone, etc
$name = 'Joe';
$phone = '212-555-1212';
$fax = '212-777-8888';
$email = 'doug@infiniteskills.com'
?>
<!DOCTYPE HTML>
<html>
<head>
    <title>Sweets Complete | Cart</title>
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
                    <a href="login.php">Login</a> |<a href="members.php">Our Members</a> |<a href="cart.php"
                                                                                               class="active">Shopping
                        Cart</a>
                </b>
                <br/>
                Welcome <?php print $name; ?>
            </div>
            <ul class="topmenu">
                <li><a href="index.php">Home</a></li>
                <li><a href="about.php">About Us</a></li>
                <li><a href="products.php">Products</a></li>
                <li><a href="contact.php">Contact Us</a></li>
            </ul>
            <br>

            <div class="banner"><p></p></div>
            <br class="clear"/>
        </div> <!-- header -->

        <div class="content">
            <br/>

            <div class="product-list">
                <h2>Shopping Basket</h2>
                <br/>

                <form action="#" method="POST">
                    <table>
                        <tr>
                            <th>Item No.</th>
                            <th>Product</th>
                            <th width="40%">Name</th>
                            <th>Amount</th>
                            <th width="10%">Price</th>
                            <th width="10%">Extended</th>
                            <th>&nbsp;</th>
                        </tr>
                        <?php print $view->displayCart($cartList); ?>
                    </table>

                    <br/>

                    <p align="center">
                        <input type="submit" name="back" value="Back to Shopping" class="button"/>
                        <input type="submit" name="change" value="Update" class="button"/>
                        <input type="submit" name="checkout" value="Checkout" class="button"/>

                    <p>
                </form>
            </div>

        </div><!-- content -->

    </div><!-- maincontent -->

    <div id="footer">
        <div class="footer">
            Copyright &copy; 2012 sweetscomplete.com. All rights reserved. <br/>
            <a href="index.php">Home</a> | <a href="about.php">About Us</a> | <a href="products.php">Products</a> | <a
                href="contact.php">Contact Us</a> <br/>
			<span class="contact">Tel: +44-<?php print $phone; ?>&nbsp;
			Fax: +44-<?php print $fax; ?>&nbsp;
			Email:<?php print $email; ?></span>
        </div>
    </div><!-- footer -->

</div><!-- wrapper -->

</body>
</html>

