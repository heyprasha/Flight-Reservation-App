<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Show complete Reservation</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

</head>
<body>
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
<div class="container d-flex justify-content-center mt-3">
	<div class="col-11 col-sm-9 col-md-8 col-lg-7 border p-2">
		<div class="row">
			<div class="col">${flight.flightNumber}</div>
			<div class="col">${flight.operatingAirlines}</div>
		</div>
		<div class="row">
			<div class="col">${flight.departureCity}</div>
			<div class="col-1">></div>
			<div class="col">${flight.arrivalCity}</div>
		</div>
	</div>
</div>
	
	<!-- Departure Date: ${flight.dateOfDeparture}<br>
	Estimated Departure Time: ${flight.estimatedDepartureTime }--> 
	<div class="container ">
		<form action="confirmReservation" method="post" class="d-flex flex-column flex-sm-row justify-content-evenly mt-4">
		<div class="col-11 col-sm-5 col-md-4">
		<h4>Enter Details</h4>
		  <div class="mb-3">
		    <label for="firstName" class="form-label">First Name</label>
		    <input id="firstName" type="text" class="form-control" name="firstName">
		  </div>
		  <div class="mb-3">
		    <label for="lastName" class="form-label">Last Name</label>
		    <input id="lastName" type="text" class="form-control" name="lastName">
		  </div>
		  <div class="mb-3">
		    <label for="middleName" class="form-label">Middle Name</label>
		    <input id="middleName" type="text" class="form-control" name="middleName">
		  </div>
		  <div class="mb-3">
		    <label for="email" class="form-label">Email</label>
		    <input id="email" type="email" class="form-control" name="email">
		  </div>
		  <div class="mb-3">
		    <label for="phone" class="form-label">Phone</label>
		    <input id="phone" type="number" class="form-control" name="phone">
		  </div>
		  <input type="hidden" name="flightId" value="${flight.id}"><br>
			</div>
			<div class="col-11 col-sm-5 col-md-4">
			<h4>Enter Card Details</h4>
				<div class="mb-3">
		    <label for="name" class="form-label">Name on Card</label>
		    <input id="name" type="text" class="form-control" name="cardName">
		  </div>
		  <div class="mb-3">
		    <label for="cardNumber" class="form-label">Card Number</label>
		    <input id="cardNumber" type="number" class="form-control" name="cardNumber">
		  </div>
		  <div class="mb-3">
		    <label for="expiry" class="form-label">Expiry</label>
		    <input id="expiry" type="number" class="form-control" name="expiry">
		  </div>
		  <div class="mb-3">
		    <label for="cvv" class="form-label">CVV</label>
		    <input id="cvv" type="number" class="form-control" name="cvv">
		  </div>
		  <button type="submit" class="btn btn-primary my-3">Complete Reservation</button>
		  </div>
		</form>	
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
	
</body>
</html>