package com.medical.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medical.business.BookAppointmentBo;
import com.medical.exception.Usernamenotfoundexception;

/**
 * Servlet implementation class ViewAppointmentServlet
 */
@WebServlet("/ViewAppointmentServlet")
public class ViewAppointmentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        var bo = new BookAppointmentBo();
        HttpSession session = request.getSession();
        try {
            var list = bo.viewapp(username);
            if (!list.isEmpty()) {
                session.setAttribute("list5", list);
            } else {
                session.setAttribute("no", "No products found with the given ProductId");
            }
        } catch (Usernamenotfoundexception e) {
            session.setAttribute("no", "No Appointments are booking");
        }
        response.sendRedirect("patient.jsp");
    }
}
