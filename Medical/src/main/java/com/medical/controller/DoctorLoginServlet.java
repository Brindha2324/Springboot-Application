package com.medical.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medical.bean.Doctorlogin;
import com.medical.bean.User;
import com.medical.business.DoctorLoginBo;
import com.medical.business.LoginBo;

/**
 * Servlet implementation class DoctorLoginServlet
 */
@WebServlet("/DoctorLoginServlet")
public class DoctorLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		    String name=request.getParameter("username");
			String password=request.getParameter("password");
			
			PrintWriter out=response.getWriter();
			
			var doctor=new Doctorlogin(name,password);
			
			var loginBo=new DoctorLoginBo();
			
			HttpSession session=request.getSession();
			
			if(loginBo.validateDoctor(doctor)) {
				session.setAttribute("name", doctor.username());
				getServletContext().setAttribute("aa", name);
			
				response.sendRedirect("doctor.jsp");
				
			}else {
			session.setAttribute("error", "Invalid username or password");
			
			response.sendRedirect("doctorlogin.jsp");
			}
		}
	

}
