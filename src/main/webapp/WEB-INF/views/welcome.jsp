<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome page</title>
</head>
<body>
	<h1 style="color: red; text-align: center">Spring Boot Security
		Example</h1>
	<h2>Hello ${pageContext.request.remoteUser}</h2>
	<form:form action="/logout">
		<input type="submit" value="signout">
	</form:form>
</body>
</html>