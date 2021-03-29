package com.deleteservices;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class delservices {

private static boolean sucess;
	
	

	
	public static boolean deletedata(String id)  {
		
		int intid = Integer.parseInt(id);
		
		String url = "jdbc:mysql://localhost:3306/items";
		String user = "root";
		String password= "host";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
			
			String sql = "delete from item where itemId ='"+intid+"' ";
			int r = stmt.executeUpdate(sql);
			
		//check is it done
			
			if(r > 0){
				sucess = true;
			}else {
				sucess = false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return sucess;
	}

}
