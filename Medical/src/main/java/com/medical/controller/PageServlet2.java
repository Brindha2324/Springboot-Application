package com.medical.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medical.bean.Seminar;
import com.medical.dao.BookAppointmentDao;
import com.medical.dao.SeminarDao;

/**
 * Servlet implementation class PageServlet2
 */
@WebServlet("/PageServlet2")
public class PageServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String name=request.getParameter("name");
		
		HttpSession session=request.getSession();
		session.setAttribute("page", name);
		
		
		if(name.equals("noofdoctors")) {
		 var BookAppointmentDao= new BookAppointmentDao();
		 int counting=BookAppointmentDao.countDoctors();
         session.setAttribute("doctorCount", counting);

		}
		
		
		if(name.equals("noofpatients")) {
			 var BookAppointmentDao= new BookAppointmentDao();
			 int counting=BookAppointmentDao.countPatients();
	         session.setAttribute("patientCount", counting);

			}
		response.sendRedirect("admin.jsp");
	}

}
