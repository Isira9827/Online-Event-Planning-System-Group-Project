<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Planning Pros | Event Booked</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="windows-1252">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" href="./assests/css/bootstrap.min.css"> <!-- For navigation bar -->
	<link rel="stylesheet" href="./assests/css/main.css">
	<link rel="stylesheet" href="./assests/css/index.css">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="assests2/css/main.css"> 
        
        <style>
            #table {
            	left:250px;
				font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
				border-collapse;
				width: 80%;
			}
			#table td, #table th {
				border: 1px solid #ddd;
				padding: 8px;
				}
				
			#table tr:nth-child(even) { background-color: #f2f2f2;}
			
			#table tr:hover {background-color: #ddd;}
			
			#table th{
				padding-top: 12px;
				padding-bottom;
				text-align: left;
				background-color: #3792cb;
				color: white;
				}
				h2{
					color: #45b6fe;
				}
				
				section{
					padding:10px;
					border:2px;
					border-color:black;
				}
				
				button.delete{
					color:red;
				}
				
				button.delete:hover{
					color:black;
				}
				
				h6{
					color:green;
				}
				
				
        </style>
        
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" >
<link rel="stylesheet" type="text/css" href="styles.css" >
<link href="assests4/fontawesome/css/all.min.css" rel="stylesheet" />
<link href="assests4/css/tooplate-chilling-cafe.css" rel="stylesheet" />

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
		
		 <div class="tm-container">
          <center><h2>Event Booked Successfully</h2>
          <p>Make your event schedule. Your event will be planned as the best event of your life.<br></p>
          <img src="./assests3/images/undraw_Booked_j7rj.png" height="458px" width="597px" alt="IMG"></center>
          
          <div class="tm-main-content">
        	<div id="tm-intro-img"></div>              

        </div>

        <section class="tm-section">
         <center> <h2 class="tm-section-header">Event List</h2>
         <p>You can update or delete you recent added events.</p>
         </center><br>
          <div class="tm-responsive-table"> 
          

	      
	      <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%> 
<%@page import="java.sql.Connection"%> 

<% String event_id = request.getParameter("event_id"); 
String driver = "com.mysql.jdbc.Driver"; 
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "hotel"; 
String userid = "root"; 
String password = "isira123";

try { 
	Class.forName(driver); 
} 
catch (ClassNotFoundException e) { 
	e.printStackTrace(); 
} 
Connection connection = null; 
Statement statement = null; 
ResultSet resultSet = null;
%> 

<table id="table" border="1"> 
<tr>
<td><b>Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td> 
<td><b>Username</b></td> 
<td><b>Event name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td> 
<td><b>Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td> 
<td><b>Number of Guests&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td> 
<td><b>Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td> 
<td><b>Start time</b></td> 
<td><b>End time</b></td> 
<td><h5><b><i>Update</i></b></h5></td>
<td><h5><b><i>Delete</i></b></h5></td>  
</tr> 

<% 
try{ 
	connection = DriverManager.getConnection(connectionUrl+database, userid, password); 
	statement=connection.createStatement(); 
	String sql ="select * from bookevent where username='CID004'"; 
	resultSet = statement.executeQuery(sql); 
	
	int i=0;
	
	while(resultSet.next()){ 
%> 

<tr> 
<td><%=resultSet.getString("event_id") %></td> 
<td><%=resultSet.getString("username") %></td> 
<td><%=resultSet.getString("event_name") %></td> 
<td><%=resultSet.getString("location") %></td> 
<td><%=resultSet.getString("guests") %></td> 
<td><%=resultSet.getString("date") %></td> 
<td><%=resultSet.getString("stime") %></td> 
<td><%=resultSet.getString("etime") %></td> 

<td><a href="Update.jsp?event_id=<%=resultSet.getString("event_id")%>"><h6>update</h6></a></td> 
<td><a href="delete.jsp?event_id=<%=resultSet.getString("event_id") %>"><button type="button" 
class="delete" name="delete"><h5>Delete</h5></button></a></td>
</tr> 


<%
i++;

	} connection.close(); 
} catch (Exception e) { 
	e.printStackTrace(); 
}
%> 
 </table>
 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>
 </div>
          </div>


</body>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</html>