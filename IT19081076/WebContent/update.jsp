<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel = "stylesheet" href ="css/dis&s.css"/>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>UPDATE MY DATA</h1>

<!-- catch data from s.jsp -->

<% 
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pname = request.getParameter("pname");
	String discription = request.getParameter("discription");
	String phone= request.getParameter("phone");
%>



<!-- user can't edit this variable becouse  this is primary key. -->
<form action="updateservlet" method= "post">

<table>

<tr>
	<td>
		<label>ID :</label>
	</td>
	<td>	
		<input type="text" name="id" value="<%= id %>" readonly/><br>
	</td>
</tr>

<tr>
	<td>
		<label>name :</label>
	</td>
	<td>
		<input type="text" name="name" value="<%= name %>"/><br>
	</td>
</tr>

<tr>
	<td>
		<label>service :</label>
	</td>
	<td>
		<input type="text" name="serviceName" value="<%= pname %>"/><br>
	</td>
</tr>

<tr>
	<td>
		<label>discription :</label>
	</td>
	<td>	
		<input type="text" name="discription" value="<%= discription %>"/><br>
	</td>
</tr>

<TR>
	<td>
		<label>phone number :</label>	
	</td>
	<td>	
		<input type="text" name="phone" value="<%= phone %>" pattern="[0-9]{3}[0-9]{7}" /><br>
	</td>
</TR>

</table>	
			
				<button class="button" name ="submit">SUBMIT</button>
			
</form>	

</body>
</html>