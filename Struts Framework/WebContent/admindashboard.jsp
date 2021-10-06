<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="with=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/styles.css">
<title>AbcJobs</title>
</head>
<body>
<%@include file="header1.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			
				<div class="col-md-6 mt-5">
					<h1 class="display-2">Welcome to </h1> 
					<h1 class="display-4">ABC Jobs</h1>
					<br>
					<h2 class="display-5 text-danger font-weight-bold">Admin Panel</h2><br>
					<div>
						<h3>View all users which are registered on the portal</h3>
						<s:a href="viewUsers" class="btn btn-success mt-4">View Users</s:a>
					</div>
				</div>
				<div class="col-md-4 mt-5">
					<img src="css/images/work.jpg" class="image-fluid" height="350"
						width="500">
				</div>
			
			<div class="col-md-1"></div>
		</div>
	</div>
<%@include file="footer.jsp"%>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>