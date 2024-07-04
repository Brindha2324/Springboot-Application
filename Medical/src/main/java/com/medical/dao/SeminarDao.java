package com.medical.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.medical.bean.Seminar;
import com.medical.constants.Queryconstants;
import com.medical.util.Dbutil;


public class SeminarDao {
	public List<Seminar> getAll(){
		Connection conn=Dbutil.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<Seminar> list1=new ArrayList<>();
		try {
			ps=conn.prepareStatement(Queryconstants.SEMINARDETAILS);
			rs=ps.executeQuery();
			 while(rs.next()) {
				 var sem=new Seminar(rs.getInt("semid"),rs.getString("topic"),rs.getString("date"));		
			list1.add(sem);
			 }
		}catch(Exception e) {
			
			
		}
		return list1;
	}


}
