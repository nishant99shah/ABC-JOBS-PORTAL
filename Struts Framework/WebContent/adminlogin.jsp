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
	<main id="main">

		<div class="container ">
			<div class="row justify-content-center">
				<div class="col-md-6 p-3 mt-5">
					<div class="card border border-primary">
						<div class="card-body">
							<h4 class="card-title mt-2 text-center text-danger font-weight-bold">Admin Login</h4>
							<hr class="w-25 mx-auto" color="#0000FF">
						</div>

						<article class="card-body">
							<s:form action="adminLogin" method="post" theme="simple">

								<div class="form-group">
									<div class="name pb-1">Username</div>
									<s:textfield class="form-control"
										placeholder="Enter username" type="text" name="uname"
										required="true"></s:textfield>
								</div>

								<div class="form-group">
									<div class="name pb-1">Password</div>
									<s:password class="form-control"
										placeholder="Enter password" type="text" name="psd"
										required="true"></s:password>
								</div>

								<s:submit class="btn btn-primary btn-block" value="Login"></s:submit>
							</s:form>
							<s:if test="ctr>0">
								<span style="color: green;"><s:property value="msg" /></span>
							</s:if>

							<s:else>
								<span style="color: red;"><s:property value="msg" /></span>
							</s:else>

						</article>

						<div class="border-top card-body text-center p-0 pt-3">
							Forgot Password? <a href="forgotpass.jsp">Click Here</a>
						</div>
			
						<div class="card-body text-center p-0 pt-2 pb-3">
							User Login? <a href="login.jsp">Click Here</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br>
	</main>
	<%@include file="footer.jsp"%>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>