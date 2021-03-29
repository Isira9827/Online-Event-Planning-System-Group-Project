
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	 <style>
 
	 
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
	
<title> Insert title here</title>
 
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


<table>

<center><h1 class="align text-info"><b><i>Admin Profile</i></b></h1></center><br><br>

<c:forEach var="adm" items="${admDetails}">
<tr>
	<th>AdminID</th>
	<td>${adm.idadmin}</td>
</tr>
 
<tr>
	<th>Admin name</th>
	<td>${adm.name}</td>
</tr>

<tr>
	<th>Admin NIC</th>
	<td>${adm.nic}</td>
</tr>
   
<tr>
	<th>Admin Email</th>
	<td>${adm.email}</td>
</tr>

<tr>
	<th>Admin phone number</th>
	<td>${adm.phone}</td>
</tr>
 
<tr>    
	<th>Admin Username</th>
	<td>${adm.adminusername}</td>      
</tr>

</c:forEach> 
</table>

	<div class="slidewrapper">
		<div class="slide">
			<div class="bodyback">
				<img src="./css/image/adp.png" alt="backgroundpicture" style="background-size: cover; height: 100%; background-position: center; background-repeat: no-repeat;">
			</div>
		</div>
	</div>
  
	<div class="container">
		<a href="addevent.jsp"><button class="btn btn1" name="addevent"   
				value="Add Event">
				<b>ADD EVENT</b>
			</button></a> <a href="updateevent.jsp"><button class="btn btn2"
				name="updateevent" value="Update Event">
				<b>UPDATE EVENT</b>
			</button></a> <a href="deleteevent.jsp"><button class="btn btn3"
				name="deleteevent" value="Delete Event">
				<b>DELETE EVENT</b>
			</button></a>
		<button class="btn btn4" name="submit" value="Customer Details">
			<i><b>CUSTOMER DETAILS<b><i>
		</button>
		<button class="btn btn5" name="submit" value="Supplier Details">
			<i><b>SUPPLIER DETAILS</b><i>
		</button>
		<br>
		<br>
		<br>
	</div>
	
	<%
	ArrayList<event> list= new ArrayList();
	eventdbutil e=new eventdbutil();
	
	list= e.geteventDetails();
	
	%>
	

	<center><h3 class="align text-primary"><b>EVENT DETAILS</b></h3></center><br><br>
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
