package com.medical.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medical.business.BookAppointmentBo;
import com.medical.exception.Usernamenotfoundexception;

/**
 * Servlet implementation class doctorViewPatientDetailsServlet
 */
@WebServlet("/doctorViewPatientDetailsServlet")
public class doctorViewPatientDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String patientName=request.getParameter("name");
		var bo=new BookAppointmentBo();
		HttpSession session=request.getSession();
		try {
			var list=bo.viewparticularpatient(patientName);
			if(!list.isEmpty()) {
				session.setAttribute("list6", list);
			}else {
				session.setAttribute("no","There is no patients");
			}
		} catch (Usernamenotfoundexception e) {
			session.setAttribute("no","There is no patients");
		}
		response.sendRedirect("doctor.jsp");
		
		
		
		
		
	}

}
