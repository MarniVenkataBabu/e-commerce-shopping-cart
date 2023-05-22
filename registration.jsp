<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.cglia.model.*"%>
<%User auth = (User) request.getSession().getAttribute("auth"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="/includes/head.jsp"%>
    <title>User Registration</title>
</head>
<body>
   <%@include file ="/includes/navbar.jsp" %>
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Registration</div>
			  <div class="card-body">
                 <form action="register-servlet" method="POST">
                     <label for="name">Name</label>
                     <input type="text" id="name" class="form-control" name="name" required><br><br>
                     <label for="email">Email:</label>
                     <input type="email" id="email" class="form-control" name="email" required><br><br>
                     <label for="password">Password:</label>
                     <input type="password" id="password"  class="form-control" name="password" required><br><br>
                     <input type="submit" value="Register">
                     <button><a href="index.jsp">Back to Home</a></button>
                     
                     <% String errorMessage = (String) request.getAttribute("errorMessage");
                     if (errorMessage != null) { %>
                     <br><p class="text-danger"><%= errorMessage %></p>
                     <% } %>
                     
                  </form>
               </div>
           </div>
      </div>
 <%@include file="/includes/footer.jsp"%>
</body>
</html>