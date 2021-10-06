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
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="userdashboard.jsp"> <img src="css/images/school.png"
			width="70" height="70" class="d-inline-block align-top" alt="Logo">
			<h1 class="d-inline-block align-center mt-2 ml-3">ABC JOBS</h1>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active mr-3"><a href="userdashboard.jsp"><button
							type="button" class="btn btn-light">
							Home <span class="sr-only">(current)</span>
						</button></a></li>
						<li class="nav-item mr-3"><s:a href="profile" class="btn btn-outline-primary">Profile</s:a>
						</li>
				<li class="nav-item mr-3"><a href="login.jsp"><button type="button"
							class="btn btn-outline-secondary">Logout</button></a></li>
			</ul>
		</div>
	</nav>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>