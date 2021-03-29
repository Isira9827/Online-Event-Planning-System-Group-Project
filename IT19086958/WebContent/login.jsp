<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Planning Pros | Customer Login</title>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="stylesheet" href="./assests/css/bootstrap.min.css"> <!-- For navigation bar -->
	<link rel="stylesheet" href="./assests/css/main.css">
	<link rel="stylesheet" href="./assests/css/index.css">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./assests2/css/main.css">
	
</head>
<body>

	<div class="navbar">
			<nav class="navbar navbar-expand-lg navbar-light">
				<a class="navbar-brand" href="./">Planning Pros</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<div class="mr-auto"></div>
					<ul class="navbar-nav">
						<li class="nav-item active"><a class="nav-link" href="#">HOME
								<span class="sr-only">(current)</span>
							</a></li>
						<li class="nav-item"><a class="nav-link" href="./gallery.jsp">GALLERY</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="./about.jsp">ABOUT US</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="./contact.jsp">CONTACT US</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
		
		<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="./assests2/images/undraw_Login_v483.png" alt="IMG">
				</div>

	<form action ="log" method="post" class="login100-form validate-form">
	
		<span class="login100-form-title">
						Customer Login
		</span>
		
		<div class="wrap-input100 validate-input" data-validate = "Valid username is required">			
		<input class="input100" type="text" name="uid" placeholder="Username" required>
		<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					
		<div class="wrap-input100 validate-input" data-validate = "Password is required">			
		<input class="input100" type="password" name="pass" placeholder="Password" required>
		<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
		<div class="container-login100-form-btn">
						<button class="login100-form-btn" value="login">
							Login
						</button>
					</div>
		
		<!--  <input type="submit" name="submit" value="login"> -->
		
		<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
					</div>
					</form>
<br><br><br>
			</div>
		</div>
	</div>
	
	<script src="./assests2/js/jquery-3.2.1.min.js"></script>

	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>

	<script src="./assests2/js/main.js"></script>
	
	
</body>
</html>