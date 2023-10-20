<%@ page import = "java.sql.*" %>
<%@ page import = "com.scs.dao.Connector" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCS | All Category</title>

    <!-- link favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="./favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./favicon/favicon-16x16.png">
    <link rel="manifest" href="./favicon/site.webmanifest">

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
        PreparedStatement ps= Connector.con(application).prepareStatement("SELECT * FROM CATEGORY");
        ResultSet rs = ps.executeQuery();       
	%>

    <div id="nav"></div>
    <div id="image-container">
    <%while(rs.next()){ %>
        <div class="images">
            <div class="image">
                <img src="assets/category/<%= rs.getString(3) %>" alt="">
            </div>
            <h4><%= rs.getString(2) %></h4>
        </div>
      <%} %>
    </div>

    <script src="js/nav.js"></script>
</body>
</html>