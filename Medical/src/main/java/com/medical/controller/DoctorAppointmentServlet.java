package com.medical.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medical.business.BookAppointmentBo;
import com.medical.business.DoctorBo;
import com.medical.exception.NoAppointmentexception;
import com.medical.exception.Usernamenotfoundexception;

/**
 * Servlet implementation class DoctorAppointmentServlet
 */
@WebServlet("/DoctorAppointmentServlet")
public class DoctorAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String appointmentdate=request.getParameter("appointmentdate");
		String doctorlist=request.getParameter("doctorlist");
		var bo=new DoctorBo();
		HttpSession session=request.getSession();
		try {
			var list=bo.viewapp1(appointmentdate,doctorlist);
			if(!list.isEmpty()) {
				session.setAttribute("list5", list);
			}else {
				session.setAttribute("no","No Appointment found on this day");
			}
		} catch (NoAppointmentexception e) {
			session.setAttribute("no","No Appointments found on this day");
		}
		response.sendRedirect("doctor.jsp");
	}

	
}
