<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.util.ArrayList" %>
    <%@page import="com.javaUtil.DB.eventdbutil" %>
    <%@page import="com.javaClass.event" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	    <link rel="stylesheet" href="./css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
        <link rel="stylesheet" href="css/stylesheet.css">
<title>Insert title here</title> 
 
 <style type="text/css">
	body {
		background-image: url("./css/image/delete.png");
		background-position: center;
		background-repeat: no-repeat;
	}
	
	table {
	border-collapse: collapse;
	width: 100%;
	position: absolute;
}

th, td {
	padding: 8px;
	text-align: left;
	border-bottom: 2px solid #ddd;
	position: relative;
}

tr {
	hover {background-color: #f5f5f5;
}

.bodyback img {
	background-size: cover;
	height: 100%;
	background-position: center;
	background-repeat: no-repeat;
}
	
	
</style>
 
</head>
<body>
	<% 
		String idevent = request.getParameter("idevent");
		String eventname = request.getParameter("eventname");
		String category = request.getParameter("category"); 
		String description = request.getParameter("description");
		String location = request.getParameter("location");
	%>
	
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

	   
	 
	<center><h1 class="align text-danger"><b><i>DELETE EVENT<i></h1><b></center><br><br>
	
	<form action="delete" method="post"> 
		<center><b><label class="col-form-label" for="inputDefault">EVENT ID :</label></b></center>
  		<input type="text" class="form-control" placeholder="enter only deleting event id" id="inputDefault" name="idevent" >	
  		
  		<center><b><label class="col-form-label" for="inputDefault">EVENT NAME :</label></b></center>
  		<input type="text" class="form-control" placeholder="enetered id's records are automatically deleted by the system" id="inputDefault" name="eventname" readonly> 
  		
  		<center><b><label class="col-form-label" for="inputDefault">CATEGORY :</label></b></center>
  		<input type="text" class="form-control" placeholder="enetered id's records are automatically deleted by the system" id="inputDefault" name="category" readonly> 
  		
  		<center><b><label class="col-form-label" for="inputDefault">DESCRIPTION:</label></b></center>
  		<input type="text" class="form-control" placeholder="enetered id's records are automatically deleted by the system" id="inputDefault" name="description" readonly> 
  		
  		<center><b><label class="col-form-label" for="inputDefault">LOCATION :</label></b></center>
  		<input type="text" class="form-control" placeholder="enetered id's records are automatically deleted by the system" id="inputDefault" name="location" readonly> 
		   

		<div>
        <button  type="submit" name="submit"  class="btn btn-block btn-danger btn-lg">DELETE EVENT</button>  <hr class="bg-dark">
  
        </div>
	
			
	</form>
	
	<%
	ArrayList<event> list= new ArrayList();
	eventdbutil e=new eventdbutil();  
	
	list= e.geteventDetails();
	
	%>
	

	<center><h3 class="align text-danger"><b>EVENT DETAILS</b></h3></center><br><br>
	<table>
		<tr>
			<th>EVENT ID</th>
			<th>EVENT NAME</th>
			<th>CATEGORY</th>
			<th>DESCRIPTION</th>
			<th>LOCATION</th>
		</tr>
		
		
	<% 
	 
	for (event a:list){


	%>
		<tr>
		<td><%=a.getIdevent() %></td>
		<td><%=a.getEventname() %></td>
		<td><%=a.getCategory() %></td>
		<td><%=a.getDescription() %></td>
		<td><%=a.getLocation() %></td>
		
		</tr>
		<%} %>
		
	</table>
		
	
	

</body>
</html>