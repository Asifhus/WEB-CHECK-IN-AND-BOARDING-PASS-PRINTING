<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Booking</title>
<link rel='stylesheet' type='text/css' href="resources/css/style.css">
</head>
<body>
	<div class="container">
		<div class="banner">
			<h3><i>Easy Flight Booking</i></h3>
 			<p>Affordable Flight booking services</p>
		</div>
		<div class="form">
			<div class="register">
				<h4 class="error">${error}</h4>
				<form method="post" action="register"  method="post" modelAttribute="customer">
					<input placeholder="First name" type="text" name="firstName" required />
					
					<input placeholder="Last name" type="text" name="lastName" required />
				
					<input type="tel" placeholder="10 digit mobile number" pattern="[0-9]{10}" name="mobile" required /> 
					
					<input placeholder="email" type="email" name="email" required /> 
					
					<input placeholder="password" type="password" name="password" required /> 
						
					<input type="submit" value="Register">
					<p class="message">Already registered? <a id="login-switch" href="#">Login here</a></p>	
				</form>
			</div>
			<div class="login">
				<form method="post" action="signin"  method="post" modelAttribute="login">					
					<input placeholder="email" type="email" name="email" required /> 
					<input placeholder="password" type="password" name="password" required /> 					
					<input type="submit" value="Login">
					<p class="message">Not registered? <a id="register-switch" href="#">Register here</a></p>	
						
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		document.querySelector('#login-switch').addEventListener('click', () => {
			document.querySelector('.register').style.display = 'none';
			document.querySelector('.login').style.display = 'block';
			
		});
		document.querySelector('#register-switch').addEventListener('click', () => {
			document.querySelector('.login').style.display = 'none';
			document.querySelector('.register').style.display = 'block';
			
		});
	</script>
</body>
</html>