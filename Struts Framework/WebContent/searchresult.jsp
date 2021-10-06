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
			<div class="col-md-10">
				<div>
					<s:form action="searchh" class="form-inline" method="post"
						theme="simple">
						<s:textfield class="form-control mt-5 w-75"
							placeholder="Search for other users" type="text" name="search"></s:textfield>
						<s:submit class="btn btn-success mt-5 ml-3" value="Search"></s:submit>
					</s:form>
					<br>

				</div>
				<div class="result">
					
					<s:iterator value="beanList">
						<a href="peopleprofile.action?eml=<s:property value="eml"/>">
							<div class="card border border-secondary mb-5" style="border: 0.5px solid black">
								<div class="card-body w-100">
									<div class="left">
										<img src="css/images/search.png" height="100" width="100">
									</div>
									<div class="right">
										<h1 class="card-text">
											<s:property value="fname" />&nbsp;&nbsp;<s:property value="lname" /> 	
											
										</h1>
									</div>
								</div>
							</div>

						</a>
					</s:iterator>
					<br><br><br>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>