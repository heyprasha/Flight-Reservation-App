<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Sign Up</title>
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
				        <a class="nav-link" href="login">Login</a>
				        <a class="nav-link active" href="signup">Sign Up</a>
				      </div>
				    </div>
				  </div>
			</nav>
		</header>
		<div class="container col-11 col-sm-8 col-lg-5 mt-5">
			<h2>Sign Up</h2>
			<form action="newSignup" method="post">
				 <div class="mb-3">
				    <label for="firstName" class="form-label">First Name</label>
				    <input id="firstName" type="text" class="form-control" name="firstName">
				  </div>
				  <div class="mb-3">
				    <label for="lastName" class="form-label">Last Name</label>
				    <input id="lastName" type="text" class="form-control" name="lastName">
				  </div>
				  <div class="mb-3">
				    <label for="email" class="form-label">Email address</label>
				    <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp">
				    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
				  </div>
				  <div class="mb-3">
				    <label for="password" class="form-label">Password</label>
				    <input type="password" class="form-control" name="password" id="password">
				  </div>
				  <button type="submit" class="btn btn-primary">Sign Up</button>
			</form>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
		
	</body>
</html>