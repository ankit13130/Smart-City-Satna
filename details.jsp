<%@page import="com.scs.dao.Connector"%>
<%@ page import= "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCS | DETAILS</title>

    <!-- link favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="./favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./favicon/favicon-16x16.png">
    <link rel="manifest" href="./favicon/site.webmanifest">
    
    <!-- stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/details.css">
</head>
<body>
	<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.html");
	}
		//fetch name of course
		PreparedStatement ps=Connector.con(application).prepareStatement("SELECT C.NAME, P.NAME, P.IMAGE, P.LOCATION, P.DESCRIPTION FROM CATEGORY C INNER JOIN PLACES P ON C.CATEGORY_ID=P.CATEGORY_ID WHERE P.PLACE_ID=?");
		Integer id = Integer.parseInt(request.getParameter("id"));
		
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
	 %>
    <div id="nav"></div>
	<% while(rs.next()){%>
    <div id="detail">
        <div id="left">
            <div id="image">
                <img src="assets/uploadedPlaceImage/<%=rs.getString(3) %>" alt="">
            </div>
        </div>
        <div id="right">
            <div class="container">
                <span>Place Name</span>
                <p><%=rs.getString(2) %></p>
            </div>
            <div class="container">
                <span>Place Type</span>
                <p><%=rs.getString(1) %></p>
            </div>
            <div class="container">
                <span>Location</span>
                <p><%=rs.getString(4) %></p>
            </div>
            <div class="container">
                <span>Brief Description</span>
                <p><%=rs.getString(5) %></p>
            </div>
        </div>
    </div>
    <%}%>
    <script src="js/nav.js"></script>
</body>
</html>