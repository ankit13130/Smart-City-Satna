<%@page import="com.scs.dao.Connector"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCS | HOME</title>

    <!-- link favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="./favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./favicon/favicon-16x16.png">
    <link rel="manifest" href="./favicon/site.webmanifest">

    <!-- swiper -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>

    <!-- stylesheets -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.html");
	}
		//fetch name of course
		PreparedStatement ps=Connector.con(application).prepareStatement("SELECT * FROM CATEGORY");
		ResultSet rs = ps.executeQuery();		
	%>
    <div id="box1">
        <h1>Smart City Satna</h1>
    </div>
    <div id="box2"></div>
    <div id="box3">
        <div id="nav"></div>
        <div id="page1">
            <div id="home-image">
                <!-- <div id="content">
                    <div class="title">
                        <h1>Photography <br>and films</h1>
                        <div id="circle">01</div>
                    </div>
                    <div id="line"></div>
                    <div class="title">
                        <h3>Explore</h3>
                        <i class="ri-arrow-right-line"></i>
                    </div>
                </div> -->
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                      <div class="swiper-slide">
                        <img src="assets/static/banner1.jpeg" alt="">
                        <div id="content">
                            <div class="title">
                                <h1>Smart City <br>Satna</h1>
                                <div id="circle">01</div>
                            </div>
                            <div id="line"></div>
                            <div class="title">
                                <h3>Explore</h3>
                                <i class="ri-arrow-right-line"></i>
                            </div>
                        </div>
                      </div>
                      <div class="swiper-slide">
                         <img src="assets/static/vits.jpg" alt="">
                        <div id="content">
                            <div class="title">
                                <h1>Photography <br>and films</h1>
                                <div id="circle">02</div>
                            </div>
                            <div id="line"></div>
                            <div class="title">
                                <h3>Explore</h3>
                                <i class="ri-arrow-right-line"></i>
                            </div>
                        </div>
                      </div>
                      <div class="swiper-slide">
                        <img src="assets/static/banner3.jpg" alt="">
                        <div id="content">
                            <div class="title">
                                <h1>Photography <br>and films</h1>
                                <div id="circle">03</div>
                            </div>
                            <div id="line"></div>
                            <div class="title">
                                <h3>Explore</h3>
                                <i class="ri-arrow-right-line"></i>
                            </div>
                        </div>
                      </div>
                      <div class="swiper-slide">
                        <img src="assets/static/banner4.jpg" alt="">
                        <div id="content">
                            <div class="title">
                                <h1>Photography <br>and films</h1>
                                <div id="circle">04</div>
                            </div>
                            <div id="line"></div>
                            <div class="title">
                                <h3>Explore</h3>
                                <i class="ri-arrow-right-line"></i>
                            </div>
                        </div>
                      </div>
                    </div>
                    <!-- <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div> -->
                    <div class="swiper-pagination"></div>
                  </div>
            </div>
            <div id="image-container">
            
            <% while(rs.next()){ %> 
                <div class="images">
                        <div class="image">
                            <a href="places.jsp?id=<%=rs.getInt(1) %>&catname=<%=rs.getString(2) %>">
                                <img id="<%=rs.getInt(1) %>" src="assets/category/<%= rs.getString(3)%>" alt="">
                            </a>
                        </div>
                        <h4><%=rs.getString(2)%></h4>
                </div>
             <% }%>    
            </div>
            <div id="alphabet">
                <h1><i>ALL</i></h1>
                <div id="left-alpha">
                    <h2><i>A</i></h2>
                    <h2><i>B</i></h2>
                    <h2><i>C</i></h2>
                    <h2><i>D</i></h2>
                    <h2><i>E</i></h2>
                    <h2><i>F</i></h2>
                    <h2><i>G</i></h2>
                    <h2><i>H</i></h2>
                    <h2><i>I</i></h2>
                    <h2><i>J</i></h2>
                    <h2><i>K</i></h2>
                    <h2><i>L</i></h2>
                    <h2><i>M</i></h2>
                    <h2><i>N</i></h2>
                    <h2><i>O</i></h2>
                    <h2><i>P</i></h2>
                    <h2><i>Q</i></h2>
                    <h2><i>R</i></h2>
                    <h2><i>S</i></h2>
                    <h2><i>T</i></h2>
                    <h2><i>U</i></h2>
                    <h2><i>V</i></h2>
                    <h2><i>W</i></h2>
                    <h2><i>X</i></h2>
                    <h2><i>Y</i></h2>
                    <h2><i>Z</i></h2>
                </div>
            </div>
        </div>
        
        <div id="page2" class="page2-clone">
            <div id="left">
                <img src="assets/static/vits.jpg" alt="">
            </div>
            <div id="right">
                <div id="right-top-image">
                    <img src="assets/static/vindhya1.jpg" alt="">
                </div>
                <div id="content">
                    <div id="content-left">
                        <h3>Lorem ipsum dolor, sit amet consectetur adipisicing?</h3>
                    </div>
                    <div id="content-right">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corporis fugiat nostrum eveniet totam similique dignissimos molestiae facere. Dignissimos, aspernatur illo.</p>
                    </div>
                </div>
            </div>
        </div>
    
        <div id="page3">
            <h1>VOGUE/SHOT</h1>
            <div id="page3-content">
                <div id="page3-left">
                    <div id="circle">
                        <i class="ri-arrow-right-line"></i>
                    </div>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam, error iure mollitia consectetur necessitatibus nostrum?</p>
                </div>
                <div id="page3-right">
                    <img src="assets/static/pvrwebp.webp" alt="">
                </div>
            </div>
        </div>
        
        <div id="page4" class="page4-clone">
            <img src="assets/static/madhavgarhjpg.jpg" alt="">
        </div>
        
        <!-- <div id="page5">
            <h1>Updates</h1>
            <div class="content-box">
                <h4>Men Fashion</h4>
                <div class="image-box">
                    <img src="https://assets/static.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1364&q=80" alt="">
                </div>
                <div class="text">
                    <h1>Lorem ipsum dolor sit amet.</h1>
                    <h3>Lorem, ipsum dolor.</h3>
                </div>
            </div>
            <div class="content-box">
                <h4>Men Fashion</h4>
                <div class="image-box">
                    <img src="https://assets/static.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1364&q=80" alt="">
                </div>
                <div class="text">
                    <h1>Lorem ipsum dolor sit amet.</h1>
                    <h3>Lorem, ipsum dolor.</h3>
                </div>
            </div>
            <div class="content-box">
                <h4>Men Fashion</h4>
                <div class="image-box">
                    <img src="https://assets/static.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1364&q=80" alt="">
                </div>
                <div class="text">
                    <h1>Lorem ipsum dolor sit amet.</h1>
                    <h3>Lorem, ipsum dolor.</h3>
                </div>
            </div>
            <div class="content-box">
                <h4>Men Fashion</h4>
                <div class="image-box">
                    <img src="https://assets/static.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1364&q=80" alt="">
                </div>
                <div class="text">
                    <h1>Lorem ipsum dolor sit amet.</h1>
                    <h3>Lorem, ipsum dolor.</h3>
                </div>
            </div>
        </div> -->
    
        <div id="page6">
            <div id="page6-left">
                <img src="assets/static/pashupatinath3.jpg" alt="">
            </div>
            <div id="page6-right">
                <h1>Lorem.</h1>
                <h3>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Natus sapiente doloribus libero quos alias placeat.</h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Suscipit molestiae, reiciendis aliquam vel expedita tenetur aperiam dolores placeat esse cumque.</p>
                <div id="right-image-container">
                    <div id="image1">
                        <img src="assets/static/pashupatinath.jpg" alt="">
                    </div>
                    <div id="image2">
                        <img src="assets/static/pashupatinath2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
        
        <div id="page7" class="page4-clone">
            <img src="assets/static/birla.jpg" alt="">
        </div>
        
        <div id="page8" class="page2-clone">
            <div id="left">
                <img src="assets/static/venkatesh1.jpg" alt="">
            </div>
            <div id="right">
                <div id="right-top-image">
                    <img src="assets/static/venkatesh.jpg" alt="">
                </div>
                <div id="content">
                    <div id="content-left">
                        <h3>Lorem ipsum dolor, sit amet consectetur adipisicing?</h3>
                    </div>
                    <div id="content-right">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corporis fugiat nostrum eveniet totam similique dignissimos molestiae facere. Dignissimos, aspernatur illo.</p>
                    </div>
                </div>
            </div>
        </div>
    
        <div id="anim-text">
            <h1>Welcome To Smart City Satna</h1>        
            <h1>Welcome To Smart City Satna</h1>        
            <h1>Welcome To Smart City Satna</h1>        
        </div>
    
        <div id="footer">
            <div id="footer-top">
                <h1>BLOG</h1>
                <div id="wrapper">
                    <div class="wrapper-content">
                        <p><span>B</span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde, laborum id aut tenetur laudantium laboriosam.</p>
                        <div class="image">
                            <img src="assets/static/hukum.jpg" alt="">
                        </div>
                    </div>
                    <div class="wrapper-content">
                        <p><span>B</span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde, laborum id aut tenetur laudantium laboriosam.</p>
                        <div class="image">
                            <img src="assets/static/hell.webp" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div id="footer-bottom">
                <!-- <div id="footer-wrapper">
                    <div class="logo">
                        <img class="logo-image" src="./assets/static/logo.png" alt="">
                    </div>
                    <div class="inav" id="inav">
                        <ul>
                            <li><a href="#">All Places</a></li>
                            <li><a href="#">about me</a></li>
                            <li><a href="#">Help</a></li>
                        </ul>
                    </div>
                </div> -->
                <h1>&copy; 2022 Smart City Satna. All Right Reserved |</h1>
            </div>
        </div>
    </div>

    <!-- swiper-js -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

    <!-- gsap cdn -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.3/gsap.min.js" integrity="sha512-gmwBmiTVER57N3jYS3LinA9eb8aHrJua5iQD7yqYCKa5x6Jjc7VDVaEA0je0Lu0bP9j7tEjV3+1qUm6loO99Kw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script src="js/nav.js"></script>
    <script src="js/script.js"></script>
</body>
</html>