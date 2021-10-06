<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv = "refresh" content = "5; url = index.jsp" />
<meta charset="utf-8">
<meta name="viewport" content="with=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/styles.css">
<title>AbcJobs</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container">
		<div class="text-center mt-5">
			<img alt="tick" src="css/images/tick.png" class="image-fluid text-center pb-5 pt-3" width="250" height="300">
			<h1 class="text-bold">Congratulations !!</h1>
			<h3 class="text-bold pt-2">You have successfully reset your password.</h3>
			<h6 class="text-bold pt-2">Now you can login into your account with your new password and access your account.</h6>
			
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>