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
import com.medical.dao.SeminarDao;



/**
 * Servlet implementation class PageServlet1
 */
@WebServlet("/PageServlet1")
public class PageServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name=request.getParameter("name");
		
		HttpSession session=request.getSession();
		session.setAttribute("page", name);
		
		if(name.equals("seminardetails")) {
			var seminardao=new SeminarDao();
			List<Seminar> list=seminardao.getAll();
			session.setAttribute("list", list);
			
			}
		response.sendRedirect("doctor.jsp");
	}


}
