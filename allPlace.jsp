<%@page import="java.sql.*"%>
<%@ page import = "com.scs.dao.Connector" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCS | All Place</title>

    <!-- link favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="./favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./favicon/favicon-16x16.png">
    <link rel="manifest" href="./favicon/site.webmanifest">

    <!-- stylesheets -->
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
		PreparedStatement ps=Connector.con(application).prepareStatement("SELECT * FROM PLACES");
		ResultSet rs = ps.executeQuery();
			
	%>
    <div id="nav"></div>

    <!-- places -->
    <div id="cards-container">
    <% while(rs.next()){ %>
        <div class="cards">
            <div class="image">
                <a href="#"><img src="assets/uploadedPlaceImage/<%= rs.getString(3)%>" alt=""></a>
            </div>
            <h3><%= rs.getString(2) %></h3>
        </div> 
     <%} %>       
    </div>

    <!-- gsap cdn -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.3/gsap.min.js" integrity="sha512-gmwBmiTVER57N3jYS3LinA9eb8aHrJua5iQD7yqYCKa5x6Jjc7VDVaEA0je0Lu0bP9j7tEjV3+1qUm6loO99Kw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script src="js/nav.js"></script>
    <script src="js/places.js"></script>
</body>
</html>