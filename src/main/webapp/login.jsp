<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<link rel="stylesheet" href="css/Assignment.css">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/validator.js"></script>
</head>
<body>
<%@ include file="header.jsp" %>

<div class="signin">
	<div class="signin-child signin-form container mt-3">
		<h2><strong>Sign in</strong> </h2>
		<form name="loginform" action="LoginController" onsubmit="return validate()" method="POST">
		<%
			Cookie[] cookies = request.getCookies();
			String value="";
			if(cookies != null) {
				for (Cookie retrievedCookies: cookies) {
					if (retrievedCookies.getName().equals("username")){
						value = retrievedCookies.getValue();
					}
				}
			}
			if (value == ""){
		%>
		<input type="text" name="username" id="username" class="form-control" placeholder="username"><br/>
		<%} else { %>
		<input type="text" name="username" id="username" class="form-control" value=<%= value %>><br/>
		<% } %>
		<input type="password" name="password" id="password" class="form-control" placeholder="password">
		<p class="login_rightbottom" >Forgot <a href="${pageContext.request.contextPath}/URLController?action=forgotpassword">Password?</a></p>
		<div class="check-login form-check mb-3">
			<label for="remember" class="form-check-label">
			<input type="checkbox" id="remember" class="form-check-input" name="remember" value="on">
			Remember me</label>
		</div>
		<input type="submit" value="LOGIN" class="btn btn-primary">
		<%
			String error = (String) session.getAttribute("error");
					if(error != null){
						out.println(error);
					}
		%>
		
		</form>
	</div>
	<div class="signin-child signin-info">
		<h1><strong>Welcome Back!</strong></h1>
		<h5>To keep connected with us please login with your personal info</h5>
	</div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>