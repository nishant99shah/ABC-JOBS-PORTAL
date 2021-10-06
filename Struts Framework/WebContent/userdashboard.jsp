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
	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			
				<div class="col-md-6 mt-5">
					<h1 class="display-2">Welcome to </h1> 
					<h1 class="display-4">ABC Jobs</h1>
					<div>
						<s:form action="search" method="post" theme="simple">
							<div class="form-group mt-5">
								<div class="name mb-2">Search for other users</div>
								<s:textfield class="form-control w-75"
									placeholder="Find people by their name" type="text"
									name="search" required="true"></s:textfield>
							</div>
							
							<s:submit value="Search" class="btn btn-primary"></s:submit>
						</s:form>
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
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>