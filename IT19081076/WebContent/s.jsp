<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<link rel = "stylesheet" href ="css/bootstrap.min.css"/>
<link rel = "stylesheet" href ="css/main.css"/>
<link rel = "stylesheet" href ="css/dis&s.css"/>


<meta charset="ISO-8859-1">
<title>	My services</title>
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


<h1>services</h1>
	
<table>
	<c:forEach var= "c" items = "${service}">

<!-- set variable to pass to update -->

		<c:set var = "id" value = "${c.id}"/>
		<c:set var = "name" value = "${c.name}"/>
		<c:set var = "pname" value = "${c.pname}"/>
		<c:set var = "discription" value = "${c.discription}"/>
		<c:set var = "phone" value = "${c.phone}"/>
		

	<tr>
		<td>MY ID IS : </td>
		 <td>${c.id}</td>
	</tr>
	<tr>	 
		<td>MY NAME IS :</td>
		<td>${c.name}</td>
	</tr>
	<tr>	
		<td>service :</td>
		<td>${c.pname}</td>
	</tr>
	<tr>	
		<td>discription :</td>
		<td>${c.discription}</td>
	</tr>	
	<tr>	
		<td>phone number :</td>
		<td>${c.phone}</td>
	</tr>
	</c:forEach>
	
</table>

<c:url value="update.jsp" var="updatedata">
	<c:param name="id" value ="${id}"/>
	<c:param name="name" value ="${name}"/>
	<c:param name="pname" value ="${pname}"/>
	<c:param name="discription" value ="${discription}"/>
	<c:param name="phone" value ="${phone}"/>
</c:url>


<a href ="${updatedata}">
	<input type ="button" name = "updatedata" value= "update data">
</a>	


<c:url value="deleteservice.jsp" var="delete">
	<c:param name="id" value ="${id}"/>
	<c:param name="name" value ="${name}"/>
</c:url>

<a href ="${delete}">
<input type ="button" name = "delete" value= "delete">
</a>
	
</body>
</html>