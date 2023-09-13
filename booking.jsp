<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Details</title>
<link rel='stylesheet' type='text/css' href="resources/css/style.css">

</head>
<body>
	<div class="form">
		<p>Passenger Details</p>
		<form method="post" action="payment"  method="post" modelAttribute="booking">
			<input placeholder="First name" type="text" name="firstName" required />
			<input placeholder="Last name" type="text" name="lastName" required />
			<input type="tel" placeholder="10 digit mobile number" pattern="[0-9]{10}" name="mobile" required /> 
			<input type="submit" value="Book">
		</form>
	</div>
</body>
</html>