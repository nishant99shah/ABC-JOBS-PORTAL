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
	<%@include file="header1.jsp"%>
	<main id="main">

		<div class="container ">
			<div class="row justify-content-center">
				<div class="col-md-6 p-3 mt-5">
					<div class="card border border-primary">
						<div class="card-body pb-0">
							<h4 class="card-title mt-2 text-center">Profile</h4>
							<hr class="w-25 mx-auto" color="#0000FF">
						</div>

						<article class="card-body">
							<s:if test="noData==true">
							<s:iterator value="beanList">

									
										<div class="form-row">
											<div class="col form-group">
												<div class="name pb-1">First Name</div>
												<s:textfield class="form-control" disabled="true"
													type="text" name="fname"></s:textfield>
											</div>
											<div class="col form-group">
												<div class="name pb-1">Last Name</div>
												<s:textfield class="form-control" type="text" name="lname"
													disabled="true"></s:textfield>
											</div>
										</div>

										<div class="form-row">
											<div class="col form-group">
												<div class="name pb-1">Username</div>
												<s:textfield class="form-control" type="text" name="uname"
													disabled="true"></s:textfield>
											</div>
											<div class="col form-group">
												<div class="name pb-1">Phone Number</div>
												<s:textfield class="form-control" type="text" name="pnum"
													disabled="true"></s:textfield>
											</div>
										</div>

										<div class="form-group">
											<div class="name pb-1">Email</div>
											<s:textfield class="form-control" type="text" name="eml"
												disabled="true"></s:textfield>
										</div>



										<s:a href="update" class="btn btn-success">Edit Profile</s:a>
										<s:a href="userdashboard.jsp" class="btn btn-primary ml-3">Dashboard</s:a>

									
								</s:iterator>
							</s:if>

						</article>


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