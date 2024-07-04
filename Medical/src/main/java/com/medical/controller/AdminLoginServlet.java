package com.medical.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medical.bean.Adminlogin;
import com.medical.bean.Doctorlogin;
import com.medical.business.AdminLoginBo;
import com.medical.business.DoctorLoginBo;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("username");
		String password=request.getParameter("password");
		
		PrintWriter out=response.getWriter();
		
		var admin=new Adminlogin(name,password);
		
		var loginBo=new AdminLoginBo();
		
		HttpSession session=request.getSession();
		
		if(loginBo.validateAdmin(admin)) {
			session.setAttribute("name", admin.username());
			getServletContext().setAttribute("aa", name);
		
			response.sendRedirect("admin.jsp");
			
		}else {
		session.setAttribute("error", "Invalid username or password");
		
		response.sendRedirect("adminlogin.jsp");
		}
	}
	

}
