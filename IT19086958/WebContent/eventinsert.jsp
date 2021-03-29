<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Planning Pros | Event Booking</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="./assests/css/bootstrap.min.css"> <!-- For navigation bar -->
	<link rel="stylesheet" href="./assests/css/main.css">
	<link rel="stylesheet" href="./assests/css/index.css">
	
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="assests2/css/main.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <link rel="stylesheet" href="assests3/payment.css">
   <link rel="stylesheet" href="assests3/styles/paybill - Copy.css">
    <script type="text/javascript" src = "assests3/scripts/paybill.js">
    </script>
    
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

<main class="page payment-page">
    <section class="payment-form dark">
      <div class="container">
        <div class="block-heading">
          <h2>Event Booking</h2>
          <p>Select locations as you wish. Make your event schedule. Your event will be planned as the best event of your life.</p>
        </div>
        
	<form action="insert" method="post">
	
		<div class="products">
			<img src="assests3/images/undraw_events_2p66.png" alt="IMG" height="437 pixels" width="560 pixels">
            <center><h3 class="title">Please fill this form</h3></center>
            <div class="item">
            <br>
            <div class="item">
        
		<label for="Events">Enter username</label>
		<input type="text" name="username" placeholder="Eg:CID123" required><br><br>
		
		<label for="Events"> Choose the event </label>
		<select id="Events" name="event_name">
					<option value="Wedding">Wedding</option>
					<option value="Birthday Party">Birthday Party</option>
					<option value="Get-together">Get-together</option>
					<option value="Indoor Musical concerts">Indoor Musical concert</option>
					<option value="DJ Party">DJ Party</option>
					<option value="Exhibition">Exhibition</option>
					<option value="Party">Party</option>
					<option value="Workshop">Workshop</option>
					<option value="Other...">Other...</option>
				</select><br><br>
				
		<!--Event Name<input type="text" name="event_name"><br>-->
		
		<label for="Hotels"> Add location (Hotel/Address)</label>
		<input type="text" id="count" name="location" placeholder="Eg:ABC Hotel" required><br><br><br>
		
		<label for="count">Number of guests</label>
		<input type="number" name="guests" id="count" min="1" placeholder="Eg:200" required><br><br><br>
		
		<label for="date">Choose date</label>
		<input type="date" id="date" name="date" required><br><br><br>
		
		<b>Add time</b>
		<p class="item-description">(You should add start time and end time of the occation.)</p>
		<br>
		
		 <i> Start time :<input type="time" name="stime" id="stime"> &nbsp; &nbsp; &nbsp; End time :<input type="time" name="etime" id="etime"></i><br>
		
		
		<br><br>&nbsp;<br>
				<label for="count">Any other requirements ?</label>
				<p class="item-description">(You can include different locations. And any other requests that you expect from us.)</p>
				<textarea name="InputMessage" id="user_message" class="form-control" rows="7" cols="50" placeholder="put this as blank if you don't...."></textarea><br><br>
				
		</div>
            <div class="total"><span class="price"></span></div>
            
		<center><input type="submit" name="submit" value="Book Event"></center>
		</div>
		  <br></div>
	
	</form>
</div>
    </section>
    </main>
    
 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>