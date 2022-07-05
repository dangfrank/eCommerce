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
  <link rel="stylesheet" href="css/body.css">
</head>
<body>
<c:import url="header.jsp" />
<div class="row">
		<c:forEach var="product" items="${results}">
			<div class="col-xl-3 col-lg-4 col-md-6 col-12">
				<img class="img-fluid" style="cursor:pointer" alt="${product.name}" src="${product.src}" onclick="location.href='${pageContext.request.contextPath}/InformationProductController?id=${product.id}';">
				<p class="p-3 mb-2 text-uppercase text-center">${product.type}</p>
				<p class="fw-bold text-center">${product.name}</p>
				<p class="fw-bold text-danger text-center">${product.price}</p>
			</div>	
		</c:forEach>	
	</div>
<c:import url="footer.jsp" />
</body>
</html>