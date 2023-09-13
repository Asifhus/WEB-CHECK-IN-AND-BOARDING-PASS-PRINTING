<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookings</title>
<link rel='stylesheet' type='text/css' href="resources/css/style.css">

</head>
<body>
	<div class='flight-table'>
		<table>
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Src</th>
				<th>Dst</th>
				<th>ETD</th>
				<th>ETA</th>
				<th>Flight Number</th>
				<th>Airline</th>
			</tr>
			<c:forEach items="${bookings}" var="booking" varStatus="loop">
				<tr>
					<td>${booking.getId()}</td>
					<td>${booking.getFirstName()}</td>
					<td>${booking.getLastName()}</td>
					<td>${booking.getEmail()}</td>
					<td>${booking.getMobile()}</td>
					<td>${flights.get(loop.index).getDeparture()}</td>
					<td>${flights.get(loop.index).getArrival()}</td>
					<td>${flights.get(loop.index).getEtd()}</td>
					<td>${flights.get(loop.index).getEta()}</td>
					<td>${flights.get(loop.index).getFlightNumber()}</td>
					<td>${flights.get(loop.index).getAirline()}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>