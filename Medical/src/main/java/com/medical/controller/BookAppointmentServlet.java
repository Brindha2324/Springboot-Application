package com.medical.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medical.bean.BookAppointment;
import com.medical.business.BookAppointmentBo;

/**
 * Servlet implementation class BookAppointmentServlet
 */
@WebServlet("/BookAppointmentServlet")
public class BookAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String appointmentdate=request.getParameter("appointmentdate");
		String timeslot=request.getParameter("timeslot");
		String doctorlist=request.getParameter("doctorlist");
		
		
		var bkapp=new BookAppointment(username,appointmentdate,timeslot,doctorlist);
		
		var bo=new BookAppointmentBo();
		HttpSession session=request.getSession();
		try {
			var a=bo.appointment(bkapp);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		session.setAttribute("ok","Appointment Booked successfully");
		response.sendRedirect("patient.jsp");

		}
		
	}


