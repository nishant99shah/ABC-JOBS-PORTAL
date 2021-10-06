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
	<div class="container">
		<div class="text-center mt-5">
			<h1>Forgot your password?</h1>
			<div class="row">
			<div class="col-md-1"></div>
				<div class="col-md-5">
					<img src="css/images/forgot.png"
						class="image-fluid border border-secondary mt-5" height="220"
						width="400">
				</div>
				<div class="col-md-5">
					<h1 class="mt-5 font-weight-bold">Reset Password</h1>
					<h5 class="mt-5 text-justify">Please enter your registered email address to
						request an OTP (One Time Password) verification code for reseting
						your password.</h5>
				</div>
			<div class="col-md-1"></div>
			
			</div>
			<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
			<hr class="w-75 mt-5 mx-auto" color="#0000FF">
			<div class="text-center w-100 mt-5">
				<s:form action="resetpsd" method="post" theme="simple">

					<div class="form-group w-75 mx-auto">
						<div class="name pb-2 text-left">Email Address</div>
						<s:textfield label="Email" class="form-control"
							placeholder="Enter your registered email address" type="text" name="eml"
							required="true"></s:textfield>
					</div>
					<s:submit class="btn btn-primary btn-block w-75 mx-auto" value="Submit"></s:submit>
				</s:form>
			</div>
			</div>
			<div class="col-md-1"></div>
			</div>
			<br><br>
			<div></div>
		</div>

	</div>
	<%@include file="footer.jsp"%>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>