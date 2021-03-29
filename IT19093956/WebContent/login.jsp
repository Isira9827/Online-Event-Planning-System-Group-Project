<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>      
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="./css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
        <link rel="stylesheet" href="css/stylesheet.css">
		<title>Login</title>     
</head>
<body>  
 
<header>
		<div class="navbar">
			<nav class="navbar navbar-expand-lg navbar-light">
				<a class="navbar-brand" href="./" style="margin-right: 50rem">Planning Pros</a>
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

		
  

		<%  
			String profile_msg=(String)request.getAttribute("profile_msg");  
		if(profile_msg!=null){  
			out.print(profile_msg);  
			}  
			String login_msg=(String)request.getAttribute("login_msg");  
		if(login_msg!=null){  
			out.print(login_msg);   
			}   
 		%>  
		 
		 <div class = "slidewrapper">
			<div class="slide" style="max-width:auto">
			 <div class="bodyback" style="background-size:cover;background-attachment:fixed;">
				<img src="./css/image/tablen.jpg" alt="backgroundpicture" >
		
		</div>
 		</div>
		</div>
		<div class="maji">
		<div class = "slidewrapper">
		<div class="slide" style="max-width:auto">

 
		
		</div>      
		<script type="text/javascript">
			document.getElementByTagName('video').play();    
		</script>
 		</div>
		</div>    
		   
		<div class="loginform" style="position:relative">  
			<center><h3 class="align text-dark"> <b>ADMIN LOGIN </b></h3><hr class="bg-light"></center>
        	<form action="log" method="post"> 
        <div class="form-group">
		
  		<center><b><label class="col-form-label" for="inputDefault">ADMIN USERNAME :</label></b></center>
  		<input type="text" class="form-control" placeholder="Enter your admin username" id="inputDefault" name="auid" placeholder="Enter admin username">
  		
  		<center><b><label class="col-form-label" for="inputDefault">PASSWORD :</label></b></center>
  		<input type="text" class="form-control" placeholder="Enter your password" id="inputDefault" id="password" name="pass" placeholder="Password">
  		
  		 </div>
         &nbsp;<i><center><small id="emailHelp" class="form-text text-muted align text-light">Please Never Share Your Details with Anyone Else!!!!!</small><hr class="bg-light"></center></i>
         <div>
  			
  		<div>
        <button  type="submit" name="login" id="login"  class="btn btn-block btn-success btn-lg">Login </button>  <hr class="bg-dark">
  
        </div>
     
		</div>	
		</form>
		</div>	
		
</body>
</html>