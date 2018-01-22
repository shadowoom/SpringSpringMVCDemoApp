<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Confirmation</title>
</head>
<body>

	<h2>The customer is confirmed: ${customer.firstName} ${customer.lastName}</h2>
	<h2>Free Passes: ${customer.freePasses}</h2>
	<h2>Postal Code: ${customer.postalCode}</h2>
	<h2>Course Code: ${customer.courseCode}</h2>
	<h2>Platform: ${customer.platform}</h2>

</body>
</html>