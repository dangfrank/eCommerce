<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>

<div class="content">
	<div class="container-child dashboard">
		<h4>1849 Team</h4>
		<p><a href=#>Dashboard</a></p>
		<p><a href=#>Staff Manager</a></p>
	</div>
		
	<div class="container-child admin-body">
		<div class="admin-background">
			<div class="admin-logout">
				<p>Welcome <%= session.getAttribute("user") %></p>
				<form action="../LogoutController" name="logoutform" method="post">
					<input type="submit" value="Logout" class="btn btn-info">
				</form>	
			</div>
		</div>
		
		<div class="admin-info">
			<h2>Member of the team</h2>
			<table class="table table-dark">
				
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Student ID</th>
					<th>Class</th>
				</tr>
				<tr>
					<th>1</th>
					<th>Member 1</th>
					<th>Member Code 1</th>
					<th>Class 1</th>
				</tr>
				<tr>
					<th>2</th>
					<th>Member 2</th>
					<th>Member Code 2</th>
					<th>Class 2</th>
				</tr>
			</table>
		</div>
	</div>
</div>
</body>
</html>