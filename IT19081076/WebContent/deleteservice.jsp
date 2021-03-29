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
<% 
	String id = request.getParameter("id");
	String name = request.getParameter("name");
%>


<form action="serdelservices" method="post">

<table>

<tr>
	<td>
		<label>ID :</label>
	</td>
	<td>	
		<input type="text" name="id" value="<%= id %>"id = "id" readonly/><br>
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
</table>
<button class="button" name ="submit">SUBMIT</button>
</form>

</body>
</html>