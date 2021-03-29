<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ page import="java.sql.*" %>  

<%! String driverName = "com.mysql.jdbc.Driver";%> 
<%!String url = "jdbc:mysql://localhost:3306/hotel";%> 
<%!String user = "root";%> 
<%!String psw = "isira123";%> 
    
<% 
String event_id = request.getParameter("event_id"); 
String username=request.getParameter("username"); 
String event_name=request.getParameter("event_name"); 
String location=request.getParameter("location"); 
String guests=request.getParameter("guests");
String date=request.getParameter("date");
String stime=request.getParameter("stime");
String etime=request.getParameter("etime");

if(event_id != null) 
{ 	
	Connection con = null; 
	PreparedStatement ps = null; 
	int personID = Integer.parseInt(event_id);
	
	try 
	{ 
		Class.forName(driverName); 
		con = DriverManager.getConnection(url,user,psw); 
		String sql="Update bookevent set event_id=?,username=?,event_name=?,location=?,guests=?,date=?,stime=?,etime=? where event_id="+event_id; 
		ps = con.prepareStatement(sql); 
		ps.setString(1,event_id); 
		ps.setString(2, username); 
		ps.setString(3, event_name); 
		ps.setString(4, location); 
		ps.setString(5, guests); 
		ps.setString(6, date); 
		ps.setString(7, stime); 
		ps.setString(8, etime); 
		
		int i = ps.executeUpdate(); 
		
		if(i > 0) 
		{ 
			out.print("");
		} 
		else 
		{ 
			out.print("There is a problem in updating Record."); 
		}
		}
	catch(SQLException sql) 
	{ 
		request.setAttribute("error", sql); 
		out.println(sql); 
	}
}

%> 

<!-- retrieve -->

 <%@page import="java.sql.DriverManager"%> 
 <%@page import="java.sql.ResultSet"%> 
 <%@page import="java.sql.Statement"%> 
 <%@page import="java.sql.Connection"%> 
 <% 
 

 String driver = "com.mysql.jdbc.Driver"; 
 String connectionUrl = "jdbc:mysql://localhost:3306/"; 
 String database = "hotel"; 
 String userid = "root"; 
 String password = "isira123"; 
    
 try { Class.forName(driver);
 } catch (ClassNotFoundException e) {
	 e.printStackTrace();
	 } Connection connection = null; 
	 	Statement statement = null; 
 		ResultSet resultSet = null; 
 %> 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Planning Pros | Event Updated</title>
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
		
		<center><h2>Record Updated Successfully</h2>
		<img src="./assests3/images/undraw_Booked_j7rj.png" height="458px" width="597px" alt="IMG"></center>
		
		<section class="tm-section">
         <center> <h2 class="tm-section-header">Event List</h2>
         <p>You can update or delete you recent added events.</p>
         </center><br>
          <div class="tm-responsive-table">
		
<table id="table" border="1"> 
<tr> 
<td><b>username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td> 
<td><b>Event name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td> 
<td><b>Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td> 
<td><b>No of guests&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td> 
<td><b>Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td> 
<td><b>Start time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td> 
<td><b>End time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td> 
</tr>

<% 
try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password); 
	statement=connection.createStatement(); 
	String sql ="select * from bookevent where username='CID004'"; 
	resultSet = statement.executeQuery(sql); 
	while(resultSet.next()){ 
		%> 
		
<tr> 
		
<td><%=resultSet.getString("username") %></td> 
<td><%=resultSet.getString("event_name") %></td> 
<td><%=resultSet.getString("location") %></td> 
<td><%=resultSet.getString("guests") %></td> 
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("stime") %></td>
<td><%=resultSet.getString("etime") %></td>
</tr> 
<%
	} 
connection.close(); 

} catch (Exception e) { 
	e.printStackTrace(); 
}
%> 

</table>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>
 </div>
 
 <center>      <a href="success.jsp"><input type="button" value="need more Updates & Deletes?" name="btn1"></a>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#"><input type="button" value="Back to the profile page" name="btn2"></a>
     </center> <br><br><br>
  
</body>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</html>