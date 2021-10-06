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
						<div class="card-body">
							<h4 class="card-title mt-2 text-center">Update Profile</h4>
							<hr class="w-25 mx-auto" color="#0000FF">
						</div>

						<article class="card-body">
							<s:if test="noData==true">
							<s:iterator value="beanList">

									<s:form action="updated" method="post" theme="simple">

										<div class="form-group">
											<div class="name pb-1">First Name</div>
											<s:textfield class="form-control" type="text" name="fname"></s:textfield>
										</div>

										<div class="form-group">
											<div class="name pb-1">Last Name</div>
											<s:textfield class="form-control" type="text" name="lname"></s:textfield>
										</div>

										<div class="form-group">
											<div class="name pb-1">Phone Number</div>
											<s:textfield class="form-control" type="text" name="pnum"></s:textfield>
										</div>

										<s:submit class="btn btn-success" value="Save Changes" />


									</s:form>
								</s:iterator>
							</s:if>

							<s:if test="ctr>0">
								<span style="color: red;"><s:property value="msg" /></span>
							</s:if>

							<s:else>
								<span style="color: red;"><s:property value="msg" /></span>
							</s:else>

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