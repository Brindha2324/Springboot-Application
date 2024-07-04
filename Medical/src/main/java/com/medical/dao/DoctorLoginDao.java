package com.medical.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.medical.bean.Doctorlogin;
import com.medical.constants.Queryconstants;
import com.medical.util.Dbutil;

public class DoctorLoginDao {
	Connection conn=Dbutil.getConnection();
	PreparedStatement ps=null;
	ResultSet rs=null;
	Doctorlogin u=null;
	public Doctorlogin findDoctor(Doctorlogin doctorlogin) {
		
	//	System.out.println(conn);
		try {
			ps=conn.prepareStatement(Queryconstants.DOCTORUSERQUERY);
			ps.setString(1, doctorlogin.username());
			rs=ps.executeQuery();
			rs.next();
			u=new Doctorlogin(doctorlogin.username(),rs.getString("password"));
		}catch(Exception e) {
			
		}
		return u;
	}
}
