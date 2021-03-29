<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<%-- link css file --%>
<link rel = "stylesheet" href ="css/application.css"/>
<link rel = "stylesheet" href ="css/bootstrap.min.css"/>
<link rel = "stylesheet" href ="css/main.css"/>


<meta charset="ISO-8859-1">
<title>application</title>


</head>

<body>



<!-- Start header -->
	<header>
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
	</header>
	<!-- End header -->

<hr>

	<button class="button" name ="my details" onclick="window.location='display.jsp';" /> my details</button>
<p></p>
<h1 style="text-align:center;">ADD SERVICE DETAILS	</h1>

<%--application begin --%>
<fieldset>

<legend class = "a">seller details</legend>
<br>
	<form action="servlet" method= "post">
	
	
		<p class= "applicationdetails"> * supplier</p>

		<label>Full Name:</label>
		<input type="text" id="fname" name="fname" placeholder="Full name">

		<label>usrename:</label>
    	<input  type="text" id="username" name="username" placeholder="user-name">


	<p class= "applicationdetails"> * company details</p>

	<%--inline css--%>	
		<label>company name</label>
		<input style="margin-left:50px;" type="text" id="companyname" name="companyname" placeholder="company-name">    

			<br><br>
	
		<label>company address</label><br>
		<input style="width: 100%;" type="text" id="address" name="address">   
	
			<br><br>

		<label>phone number</label>
		<input style="margin-left:50px;" type="text" id="tp" name="tp"size="50"  pattern="[0-9]{3}[0-9]{7}" placeholder="0xxxxxxxxx">				


			<p class= "applicationdetails"> * service details</p>
		
		<label>Service name </label>
		<input style="margin-left:40px;" type="text" id="proudct" name="proudct">

	
			<br><br>
	
	<label>Description</label><BR>
	<input type="text" style="width: 100%;" style="margin-left:10px;" name="Discription" id="Discription"  class ="a" maxlength="100" placeholder="max lenth 100 word summery">
			<br><br>
	
			
				<button class="button" name ="submit">SUBMIT</button>
			
</form>
</fieldset>


</body>
</html> 