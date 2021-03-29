package com.javaUtil.DB;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.javaClass.admin;

import adminpkg.DBconnect;



public class admindbutil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean validate (String adminusername, String password){
		
		//validation
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where adminusername = '"+adminusername+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
	
			
			if(rs.next()) {
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
	
	public static List<admin> getadmin(String adminusername ){
		ArrayList<admin> adm = new ArrayList<>();
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where adminusername = '"+adminusername+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int idadmin = rs.getInt(1);
				String name = rs.getString(2);
				String nic = rs.getString(3);
				String email = rs.getString(4);
				String phone= rs.getString(5);
				String  adminusernamea = rs.getString(6);
				String password = rs.getString(7);
				
				admin a = new admin(idadmin,name,nic,email,phone,adminusernamea,password);
				adm.add(a);
				
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		return adm;
	}



}
