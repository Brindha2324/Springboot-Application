package com.medical.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PageServlet
 */
@WebServlet("/PageServlet")
public class PageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
		
		String name=request.getParameter("name");
		
		HttpSession session=request.getSession();
		session.setAttribute("page", name);
		
		response.sendRedirect("patient.jsp");
		
//		if(name.equals("home")) {
//			
//			RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
//            dispatcher.include(request, response);
//		}
//		
//		response.sendRedirect("index.jsp");
//
//		
		
		}


}
