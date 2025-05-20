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
    
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!------------------------bootstrap icon link------------------------------->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="main.css">
    <title>Leap - home page</title>
</head>

<body>
    <?php include 'header.php'; ?>
    <div class="banner">
        <div class="detail" style="left: 40%;">
            <h1>about us</h1>
            <!-- <p>Get to know our mission and how we go about it.</p> -->
            <a href="index.php">home</a><span>/ about us</span>
        </div>
    </div>
    <div class="line"></div>
    <!-----------------------about us------------------------>
    <!-- <div class="line2"></div> -->
    <div class="about-us" >
        <div class="row">
            <div class="box">
                <div class="title">
                    <!-- <span>ABOUT OUR ONLINE STORE</span> -->
                    <h1>Hello, With 25 years of experience</h1>
                </div>
                <p>Leap is a dynamic and innovative sports brand dedicated to powering athletes across volleyball, basketball, and football. From high-performance apparel and durable footwear to professional-grade balls and training gear, VoltEdge combines cutting-edge design with top-tier materials to meet the demands of competitive play. Whether you're serving on the court, shooting hoops, or scoring goals on the field, VoltEdge delivers the quality and style that elevate your game. Built for passion. Designed for performance.</p>
            </div>
            
        </div>
    </div>
    <!-- <div class="line3"></div> -->
   
    <!-----------------------team section----------------------->
    <div class="line2"></div>
    <div class="team">
        <div class="title">
            <h1>Our Team</h1>
            
        </div>
        <div class="row">
            <div class="box">
                <div class="img-box">
                    <img src="img/team.jpg">
                </div>
                <div class="detail">
                    <span>Founder</span>
                    <h4>Miguel Rodrigez</h4>
                    <div class="icons">
                        <i class="bi bi-instagram"></i>
                        <i class="bi bi-youtube"></i>
                        <i class="bi bi-twitter"></i>
                        <i class="bi bi-behance"></i>
                        <i class="bi bi-whatsapp"></i>
                    </div>
                </div>
            </div>
            <div class="box">
                <div class="img-box">
                    <img src="img/te.jpg">
                </div>
                <div class="detail">
                    <span>Finace Manager</span>
                    <h4>Sophie Caldwell</h4>
                    <div class="icons">
                        <i class="bi bi-instagram"></i>
                        <i class="bi bi-youtube"></i>
                        <i class="bi bi-twitter"></i>
                        <i class="bi bi-behance"></i>
                        <i class="bi bi-whatsapp"></i>
                    </div>
                </div>
            </div>
            <div class="box">
                <div class="img-box">
                    <img src="img/team1.jpg">
                </div>
                <div class="detail">
                    <span>Product Manager</span>
                    <h4>Lucas Bennett</h4>
                    <div class="icons">
                        <i class="bi bi-instagram"></i>
                        <i class="bi bi-youtube"></i>
                        <i class="bi bi-twitter"></i>
                        <i class="bi bi-behance"></i>
                        <i class="bi bi-whatsapp"></i>
                    </div>
                </div>
            </div>
            <div class="box">
                <div class="img-box">
                    <img src="img/team2.jpg">
                </div>
                <div class="detail">
                    <span>Sales Manager</span>
                    <h4>Miguel Rodrigez</h4>
                    <div class="icons">
                        <i class="bi bi-instagram"></i>
                        <i class="bi bi-youtube"></i>
                        <i class="bi bi-twitter"></i>
                        <i class="bi bi-behance"></i>
                        <i class="bi bi-whatsapp"></i>
                    </div>
                </div>
            </div>
            <div class="box">
                <div class="img-box">
                    <img src="img/team0.jpg">
                </div>
                <div class="detail">
                    <span>Advertising Manager</span>
                    <h4>Nathaniel Rhodes</h4>
                    <div class="icons">
                        <i class="bi bi-instagram"></i>
                        <i class="bi bi-youtube"></i>
                        <i class="bi bi-twitter"></i>
                        <i class="bi bi-behance"></i>
                        <i class="bi bi-whatsapp"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="ideas">
        <div class="title">
            <h1>Our goal</h1>
            <span></span>
        </div>
        <div class="row">
            <div class="box">
                <i class="bi bi-stack"></i>
                <div class="detail">
                    <h2>What We Really Do</h2>
                    <p>We design and sell high-quality gear and apparel for volleyball, basketball, and football players, helping athletes perform their best on the court and field.</p>
                </div>
            </div>
            <div class="box">
                <i class="bi bi-grid-1x2-fill"></i>
                <div class="detail">
                    <h2>History of Beginning</h2>
                    <p>Founded in 2008, we started with a passion for team sports and a goal to create reliable, performance-driven gear. What began with a small line of products has grown into a trusted brand for volleyball, basketball, and football athletes worldwide.</p>
                </div>
            </div>
            <div class="box">
                <i class="bi bi-tropical-storm"></i>
                <div class="detail">
                    <h2>Our Vision</h2>
                    <p>To empower every athlete with high-quality gear that inspires confidence, performance, and passion for the game.</p>
                </div>
            </div>
        </div>
    </div>
     <!-----------------------features----------------------->
    <div class="line4"></div>
    <div class="features">
        <div class="title">
            <h1>Benefits</h1>
            <span>best features</span>
        </div>
        <div class="row">
            <div class="box">
                <img src="img/icon2.png">
                <h4>24 X 7</h4>
                <p>Online Support 27/7</p>
            </div>
            <div class="box">
                <img src="img/icon1.png">
                <h4>Money Back Guarantee</h4>
                <p>100% Secure Payment</p>
            </div>
            <div class="box">
                <img src="img/icon0.png">
                <h4>Special Gift Card</h4>
                <p>Give The Perfect Gift</p>
            </div>
            <div class="box">
                <img src="img/icon.png">
                <h4>Worldwide Shipping</h4>
                <p>On Order Over $99</p>
            </div>
        </div>
    </div>
    <!-- <div class="line3"></div> -->
    <?php include 'footer.php'; ?>
    <script type="text/javascript" src="script.js"></script>
</body>

</html>