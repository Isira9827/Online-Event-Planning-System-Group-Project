package com.add;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class additemUtill {
	public static List<service> validate(String username , String Companyname){
		
		ArrayList<service> ser = new ArrayList<>();
			
		//DataBase connection
		
		String url = "jdbc:mysql://localhost:3306/items";
		String user = "root";
		String password= "host";
			
		//Validate
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,password);
			Statement stmt = con.createStatement();
			String sql = "select * from item where username= '"+username+"' and companyName='"+Companyname+"' ";
			ResultSet rs = stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name  = rs.getString(2);
				String pname = rs.getString(7);
				String dis = rs.getString(8);
				String phone = rs.getString(6);
				
				service s = new service(id,name,pname,dis,phone);

				ser.add(s);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return ser;
	}

}
