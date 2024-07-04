package com.medical.business;

import com.medical.bean.Adminlogin;
import com.medical.dao.AdminLoginDao;

public class AdminLoginBo {
	public boolean validateAdmin(Adminlogin adminlogin)  {
		AdminLoginDao loginDao=new AdminLoginDao();
		Adminlogin u=loginDao.findAdmin(adminlogin);
		if(u!=null && u.username().equals(adminlogin.username())&&u.password().equals(adminlogin.password())) {
			return true;
		}
		return false;
	}
}
