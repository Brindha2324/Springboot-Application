package com.medical.constants;

public class Queryconstants {
	public static final String USERQUERY = """
			
		    SELECT password from user where username = ?
		    
	""";
	
	public static final String REGISTER_SQL = """
			
			
        INSERT INTO user (username, password) VALUES (?, ?)
			
			""";
	
	public static final String REGISTER_PATIENT_SQL="""
			
		insert into Patientsregistration values(?,?,?,?,?,?,?,?,?,?,?)	
			
			""";

	public static final String BOOK_APPOINTMENT = """
			
			insert into bookappointment values(?,?,?,?)
			
			
			""";
	
	
	public static final String VIEW_APPOINTMENT="""
			
			select * from bookappointment where username=?
			
			""";

	public static final String CANCEL_APPOINTMENT = """
			
      DELETE FROM bookappointment WHERE username =? AND appointmentdate =?  AND timeslot =?;
      
			""";

	public static final String SUBMIT_FORM = """
			
			
			insert into submitform values(?,?,?,?)
			
			""";

	public static final String DOCTORUSERQUERY = """
			
			SELECT password from doctorlogin where username = ?

			
			""";

	public static final String SEMINARDETAILS = """
			
			
            select * from seminardetails where date >= CURDATE() order by date;			
""";

	public static final String DOCTOR_APPOINTMENT = """
			
						select * from bookappointment where appointmentdate=? and doctorlist=?

			""";

	public static final String DOCTORVIEW = """
			
			select * from Patientsregistration where name=?
			
			""";

	public static final String ADMINUSERQUERY = """
			
						SELECT password from adminlogin where username = ?

			
			""";
	
	
	public static final String DOCTORCOUNT="""
			
			SELECT COUNT(*) AS doctor_count	FROM Doctor
			
			""";
	
	
	public static final String PATIENTCOUNT="""
	
	       select count(*) as patient_count from bookappointment
	
	        """;
			
			
			
	
}
