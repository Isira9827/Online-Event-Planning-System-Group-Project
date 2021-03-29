<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<%-- link css file --%>
<link rel = "stylesheet" href ="css/contactus.css"/>
<link rel = "stylesheet" href ="css/bootstrap.min.css"/>
<link rel = "stylesheet" href ="css/main.css"/>

<meta charset="ISO-8859-1">
<title>Contact Us</title>
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



	<h1 class = "a" >HAVE SOME QUESTIONS?</h1>
	
	<div class ="inside">
	
	<table style="width:100%">
  <tr>
    <td>
    	<img src="images/mail.png" alt="mail.icon" width ="45%" height ="350px"style="margin:100px 150px">
    </td>
    <td>
    	<label>NAME:</label>
		<input type="text" id="name" name="name" >
		
		<br><br>
			
		<label>E-MAIL</label>
		<input type="text" id="fname" name="fname">
		
			<br><br>
			
		<label>YOUR QUESTIONS</label>
		<textarea id="CONTENT" name = "content" rows="10" cols=40%>
		</textarea>
			
			<br><br>
	</td>
    
  </tr>

</table>
			
			
				<button class="button" name ="submit">SUBMIT</button>
				
	</div>
</body>
</html>