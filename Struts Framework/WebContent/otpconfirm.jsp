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
		<div class="card mt-5">
			<div class="card-header font-weight-bold">Confirm OTP Code</div>
			<div class="card-body">
				An email containing an OTP(One Time Verification) code has been to
				<s:property value="eml" />
				. Please check your mailbox.
			</div>
			<s:form action="otpverification" method="post" theme="simple">

				<div class="form-group w-75 text-left ml-3">
					<div class="name pb-2">OTP Code</div>
					<s:textfield label="OTP" class="form-control"
						placeholder="Enter your OTP code here" type="text"
						name="user.otpvalue" required="true"></s:textfield>
					<s:submit class="btn btn-success mt-2" value="Verify"></s:submit>
				</div>
			</s:form>
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>