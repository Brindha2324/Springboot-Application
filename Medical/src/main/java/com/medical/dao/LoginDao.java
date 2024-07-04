package com.medical.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.medical.bean.User;
import com.medical.constants.Queryconstants;
import com.medical.util.Dbutil;

public class LoginDao {
	Connection conn=Dbutil.getConnection();
	PreparedStatement ps=null;
	ResultSet rs=null;
	User u=null;
	public User findUser(User user) {
		
	//	System.out.println(conn);
		try {
			ps=conn.prepareStatement(Queryconstants.USERQUERY);
			ps.setString(1, user.username());
			rs=ps.executeQuery();
			rs.next();
			u=new User(user.username(),rs.getString("password"));
		}catch(Exception e) {
			
		}
		return u;
	}
	
	
	
//	public boolean addUser(User user) {
//		try {
//			ps=conn.prepareStatement(Queryconstants.REGISTER_SQL);
//			ps.setString(1,user.username());
//			ps.setString(2,user.password());
//			ps.execute();
//			return true;
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//		return false;
//	}
}
