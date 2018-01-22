<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Demo Home Page</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/my-test.css">
    <script src="${pageContext.request.contextPath}/resources/js/simple-test.js"></script>
</head>
<body>
<h2>Spring MVC Demo - Home Page</h2>

<a href="hello/showForm">Plain Hello World</a>

<br><br>

<a href="student/showForm">Student Form</a>

<br><br>

<a href="customer/showForm">Customer Form</a>

<br><br>

<img src="${pageContext.request.contextPath}/resources/images/spring-icon.png" />

<br><br>

<input type="button" onclick="doSomeWork()" value="Click Me"/>

</body>
</body>
</html>