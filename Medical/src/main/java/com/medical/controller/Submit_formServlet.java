package com.medical.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medical.bean.SubmitForm;
import com.medical.business.BookAppointmentBo;
import com.medical.business.SubmitFormBo;

/**
 * Servlet implementation class Submit_formServlet
 */
@WebServlet("/Submit_formServlet")
public class Submit_formServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String full_name=request.getParameter("full_name");
		String email=request.getParameter("email");
		String subject=request.getParameter("subject");
		String message=request.getParameter("message");
		
		var form=new SubmitForm(full_name,email,subject,message);
		var bo=new SubmitFormBo();
		HttpSession session=request.getSession();
		try {
			var a=bo.submit(form);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		session.setAttribute("ok","Your Feedback is submitted successfully!!");
		response.sendRedirect("contactus.jsp");
		
	}


}
