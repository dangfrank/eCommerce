<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 <link rel="stylesheet" href="css/infoProduct.css">
</head>
<body>
<c:import url="header.jsp" />
<div class="titlename">
	<p class="fw-bold">${product.name}</p>
	<hr>
</div>
<div class="row justify-content-center">
	
	<div class="p-S col-xl-3 col-lg-4 col-md-6 col-12">
		<img alt="${product.name}" src="${product.src}" class="img-fluid">	
	</div>
	<div class="p-5 col-xl-3 col-lg-4 col-md-6 col-12 align-content-center">
		<p class="price p-3 mb-2 text-uppercase text-center">Price: $ ${product.price}</p>
		<p>${product.description}</p>
		<a class="btn btn-success" href="${pageContext.request.contextPath}/AddToCartController?id=${product.id}&action=add">Add to Cart</a>
	</div>

</div>
<c:import url="footer.jsp" />

</body>
</html>