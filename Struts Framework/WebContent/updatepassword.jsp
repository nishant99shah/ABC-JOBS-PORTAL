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
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="card mt-5">
					<div class="card-header font-weight-bold">Reset Password</div>
					<div class="card-body">Your OTP is confirmed successfully.
						Now you can reset your password.</div>
					<s:form action="UpdatePass" name="resetform" method="post"
						theme="simple">

						<div class="form-group w-75 text-left ml-3">
							<div class="name pb-1">New Password</div>
							<s:password label="OTP" class="form-control"
								placeholder="Enter your password" type="text"
								name="psd" required="true"></s:password>

							<div class="name pb-1 mt-3">Confirm Password</div>
							<s:password label="OTP" class="form-control"
								placeholder="Confirm your password" type="text"
								name="cpsd" required="true"></s:password>

							<s:submit class="btn btn-success mt-3" value="Reset Password"></s:submit>
						</div>

					</s:form>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>

	</div>
	<%@include file="footer.jsp"%>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>