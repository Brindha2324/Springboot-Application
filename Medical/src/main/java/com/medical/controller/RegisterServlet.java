package com.medical.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medical.constants.Queryconstants;
import com.medical.util.Dbutil;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("name");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        int age=Integer.valueOf(request.getParameter("age"));
        String gender=request.getParameter("gender");
        String contactNumber=request.getParameter("contactNumber");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        String city=request.getParameter("city");
        String zipCode=request.getParameter("zipCode");
        
        
        Connection conn=Dbutil.getConnection();

        try {
            PreparedStatement preparedStatement = conn.prepareStatement(Queryconstants.REGISTER_SQL);

            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            int rowsInserted = preparedStatement.executeUpdate();

            if (rowsInserted > 0) {
            	response.sendRedirect("patientlogin.jsp");
            } 
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(Queryconstants.REGISTER_PATIENT_SQL);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            preparedStatement.setString(3, firstName);

            preparedStatement.setString(4, lastName);

            preparedStatement.setInt(5, age);

            preparedStatement.setString(6, gender);

            preparedStatement.setString(7,contactNumber);

            preparedStatement.setString(8, email);

            preparedStatement.setString(9, address);

            preparedStatement.setString(10, city);

            preparedStatement.setString(11, zipCode);

            int rowsInserted = preparedStatement.executeUpdate();

            if (rowsInserted > 0) {
            	response.sendRedirect("patientlogin.jsp");
            } 
        }catch(Exception e) {
        	e.printStackTrace();
        }
        
        
        
    }

	}


