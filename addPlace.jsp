<%@page import="com.scs.dao.Connector"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">   
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SCS | Add Place</title>
  
  <!-- link favicon -->
  <link rel="apple-touch-icon" sizes="180x180" href="./favicon/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="./favicon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="./favicon/favicon-16x16.png">
  <link rel="manifest" href="./favicon/site.webmanifest">
  
  <!-- stylesheet -->
  <link rel="stylesheet" type="text/css" href="css/addPlace.css">
</head>
<body>
	<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		if (!session.getAttribute("username").equals("admin")) {
			response.sendRedirect("login.html");
	}
		//fetch name of course
		PreparedStatement ps=Connector.con(application).prepareStatement("SELECT * FROM CATEGORY");
		ResultSet rs = ps.executeQuery();
			
	%>
  <div class="container">
    <div class="title">Add Place</div>
    <div class="content">
    
      <form action="addplace" method="post" enctype="multipart/form-data" autocomplete="off">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Place Name</span>
            <input type="text" placeholder="Enter your Place" name="place" required>
          </div>
          <div class="input-box">
            <span class="details">Images</span>
            <input type="file" placeholder="Upload Images" name="image" required>
          </div>
          <div class="input-box">
            <span class="details">Location</span>
            <input type="text" placeholder="Enter your Location" name="location" required>
          </div>
          <div class="input-box">
            <span class="details">Select category</span>
            <select name="category">
                <option >Select Category</option>
                <% while(rs.next()){ %>
                <option value="<%= rs.getInt(1)%>"><%= rs.getString(2) %></option>
                <%} %>
            </select>
            
          </div>
         
          <div class="input-box">
            <span class="details">Details</span>
            <textarea Placeholder="Enter Description" rows="4" cols="100" name="description"></textarea>
            
          </div>
        </div>
        
        <div class="button">
          <input type="submit" value="Add Place">
        </div>
      </form>
    </div>
  </div>

</body>
</html>
