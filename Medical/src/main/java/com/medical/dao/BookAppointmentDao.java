package com.medical.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.medical.bean.BookAppointment;
import com.medical.bean.ParticularPatient;
import com.medical.constants.Queryconstants;
import com.medical.exception.Usernamenotfoundexception;
import com.medical.util.Dbutil;

public class BookAppointmentDao {

	
	public boolean appointment(BookAppointment bkapp) {
		Connection conn=Dbutil.getConnection();
		PreparedStatement pstmt=null;
		try {
		pstmt=conn.prepareStatement(Queryconstants.BOOK_APPOINTMENT);
		pstmt.setString(1, bkapp.username());
		pstmt.setString(2, bkapp.appointmentdate());
		pstmt.setString(3, bkapp.timeslot());
		pstmt.setString(4, bkapp.doctorlist());
		
		pstmt.execute();
		return true;
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return true;
}
	
	
	

	public List<BookAppointment> viewapp(String username) throws Usernamenotfoundexception{

			List<BookAppointment> list2=new ArrayList<>();
		     Connection conn=Dbutil.getConnection();
		     PreparedStatement pstmt=null;
		     ResultSet rs=null;
		    try {
			pstmt=conn.prepareStatement(Queryconstants.VIEW_APPOINTMENT);
			pstmt.setString(1,username);
			rs=pstmt.executeQuery();
		   while(rs.next()) {
				BookAppointment bkapp= new BookAppointment(rs.getString("username"),rs.getString("appointmentdate"),rs.getString("timeslot"),rs.getString("doctorlist"));
	            list2.add(bkapp);
			}
		  
		}catch (Exception e) {
			throw new Usernamenotfoundexception("You are not booking any appointment");
		}
		    return list2;
			}
		
	public boolean cancel(String username,String appointmentdate,String timeslot) throws Usernamenotfoundexception {
		Connection conn=Dbutil.getConnection();
		PreparedStatement pstmt=null;
		try {
		pstmt=conn.prepareStatement(Queryconstants.CANCEL_APPOINTMENT);
		pstmt.setString(1, username);
		pstmt.setString(2, appointmentdate);
		pstmt.setString(3, timeslot);		
		pstmt.execute();
		return true;
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return true;
}
	
	
	public List<ParticularPatient> viewparticularpatient(String name) throws Usernamenotfoundexception{
		List<ParticularPatient> list3=new ArrayList<>();
	     Connection conn=Dbutil.getConnection();
	     PreparedStatement pstmt=null;
	     ResultSet rs=null;
	    try {
		pstmt=conn.prepareStatement(Queryconstants.DOCTORVIEW);
		pstmt.setString(1,name);
		rs=pstmt.executeQuery();
	   while(rs.next()) {
			ParticularPatient bk= new ParticularPatient(rs.getString("name"),rs.getString("password"),rs.getString("firstName"),rs.getString("lastName"),rs.getInt("age"),rs.getString("gender"),rs.getString("contactNumber"),rs.getString("email"),
					rs.getString("address"),rs.getString("city"),rs.getString("zipCode"));
           list3.add(bk);
		}
	  
	}catch (Exception e) {
		throw new Usernamenotfoundexception("There is no patient ");
	}
	    return list3;
		
		
		
	}




	public int countDoctors() {
		Connection conn = Dbutil.getConnection();
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;

	    try {
	        pstmt = conn.prepareStatement(Queryconstants.DOCTORCOUNT);
	        rs = pstmt.executeQuery();

	        if (rs.next()) {
	            return rs.getInt(1); 
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } 

		return 0;
	}
	
	
	public int countPatients() {
		Connection conn = Dbutil.getConnection();
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;

	    try {
	        pstmt = conn.prepareStatement(Queryconstants.PATIENTCOUNT);
	        rs = pstmt.executeQuery();

	        if (rs.next()) {
	            return rs.getInt(1); 
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } 

		return 0;
	}
	
	
	
	
	
	
}
