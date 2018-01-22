<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration Form</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student">
		<em>First Name: </em> <form:input path="firstName" />
		<br><br>
		<em>Last Name: </em> <form:input path="lastName" />
		<br><br>
		<em>Country: </em>
			<form:select path="country">
				<form:options items="${student.countryOptions}" />
			</form:select>
		<br><br>
		<em>Hobbies: </em>
			<form:select path="hobby">
				<form:options items="${theHobbyOptions}" />
			</form:select>
		<br><br>
		<em>Favorite Language: </em>
			<form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}" />
		<br><br>
		<em>Operating Systems: </em>
			Linux: <form:checkbox path="operatingSystems" value="Linux"/>
			Windows: <form:checkbox path="operatingSystems" value="Windows"/>
			Mac OS: <form:checkbox path="operatingSystems" value="Mac OS"/>
		<br><br>
		<input type ="submit" value="Submit" />
		<br><br>
		
		
	</form:form>


</body>
</html>