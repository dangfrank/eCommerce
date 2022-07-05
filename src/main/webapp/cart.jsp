<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*, java.util.*"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/validator.js"></script>
</head>
<body>
<%
	Cart c = (Cart) session.getAttribute("cart");
	List<Product> productList = c.getItems();
	int size = productList.size();
	pageContext.setAttribute("productList", productList);
	

%>

<c:import url="header.jsp" />

<div class="row justify-content-center p-3 md-2">
<table class="table table-bordered">
	<tr>
		<th>Products in cart:</th>
		<th>Price</th>
		<th>Quantity</th>
		<th>Amount</th>
		<th>Edit</th>
	</tr>
	<c:forEach var="product" items="${productList}">
		<tr>
			<td>${product.name}</td>
			<td>$ ${product.price}</td>
			<td>${product.number}</td>
			<td>$ ${product.price}</td>
			<td><a href="${pageContext.request.contextPath}/AddToCartController?id=${product.id}&action=delete">Remove</a></td>
		</tr>
	</c:forEach>
	<tr><td colspan="1" style="color: red"><c:out value="Total: $ ${sessionScope.cart.amount}" /></td></tr>
</table>
<form name="payform" action="PayController" onsubmit="return validateCart()" method="POST">
	<div class="mb-3 mt-3">
		<label class="col-3" for="name">Customer name:</label>
		<input class="col-6" type="text" id="name" name="name"><br>
	</div>
	<div class="mb-3 mt-3">
		<label class="col-3" for="address">Customer address:</label>
		<input class="col-6" type="text" id="address" name="address"><br>
	</div>
	<div class="mb-3 mt-3">
		<label class="col-3" for="discount">Discount code(if any):</label>
		<input class="col-6" type="text" id="discount" name="discount"><br>
	</div>
	<input class="btn btn-primary" type="submit" value="Submit">
	<div class="error">
	
	</div> 
</form>

</div>

<c:import url="footer.jsp"></c:import>
</body>
</html>