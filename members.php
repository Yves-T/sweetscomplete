<?php

require './View/View.php';
$view = new View();
require './Model/Members.php';
$members = new Members();

$maxMembers = count($members->getMembers());

// use the "ternary operator" operator to check if the page is set
$page = (isset($_GET['page'])) ? (int)$_GET['page'] : 0;
// use the "ternary operator" to check to see if page is 0
$prev = ($page == 0) ? 0 : $page - 1;
$next = $page + 1;
$linesPerPage = 6;

?>
<!DOCTYPE HTML>
<!-- this file has the overall look and feel of the website -->
<html>
<head>
    <title>Sweets Complete | Members</title>
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
                    <a href="login.html">Login</a> |<a href="members" class="active.html">Our Members</a> |<a
                        href="cart.html">Shopping Cart</a>
                </b>
                <br/>
                Welcome Guest
            </div>
            <ul class="topmenu">
                <li><a href="home.html">Home</a></li>
                <li><a href="products.html">Products</a></li>
                <li><a href="specials.html">Specials</a></li>
                <li><a href="contact.html">Contact Us</a></li>
            </ul>
            <br>

            <div class="banner"><p></p></div>
            <br class="clear"/>
        </div> <!-- header -->

        <div class="content">

            <br/>

            <div class="product-list">
                <h2>Our Members</h2>
                <br/>

                <form name="search" method="get" action="members.html" id="search">
                    <input type="text" value="keywords" name="keyword" class="s0"/>
                    <input type="submit" name="search" value="Search Members" class="button marL10"/>
                    <input type="hidden" name="page" value="members"/>
                </form>
                <br/><br/>
                <a class="pages" href="members.php?page=<?php print $prev ?>">&lt;prev</a>
                &nbsp;|&nbsp;
                <a class="pages" href="members.php?page=<?php print $next ?>">next&gt;</a>
                <table>
                    <tr>
                        <th>Member ID</th>
                        <th>Name</th>
                        <th>City</th>
                        <th>Email</th>
                    </tr>
                    <?php print $view->displayMembers($page, $linesPerPage, $maxMembers, $members->getMembers()); ?>
                </table>
                <br/>
                <a href="addmember.html" class="abutton">&nbsp;&nbsp;&nbsp;Member Sign Up&nbsp;&nbsp;&nbsp;</a>

            </div>
            <br class="clear-all"/>
        </div><!-- content -->

    </div><!-- maincontent -->

    <div id="footer">
        <div class="footer">
            Copyright &copy; 2012 sweetscomplete.com. All rights reserved. <br/>
            <a href="home.html">Home</a> | <a href="products.html">Products</a> | <a href="specials.html">Specials</a> |
            <a href="contact.html">Contact Us</a> <br/>
			<span class="contact">Tel: +44-1234567890&nbsp;
			Fax: +44-1234567891&nbsp;
			Email:sales@sweetscomplete.com</span>
        </div>
    </div><!-- footer -->

</div><!-- wrapper -->

</body>
</html>

