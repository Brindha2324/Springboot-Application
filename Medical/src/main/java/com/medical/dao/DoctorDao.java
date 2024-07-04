package com.medical.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.medical.bean.BookAppointment;
import com.medical.constants.Queryconstants;
import com.medical.exception.NoAppointmentexception;
import com.medical.util.Dbutil;

public class DoctorDao {

	public List<BookAppointment> viewapp1(String appointmentdate,String doctorlist) throws NoAppointmentexception {

		List<BookAppointment> list2=new ArrayList<>();
	     Connection conn=Dbutil.getConnection();
	     PreparedStatement pstmt=null;
	     ResultSet rs=null;
	    try {
		pstmt=conn.prepareStatement(Queryconstants.DOCTOR_APPOINTMENT);
		pstmt.setString(1,appointmentdate);
		pstmt.setString(2, doctorlist);
		rs=pstmt.executeQuery();
	   while(rs.next()) {
			BookAppointment bkapp= new BookAppointment(rs.getString("username"),rs.getString("appointmentdate"),rs.getString("timeslot"),rs.getString("doctorlist"));
           list2.add(bkapp);
		}
	  
	}catch (Exception e) {
		throw new NoAppointmentexception("No Appointment on this day");
	}
	    return list2;
		}

	
	

}
