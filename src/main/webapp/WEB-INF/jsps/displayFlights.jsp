<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Available flights</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="index.html">FlightApp</a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		      <div class="navbar-nav">
		        <a class="nav-link active" aria-current="page" href="index.html">Home</a>
		        <a class="nav-link" href="#">Contact Us</a>
		        <a class="nav-link" href="#">About Us</a>
		      </div>
		    </div>
		  </div>
		</nav>
	</header>
	<div class="container">
		<h2 class="display-6 my-4">Available Flights</h2>
		<div class="table-responsive">
			<table class="table  table-hover table-bordered ">
				<tr>
					<th>Flight Number</th>
					<th>Operating Airlines</th>
					<th>Departure City</th>
					<th>Arrival City</th>
					<th>Date Of Departure</th>
					<th>Select</th>
				</tr>
				<c:forEach items="${findFlights}" var="findFlights">
				<tr>
					<td>${findFlights.flightNumber}</td>
					<td>${findFlights.operatingAirlines}</td>
					<td>${findFlights.departureCity}</td>
					<td>${findFlights.arrivalCity}</td>
					<td>${findFlights.dateOfDeparture}</td>
					<td><a class="btn btn-primary" href="showCompleteReservation?flightId=${findFlights.id}">Select</a></td>
				</tr>	
				</c:forEach>
			</table>
		</div>
	</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
		
</body>
</html>