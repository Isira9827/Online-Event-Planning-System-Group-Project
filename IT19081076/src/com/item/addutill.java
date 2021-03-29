package com.item;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;



public class addutill {
	
	public static boolean insertItem(String name , String usrename , String companyname , String address , String phone , String proudect , String Discription ) {

	boolean a = false;
	
	String url = "jdbc:mysql://localhost:3306/items";
	String user = "root";
	String password= "host";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		
		String sql ="insert into item values(0 , '"+name+"' , '"+usrename+"' , '"+companyname+"' , '"+address+"' , '"+phone+"' , '"+proudect+"' , '"+Discription+"')";
		int s = stmt.executeUpdate(sql);
		
		if(s > 0) {
			a = true;
		}else {
			a = false;
		}
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return a;
	}
}

