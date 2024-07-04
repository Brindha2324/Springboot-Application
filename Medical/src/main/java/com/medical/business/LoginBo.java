package com.medical.business;

import com.medical.bean.User;
import com.medical.dao.LoginDao;

public class LoginBo {
	public boolean validateUser(User user)  {
		LoginDao loginDao=new LoginDao();
		User u=loginDao.findUser(user);
		if(u!=null && u.username().equals(user.username())&&u.password().equals(user.password())) {
			return true;
		}
		return false;
	}
//	public boolean addUser(User user) {
//		LoginDao loginDao=new LoginDao();
//
//		return loginDao.addUser(user);
//	}
	
}
