package com.medical.business;

import com.medical.bean.SubmitForm;
import com.medical.dao.SubmitFormDao;

public class SubmitFormBo {


	SubmitFormDao sfdao=new SubmitFormDao();
	
	public boolean submit(SubmitForm form) {

		return sfdao.submit(form);
	}
	
	
}
