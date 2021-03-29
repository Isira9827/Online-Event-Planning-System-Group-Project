package com.update;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class updateDbUtill {
	
	private static boolean sucess;
	
	

	
	public static boolean updatedata(String id, String name , String sname , String dis , String phone)  {
		
		
		String url = "jdbc:mysql://localhost:3306/items";
		String user = "root";
		String password= "host";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
			
			String sql = "update item set name ='"+name+"' , proudctName ='"+sname+"' , Discription ='"+dis+"' , phoneNumber ='"+phone+"'" +" where itemId ='"+id+"' ";
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
