package com.medical.business;

import java.util.List;

import com.medical.bean.BookAppointment;
import com.medical.dao.DoctorDao;
import com.medical.exception.NoAppointmentexception;

public class DoctorBo {

	
	DoctorDao docdao=new DoctorDao();
	public List<BookAppointment> viewapp1(String appointmentdate,String doctorlist) throws NoAppointmentexception {
		return docdao.viewapp1(appointmentdate,doctorlist);
	}

	
}
