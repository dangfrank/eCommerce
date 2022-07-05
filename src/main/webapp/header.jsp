<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="css/Assignment.css">
</head>
<body>

<div class="header">
	<div class="header-left">
		<h2>D2H STORE</h2>
		<h6 style="color: #1d81a8">Welcome to my Website</h6>
	</div>
	<form class="searchbar" name="searchform" action="SearchController" method="get"> 
		<div class="input-group mt-3 mb-3 header-right">	
 			<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">Categories</button>
			  <ul class="dropdown-menu">
			    <li><a class="dropdown-item" href="#">Apple</a></li>
			    <li><a class="dropdown-item" href="#">Samsung</a></li>
			    <li><a class="dropdown-item" href="#">Vsmart</a></li>
			    <li><a class="dropdown-item" href="#">Nokia</a></li>
			    <li><a class="dropdown-item" href="#">Oppo</a></li>
			  </ul>
			  <input type="text" name="s" class="form-control" placeholder="What are you looking for?">
			  <input class="searchbutton" type="image" src="./img/search-icon-sl7.png" alt="Submit" />			
		</div>
	</form>
</div>


<div class="topnav">
	<a href="${pageContext.request.contextPath}/URLController?action=home">Home</a>
	<a href="${pageContext.request.contextPath}/URLController?action=products">Products</a>
	<a href="${pageContext.request.contextPath}/URLController?action=about">About us</a>
	<div style="float: right; line-height: 100%">
		<a id="register" href="${pageContext.request.contextPath}/URLController?action=register">Register</a>
		<a id="login" href="${pageContext.request.contextPath}/URLController?action=login">Login</a>
	</div>
	
</div>



</body>
</html>