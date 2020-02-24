<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<title>Login page</title>
</head>
<body>
<h1>Spring Security - Login Form</h1>
	<div class="container">
		<form:form action="${pageContext.request.contextPath}/authenticateTheUser"
			method="post">
			<c:if test="${param.error!=null}">
				<span>Incorrect username or password</span>
			</c:if>
			<c:if test="${param.logout!=null}">
				<span>You have been logout</span>
			</c:if>

			<table>
				<tr class="form-group">
					<td>Username</td>
					<td><input type="text" name="username" class="form-control"></td>
				</tr>
				<tr class="form-group">
					<td>Password</td>
					<td><input type="text" name="password" class="form-control"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="submit" class="btn btn-primary"></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>