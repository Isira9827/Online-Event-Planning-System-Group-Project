package com.javaUtil.DB;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.javaClass.event;

import adminpkg.DBconnect;


public class eventdbutil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean addevent(String eventname,String category,String description,String location) {
		
		boolean isSuccess = false;
		
		
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into event values (0,'"+eventname+"','"+category+"','"+description+"','"+location+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return isSuccess;
		
	}
	
public static boolean updatecustomer(String idevent,String eventname,String category,String description, String location) {
		
		boolean isSuccess = true;
		
try {
	
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "update event set eventname ='"+eventname+"',category='"+category+"',description='"+description+"',location='"+location+"'"+" where idevent='"+idevent+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		  
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return isSuccess ;
	}
	
	public static List<event> geteventDetails(String idevent){
		
		int convertedidevent = Integer.parseInt(idevent);
		
		ArrayList<event> eve = new ArrayList<>(); 
		
		try {
	
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from event where idevent='"+convertedidevent+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int eventid = rs.getInt(1);
				String eventname = rs.getString(2);
				String category = rs.getString(3);
				String description = rs.getString(4);
				String location = rs.getString(5);
			
				
				event e = new event(eventid,eventname,category,description,location);
				eve.add(e);
				
			}
			
		}
		
		catch(Exception e){
			e.printStackTrace();
			
		}
		return eve;
	}
	public static boolean deleteevent(String idevent) {
		
		
		int convidevent = Integer.parseInt(idevent);
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from event where idevent='"+convidevent+"'";
			int rs = stmt.executeUpdate(sql);

			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
			
		
		catch(Exception e){
			e.printStackTrace();   
		
		
	}
		return isSuccess;
			
	}

public ArrayList<event> geteventDetails() throws Exception {
	
	ArrayList<event> list=new ArrayList<>();
	
	con = DBconnect.getConnection();
	stmt = con.createStatement();
	String sql = "select * from event";
	rs = stmt.executeQuery(sql);
	
	


	while(rs.next()) {
		event eve = new event();
		eve.setIdevent(rs.getInt("idevent"));
		eve.setEventname(rs.getString("eventname"));
		eve.setCategory(rs.getString("category"));
		eve.setDescription(rs.getString("description"));
		eve.setLocation(rs.getString("location"));

	
	// event e = new event(idevent,eventname,category,description,location);
	
		list.add(eve);
		
		//System.out.println(list);
	}
	
	
	return list;
}
	

	
}
