<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCS | Admin Panel</title>

    <!-- link favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="./favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./favicon/favicon-16x16.png">
    <link rel="manifest" href="./favicon/site.webmanifest">

    <!-- stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/places.css">
</head>
<body>
    <div id="nav">
        <!-- <div class="logo">
            <img class="logo-image" src="./images/logo.png" alt="">
        </div>
        <div class="inav">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#">about me</a></li>
                <li><a href="#">Help</a></li>
                <li><a href="#">contant us</a></li>
            </ul>
        </div>
        <div id="user">
            <a href="logout">${username }</a>
        </div> -->
    </div>

    <!-- cards section -->
    <h1 class="heading">Admin Dashboard</h1>
    <div id="cards-container">
        <div class="cards">
            <div class="image">
                <a href="addCategory.html"><img src="assets/static/pvr.jpg" alt=""></a>
            </div>
            <h3>Add Category</h3>
        </div>        
        <div class="cards">
            <div class="image">
                <a href ="allCategories.jsp"><img src="assets/static/banner2.jpg" alt=""></a>
            </div>
            <h3>All Category</h3>
        </div>
        <div class="cards">
            <div class="image">
                <a href="addPlace.jsp"><img src="assets/static/banner4.jpg" alt=""></a>
            </div>
            <h3>Add Place</h3>
        </div>
        <div class="cards">
            <div class="image">
                <a href="allPlace.jsp"><img src="assets/static/vits.jpg" alt=""></a>
            </div>
            <h3>All Place</h3>
        </div>        
    </div>

    <!-- gsap cdn -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.3/gsap.min.js" integrity="sha512-gmwBmiTVER57N3jYS3LinA9eb8aHrJua5iQD7yqYCKa5x6Jjc7VDVaEA0je0Lu0bP9j7tEjV3+1qUm6loO99Kw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
    <!-- places script -->
    <script src="js/nav.js"></script>
    <script src="js/places.js"></script>
</body>
</html>