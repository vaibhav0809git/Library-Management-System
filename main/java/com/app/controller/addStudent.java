package com.app.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.app.dao.LibraryDAO;
import com.app.model.Student;

/**
 * Servlet implementation class addStudent
 */

public class addStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		        Student s = new Student();
		        s.setFname(request.getParameter("fname"));
		        s.setLname(request.getParameter("lname"));
		        s.setEmail(request.getParameter("email"));
		        s.setPassword(request.getParameter("password"));
		        s.setPrn(request.getParameter("prn"));
		        s.setMobile(request.getParameter("mobile"));

		        int i = LibraryDAO.addStudent(s);

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
