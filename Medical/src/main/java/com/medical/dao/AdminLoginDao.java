package com.medical.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.medical.bean.Adminlogin;
import com.medical.constants.Queryconstants;
import com.medical.util.Dbutil;

public class AdminLoginDao {
	Connection conn=Dbutil.getConnection();
	PreparedStatement ps=null;
	ResultSet rs=null;
	Adminlogin u=null;
	public Adminlogin findAdmin(Adminlogin adminlogin) {
		
	//	System.out.println(conn);
		try {
			ps=conn.prepareStatement(Queryconstants.ADMINUSERQUERY);
			ps.setString(1, adminlogin.username());
			rs=ps.executeQuery();
			rs.next();
			u=new Adminlogin(adminlogin.username(),rs.getString("password"));
		}catch(Exception e) {
			
		}
		return u;
	}
}
