<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <sql:setDataSource var="ds" dataSource="jdbc/ShoppingDB" />
<link rel="stylesheet" href="css/body.css">

<sql:query dataSource="${ds}" sql="select * from Products" var="results" />

<div class="content p-3 mb-2 bg-light">
	<div class="row">
		<c:forEach var="product" items="${results.rows}" varStatus="row">
			<div class="detail_img col-xl-3 col-lg-4 col-md-6 col-12">
				<c:set scope="page" var="productname" value="${product.product_name}.jpg"></c:set>
				<img class="img-fluid" alt="${product.product_name}" src="${pageContext.request.contextPath}/pics/${productname}"  onclick="location.href='${pageContext.request.contextPath}/InformationProductController?id=${product.product_id}';">
				<p class="p-3 mb-2 text-uppercase text-center">${product.product_type}</p>
				<p class="pro_name fw-bold text-center">${product.product_name}</p>
				<p class="fw-bold text-danger text-center">$ ${product.product_price}</p>
			</div>	
		</c:forEach>	
	</div>
</div>


 