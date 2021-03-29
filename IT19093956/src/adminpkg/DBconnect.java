package adminpkg;

import java.sql.DriverManager;
import java.sql.Connection;

public class DBconnect {

	private static String url = "jdbc:mysql://localhost:3306/eventdb";
	private static String username = "root";
	private static String password = "root";
	private static Connection con;      
	
	public static Connection getConnection() {  
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,username,password);
			
		}
		
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
		
	}
	
}



