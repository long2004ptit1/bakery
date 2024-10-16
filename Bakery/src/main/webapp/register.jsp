<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="all_component/register.css">
</head>
<body style="background-color: #f0f1f2">


	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Registration Page</h4>
						<form action="register" method="post">
							<div class="form-group">
								<label>Name *</label> <input type="text" name="name" required>
							</div>
							<div class="form-group">
								<label>Email Address *</label> <input type="email" name="email"
									required>
							</div>
							<div class="form-group">
								<label>Phone Number *</label> <input type="number" name="phno"
									required>
							</div>
							<div class="form-group">
								<label>Password *</label> <input type="password" name="password"
									required>
							</div>
							<div class="form-check">
								<input type="checkbox" id="terms" name="checkBox"> 
								<label for="terms">Agree to terms and conditions</label>
							</div>

							<div class="text-center">
								<button type="submit" class="btn">Register</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>