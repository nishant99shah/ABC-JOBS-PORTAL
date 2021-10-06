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
				<div class="col-md-6 p-3 mt-5 mb-5">
					<div class="card border border-primary">
						<div class="card-body">
							<h4 class="card-title mt-2 text-center">Register with us</h4>
							<hr class="w-25 mx-auto" color="#0000FF">
						</div>

						<article class="card-body">
							<s:form action="register" name="myForm" method="post" theme="simple" onsubmit="return myFunction()">

								<div class="form-group">
									<div class="name pb-1">First Name</div>
									<s:textfield label="First Name" class="form-control"
										placeholder="Enter first name" type="text" name="fname"
										required="true"></s:textfield>
								</div>

								<div class="form-group">
									<div class="name pb-1">Last Name</div>
									<s:textfield label="Last Name" class="form-control"
										placeholder="Enter last name" type="text" name="lname"
										required="true"></s:textfield>
								</div>

								<div class="form-group">
									<div class="name pb-1">Username</div>
									<s:textfield label="Username" class="form-control"
										placeholder="Enter username" type="text" name="uname"
										required="true"></s:textfield>
								</div>

								<div class="form-group">
									<div class="name pb-1">Phone Number</div>
									<s:textfield label="Phone Number" class="form-control"
										placeholder="Enter phone number" type="text" name="pnum"
										required="true" pattern="[0-9]{10}"></s:textfield>
								</div>

								<div class="form-group">
									<div class="name pb-1">Email Address</div>
									<s:textfield label="Email" class="form-control"
										placeholder="Enter email address" type="email" name="eml"
										required="true"></s:textfield>
								</div>

								<div class="form-group">
									<div class="name pb-1">Password</div>
									<s:password label="Password" class="form-control"
										placeholder="Enter password" type="text" name="psd" id="psd1"
										required="true"></s:password>
								</div>

								<div class="form-group">
									<div class="name pb-1">Confirm Password</div>
									<s:password label="Confirm Password" class="form-control"
										placeholder="Confirm password" type="text" name="cpsd" id="psd2"
										required="true"></s:password>
								</div>

								<s:submit class="btn btn-primary btn-block" value="Register"></s:submit>
							</s:form>
							<s:if test="ctr>0">
								<span style="color: green;"><s:property value="msg" /></span>
							</s:if>

							<s:else>
								<span style="color: red;"><s:property value="msg" /></span>
							</s:else>

						</article>

						<div class="border-top card-body text-center">
							Have an account? <a href="login.jsp">Log In</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</main><br><br><br><br>
	<%@include file="footer.jsp"%>
	<script type="text/javascript">
function myFunction() {
	
	
    var psd = document.getElementById("psd1").value;
    var cpsd = document.getElementById("psd2").value;
    if (psd != cpsd) {
        alert("Password and confirm Password must be same.");
        return false;
    }
    return true;
    
}
</script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>