package com.medical.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medical.dao.BookAppointmentDao;
import com.medical.exception.Usernamenotfoundexception;

/**
 * Servlet implementation class DeleteAppointmentServlet
 */
@WebServlet("/DeleteAppointmentServlet")
public class DeleteAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String username=request.getParameter("username");
		String appointmentdate=request.getParameter("appointmentdate");
		String timeslot=request.getParameter("timeslot");
		var bkdao=new BookAppointmentDao();
		HttpSession session=request.getSession();
		try {
		    boolean a = bkdao.cancel(username,appointmentdate,timeslot);
		    if (!a) {
		        session.setAttribute("no", "Your not booking any appointment ");
		    } else {
		        session.setAttribute("ok", "Appointment cancelled successfully.");
		    }
		} catch (Usernamenotfoundexception e) {
		    session.setAttribute("no", "Your not booking any appointmen");
		}
		
		response.sendRedirect("patient.jsp");
	}
		
	
	
	
	

	
}
