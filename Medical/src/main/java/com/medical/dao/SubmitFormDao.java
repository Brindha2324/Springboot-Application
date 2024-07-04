package com.medical.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.medical.bean.SubmitForm;
import com.medical.constants.Queryconstants;
import com.medical.util.Dbutil;

public class SubmitFormDao {

	public boolean submit(SubmitForm form) {
	
		Connection conn=Dbutil.getConnection();
		PreparedStatement pstmt=null;
		try {
		pstmt=conn.prepareStatement(Queryconstants.SUBMIT_FORM);
		pstmt.setString(1, form.full_name());
		pstmt.setString(2, form.email());
		pstmt.setString(3, form.subject());
		pstmt.setString(4, form.message());
		
		pstmt.execute();
		return true;
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return true;
}

}
