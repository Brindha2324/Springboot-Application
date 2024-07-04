package com.medical.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medical.bean.User;
import com.medical.business.LoginBo;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
//In your LoginServlet.java
public class LoginServlet extends HttpServlet {
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
	 String name=request.getParameter("name");
		String password=request.getParameter("password");
		
		PrintWriter out=response.getWriter();
		
		var user=new User(name,password);
		
		var loginBo=new LoginBo();
		
		HttpSession session=request.getSession();
		
		if(loginBo.validateUser(user)) {
			session.setAttribute("name", user.username());
			getServletContext().setAttribute("aa", name);
		
			response.sendRedirect("patient.jsp");
			
		}else {
		session.setAttribute("error", "Please register your id and password");
		
		response.sendRedirect("patientlogin.jsp");
		}
	}

}
