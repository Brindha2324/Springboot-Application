package com.medical.business;

import java.util.List;

import com.medical.bean.BookAppointment;
import com.medical.bean.ParticularPatient;
import com.medical.dao.BookAppointmentDao;
import com.medical.exception.Usernamenotfoundexception;


public class BookAppointmentBo {

	BookAppointmentDao badao=new BookAppointmentDao();
	public boolean appointment(BookAppointment bkapp) {

		return badao.appointment(bkapp);
	}
	
	public List<BookAppointment> viewapp(String username) throws Usernamenotfoundexception {
		return badao.viewapp(username);
	}

	
	public boolean cancel(String username,String appointmentdate,String timeslot) throws Usernamenotfoundexception {
		return badao.cancel(username,appointmentdate,timeslot);
	}

	
     
	
	
	public List<ParticularPatient> viewparticularpatient(String name) throws Usernamenotfoundexception {
		return  badao.viewparticularpatient(name);
	}
	
	int doctorCount = badao.countDoctors();
	
	int patientCount=badao.countPatients();

	// You can use the 'doctorCount' variable as needed.

}
