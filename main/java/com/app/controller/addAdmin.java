package com.app.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.app.dao.LibraryDAO;
import com.app.model.Admin;
import com.app.model.Student;

/**
 * Servlet implementation class addAdmin
 */
public class addAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Admin m = new Admin();
		
		m.setFname(request.getParameter("fname"));
		m.setLname(request.getParameter("lname"));
		m.setEmail(request.getParameter("email"));
		m.setPassword(request.getParameter("password"));
	
		
		
		

	        int i = LibraryDAO.addAdmin(m);

	        if (i > 0)
	            response.sendRedirect("index.html");
	        else
	            response.sendRedirect("error.jsp");
	    
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
