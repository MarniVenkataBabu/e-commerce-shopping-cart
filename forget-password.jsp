  <%@page import= "com.cglia.model.*" %>
    <%
     User auth = (User) request.getSession().getAttribute("auth");
     if (auth != null) {
     request.setAttribute("person", auth);
     }
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="/includes/head.jsp"%>
</head>
<body>
  <%@include file= "/includes/navbar.jsp"%>
  <div class="container">
    <div class="row">
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
<form action="forget-password" method="post">
    <div class="form-group">
        <label>Email address</label>
        <input type="email" name="email" class="form-control" placeholder="Enter email" required>
    </div>
    <div class="form-group">
        <label>New Password</label>
        <input type="password" name="new-password" class="form-control" placeholder="New Password" required>
    </div>
    <div class="form-group">
        <label>Confirm Password</label>
        <input type="password" name="confirm-password" class="form-control" placeholder="Confirm Password" required>
    </div>
    <div class="form-group">
        <label>OTP</label>
        <input type="text" name="otp" class="form-control" placeholder="Enter OTP" required>
    </div>
    <div class="text-center">
        <button type="submit" class="btn btn-primary">Reset Password</button>
        <% String errorMessage = (String) request.getAttribute("errorMessage");
           if (errorMessage != null) { %>
           <p class="text-danger"><%= errorMessage %></p>
        <% } %>
    </div>
</form>
</body>
</html>