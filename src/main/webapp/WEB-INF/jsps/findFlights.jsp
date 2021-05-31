<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Find Flight</title>
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
		<div class="container col-lg-7 p-3">
				<h2 class="mb-2 display-6">Find flights</h2>
				<form action="findFlights" method="post">
					<div class="row">
					  <div class="col-sm mt-1">
					  	<label for="from" class="form-label">From</label>
					    <input id="from" type="text" class="form-control" name="from">
					  </div>
					  <div class="col-sm mt-1">
					  	<label for="to" class="form-label">To</label>
					    <input id="to" type="text" class="form-control" name="to">
					  </div>
					</div>
					<div class="row">
						<div class="col-7 col-sm mt-1">
							<label for="departure" class="form-label">Departure</label>
					  	<input id="departure" type="date" class="form-control" name="dateOfDeparture" aria-label="departure">
						</div>
						<div class="col-5 col-sm mt-1">
							<label for="travellers" class="form-label">Travellers</label>
					  	<input id="travellers" type="number" class="form-control"  aria-label="travellers">
						</div>
					</div>
					<div class="row">
						<div class="col-12 col-sm-6 mt-1">
							<div class="my-1">Class</div>
							<select class="form-select">
								<option>Select</option>
								<option value="economy">Economy</option>
								<option value="premium">Premium Economy</option>
								<option value="business">Business</option>
							</select>
						</div>
					</div>
					<input type="submit" class="btn btn-primary mt-3" value="Find Flights">
				</form>
				<p class="text-center">${noFlight}</p>
			</div>
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
	</body>
</html>