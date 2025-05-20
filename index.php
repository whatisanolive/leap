<?php 
    include 'connection.php';
    session_start();
    $user_id = $_SESSION['user_id'];
    if (!isset($user_id)) {
        header('location:login.php');
    }
    if(isset($_POST['logout'])){
        session_destroy();
        header("location: login.php");
    }
    //adding product in wishlist
    if (isset($_POST['add_to_wishlist'])) {
    	$product_id = $_POST['product_id'];
    	$product_name = $_POST['product_name'];
    	$product_price = $_POST['product_price'];
    	$product_image = $_POST['product_image'];

    	$wishlist_number = mysqli_query($conn, "SELECT * FROM `wishlist` WHERE name = '$product_name' AND user_id ='$user_id'") or die('query failed');
    	$cart_num = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id ='$user_id'") or die('query failed');
    	if (mysqli_num_rows($wishlist_number)>0) {
    		$message[]='product already exist in wishlist';
    	}else if (mysqli_num_rows($cart_num)>0) {
    		$message[]='product already exist in cart';
    	}else{
    		mysqli_query($conn, "INSERT INTO `wishlist`(`user_id`,`pid`,`name`,`price`,`image`) VALUES('$user_id','$product_id','$product_name','$product_price','$product_image')");
    		$message[]='product successfuly added in your wishlist';
    	}
    }

     //adding product in cart
    if (isset($_POST['add_to_cart'])) {
    	$product_id = $_POST['product_id'];
    	$product_name = $_POST['product_name'];
    	$product_price = $_POST['product_price'];
    	$product_image = $_POST['product_image'];
    	$product_quantity = $_POST['product_quantity'];

    	$cart_num = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id ='$user_id'") or die('query failed');
    	if (mysqli_num_rows($cart_num)>0) {
    		$message[]='product already exist in cart';
    	}else{
    		mysqli_query($conn, "INSERT INTO `cart`(`user_id`,`pid`,`name`,`price`,`quantity`,`image`) VALUES('$user_id','$product_id','$product_name','$product_price','$product_quantity','$product_image')");
    		$message[]='product successfuly added in your cart';
    	}
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!------------------------bootstrap icon link------------------------------->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <!------------------------bootstrap css link------------------------------->
    <!------------------------slick slider link------------------------------->
    <link rel="stylesheet" type="text/css" href="slick.css" />
    <!------------------------default css link------------------------------->
    <link rel="stylesheet" href="main.css">
    <title>Leap - home page</title>
</head>

<body>
    <?php include 'header.php'; ?>
    <!------------------------hero img container------------------------------->

    <div class="container-fluid">
        <div class="hero-slider">
            <div class="slider-item">
                <img src="img/slider.jpg" alt="...">
                <div class="slider-caption">
                    <span>Leap The Distance</span>
                    <h1>Sport Balls for <br> Everyone!</h1>
                    <p>Gear up, get in the game, and play your way!</p>
                    <a href="" class="btn">shop now</a>
                </div>
            </div>
            <div class="slider-item">
                <img src="img/slider2.png" alt="...">
                <div class="slider-caption">
                     <span>Leap The Distance</span>
                    <h1>Sport Balls for <br> Everyone!</h1>
                    <p>Grab yours and let the fun begin!</p>
                    <a href="" class="btn">shop now</a>
                </div>
            </div>
        </div>
        <div class="control">
            <i class="bi bi-chevron-left prev"></i>
            <i class="bi bi-chevron-right next"></i>
        </div>
    </div>
    <div class="services">
		<div class="row">
			<div class="box">
				<h1>Our Services :</h1>    				
    		</div>
    		<div class="box">
    			<img src="img/0.png">
    			<div>
    				<h1>Fast Shipping</h1>
    				<p>We ensure quick and reliable delivery so your sports gear arrives on time, ready to fuel the game.</p>
    			</div>
    		</div>
    		<div class="box">
    			<img src="img/1.png">
    			<div>
    				<h1>Money Back & Guarantee</h1>
    				<p>We stand behind the quality of our products. If you’re not completely satisfied, return it hassle-free for a full refund.</p>
    			</div>
    		</div>
    		<div class="box">
    			<img src="img/2.png">
    			<div>
    				<h1>Online Support 24/7</h1>
    				<p>Our dedicated team is here to help you anytime with questions, orders, or product advice—just a click away.</p>
    			</div>
    		</div>
    	</div>
    </div>
    <div class="line2"></div>
    <div class="story">
    	<div class="row">
    		<div class="box">
    			<span>Our Story</span>
    			<h1>Production since 2008</h1>
    			<p>It all began with a simple idea and a love for the game. We’re a team of sports enthusiasts who wanted to create gear that not only performs but truly supports athletes—whether they’re just starting out or chasing their dreams. Every product we make is inspired by real players, real passion, and real moments on the court and field. From our small beginnings to becoming a trusted name in volleyball, basketball, and football, we’re proud to be part of your journey and help you play your best every day.</p>
                <a href="shop.php" class="btn">shop now</a>
    		</div>
    		
    	</div>
    </div>
    <div class="line3"></div>
    <!-- testimonial -->
    <div class="line4"></div>
    <div class="testimonial-fluid">
    	<h1 class="title">What Our Customers Say's</h1>
    	<div class="testimonial-slider">
    		<div class="testimonial-item">
    			<img src="img/3.jpg">
    			<div class="testimonial-caption">
    				<h1>Football -Orange</h1>
    				<p>"I bought this football for my son's birthday, and he absolutely loves it! The quality is great, the design is sleek, and it's held up perfectly through hours of play. It was the perfect gift—he hasn’t put it down since!"
— <i>Emily R.</i></p>

    			</div>
    		</div>
    		<div class="testimonial-item">
    			<img src="img/4.jpg">
    			<div class="testimonial-caption">
    				<h1>Volleyball -Green</h1>
    				<p>"I got this volleyball for my daughter’s birthday, and she was thrilled! The colors are beautiful, and it feels great to play with. She uses it every day at practice and with friends—it was a perfect gift!"
— <i>Sarah M.</i></p>
    			</div>
    		</div>
    		<div class="testimonial-item">
    			<img src="img/profile.jpg">
    			<div class="testimonial-caption">
    				<h1>Basketball -Multicolor</h1>
    				<p>"I surprised my son with this basketball for his birthday, and he couldn’t have been happier. It looks awesome and bounces just right. He’s been out shooting hoops every afternoon since!"
—<i> Tate T.</i></p>
    			</div>
    		</div>
    	</div>
    	 <div class="control">
            <i class="bi bi-chevron-left prev1"></i>
            <i class="bi bi-chevron-right next1"></i>
        </div>
    </div>
    <div class="line"></div>
   
    <?php include 'homeshop.php'; ?>
    
<br>
    <?php include 'footer.php'; ?>
    <script src="jquary.js"></script>
    <script src="slick.js"></script>

    <script type="text/javascript">
        <?php include 'script2.js' ?>
    </script>
</body>

</html>