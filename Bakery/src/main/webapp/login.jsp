
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="all_component/login.css">

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Login</h3>
						<c:if test="${not empty failMsg}">
							<h5 class="text-center text-danger">${failMsg}</h5>
							<c:remove var="failMsg" scope="session" />
						</c:if>
						<form action="login" method="post">
							<div class="form-group">
								<label>Enter Email *</label> <input type="email" name="email"
									required>
							</div>
							<div class="form-group">
								<label>Enter Password *</label> <input type="password"
									name="password" required>
							</div>
							<div class="text-center">
								<button type="submit" class="btn">Login</button>
								<a href="register.jsp">Create Account</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
