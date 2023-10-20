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
    <title>SCS | Places</title>
    
    <!-- link favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="./favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./favicon/favicon-16x16.png">
    <link rel="manifest" href="./favicon/site.webmanifest">
    
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/places.css">
</head>
<body>
	<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.html");
	}
		//fetch name of course
		PreparedStatement ps=Connector.con(application).prepareStatement("SELECT PLACE_ID, IMAGE, NAME FROM PLACES WHERE CATEGORY_ID=?");
		Integer category = Integer.parseInt(request.getParameter("id"));
		
		ps.setInt(1, category);		
		ResultSet rs = ps.executeQuery();		
	%>
    <div id="nav">
        <div class="logo">
            <img class="logo-image" src="assets/static/logo.png" alt="">
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
            <a href="logout">${ username }</a>
        </div>
    </div>

    <!-- cards section -->
    <h1 class="heading">${ catname }</h1>
    <div id="cards-container">
    <% while(rs.next()){ %>
        <div class="cards">
            <div class="image">
                <a href="details.jsp?id=<%=rs.getInt(1)%>"><img src="assets/uploadedPlaceImage/<%=rs.getString(2)%>" alt="Image Not Found"></a>
            </div>
            <h3><%=rs.getString(3)%></h3>
        </div>        
     <%}%>
    </div>

    <!-- gsap cdn -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.3/gsap.min.js" integrity="sha512-gmwBmiTVER57N3jYS3LinA9eb8aHrJua5iQD7yqYCKa5x6Jjc7VDVaEA0je0Lu0bP9j7tEjV3+1qUm6loO99Kw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
    <!-- places script -->
    <script src="js/places.js"></script>
</body>
</html>