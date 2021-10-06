<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="with=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/styles.css">
<title>AbcJobs</title>
</head>
<body>
<%@include file="header1.jsp"%>
	<table class="table"">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Username</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Email</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <s:iterator value="beanList">
  <tbody>
    <tr>
      <th scope="row"><s:property value="ID" /></th>
      <td><s:property value="fname" /></td>
      <td><s:property value="lname" /></td>
      <td><s:property value="uname" /></td>
      <td><s:property value="pnum" /></td>
      <td><s:property value="eml" /></td>
      <td><a href="deleteUser.action?bean.Eml=<s:property value="eml"/>" class="btn btn-outline-danger">Delete</a></td>
    </tr>
  </tbody>
  </s:iterator>
</table>
	
<%@include file="footer.jsp"%>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</body>
</html>