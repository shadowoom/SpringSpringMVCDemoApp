<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Customer Registration Form</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/my-test.css">
</head>
<body>
	<p>Fill out the form. Asterisk (*) means required.</p>
	<br><br>
	<form:form action="processForm" modelAttribute = "customer">
	
		<em>First name:</em> <form:input path ="firstName" />
		<br><br>
		<em>Last name (*):</em> <form:input path ="lastName" />
		<form:errors path="lastName" cssClass="error" />
		<br><br>
		<em>Free Passes (*):</em> <form:input path ="freePasses" />
		<form:errors path="freePasses" cssClass="error" />
		<br><br>
		<em>Postal Code:</em> <form:input path ="postalCode" />
		<form:errors path="postalCode" cssClass="error" />
		<br><br>
		<em>Course Code:</em> <form:input path ="courseCode" />
		<form:errors path="courseCode" cssClass="error" />
		<br><br>
		<em>Platform:</em> <form:input path ="platform" />
		<form:errors path="platform" cssClass="error" />
		<br><br>
		<input type="submit" value="Submit" />
	
	</form:form>


</body>
</html>