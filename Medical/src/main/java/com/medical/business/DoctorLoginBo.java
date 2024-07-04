package com.medical.business;

import com.medical.bean.Doctorlogin;
import com.medical.dao.DoctorLoginDao;

public class DoctorLoginBo {
	public boolean validateDoctor(Doctorlogin doctorlogin)  {
		DoctorLoginDao loginDao=new DoctorLoginDao();
		Doctorlogin u=loginDao.findDoctor(doctorlogin);
		if(u!=null && u.username().equals(doctorlogin.username())&&u.password().equals(doctorlogin.password())) {
			return true;
		}
		return false;
	}
}
