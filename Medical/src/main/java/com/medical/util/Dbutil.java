package com.medical.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class Dbutil {
	private static Connection conn=null;
	private Dbutil(){  // singleton pattern
		
	}
	public static Connection getConnection() {
		if(conn==null) {
			try {
				
			//FileReader fr=new FileReader("db.properties");	
			Properties pr=new Properties();
			pr.load(Dbutil.class.getClassLoader().getResourceAsStream("db.properties"));
				
		//	Class.forName("com.mysql.cj.jdbc.Driver");
//			DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root", "Bsipl@123");
			Class.forName(pr.getProperty("driver"));
			conn=DriverManager.getConnection(pr.getProperty("url"),pr.getProperty("name"),pr.getProperty("password"));
			
			
			return conn;
		   }catch(Exception e) {
			   e.printStackTrace();
			   return null;
		   }
			
		
		
		}else {
			return conn;
		}
	
	
	}
}
