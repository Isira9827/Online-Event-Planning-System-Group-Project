package com.customer;


/*import java.awt.Event;*/
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class CustomerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Customer> validate(String userName,String password) {
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from customer where username='"+userName+"' and password ='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
				
				Customer c = new Customer(id,name,email,phone,userU,passU);
				cus.add(c);
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	
	

	public static boolean insertcustomer(String event_id,String username, String event_name, String location, String guests, String date,String stime,String etime) {
		
		boolean isSuccess = false;
		
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into bookevent values (0,'"+username+"','"+event_name+"','"+location+"','"+guests+"','"+date+"','"+stime+"','"+etime+"')";
				int rs = stmt.executeUpdate(sql);
				
					if(rs > 0)
					{
						isSuccess = true;
					}else
						
					{
						isSuccess = false;
					}
				
				}
			
			catch(Exception e) {
				e.printStackTrace();
			}
		
		
		return isSuccess;
	}
	


	public static boolean updatecustomer(String id,String name,String email,String phone,String username,String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update customer set name = '"+name+"',email ='"+email+"',phone ='"+phone+"', username='"+username+"',password='"+password+"'"
						+ "where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	/*private static List<Event> getEventDetails(String event_id) {
		int convertedID = Integer.parseInt(event_id);
		
		ArrayList<Event> eve = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select from bookevent where event_id = '"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int event_id = rs.getInt(1);
				String username = rs.getString(2);
				String 
			}
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		
		return eve;
	}*/
}
