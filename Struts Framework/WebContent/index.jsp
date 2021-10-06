<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="with=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/styles.css">
<title>AbcJobs</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-4 mt-5">
			<br><br><br><br><br>
				<h1 class="display-3">Start Building Your Own Career Now </h1><br>
				<a href="register.jsp" class="btn btn-outline-primary w-50">Get Started </a>
				
			</div>
			<div class="col-md-4 mt-5">
				<img src="css/images/home.png" width="748" height="528">
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-5 pt-5 mr-5">
				<img src="css/images/job.png" width="720" height="630">
				<br><br><br><br><br><br><br>
				
			</div>
			<div class="col-md-5">
			<br><br><br><br><br>
			<h3 class="display-4 p-5">Choose a job you love, and you will never have to work a day in your life.</h3>
				<a href="register.jsp" class="btn btn-outline-primary w-50 ml-5"> Find People</a>
				
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>