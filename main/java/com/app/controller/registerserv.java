package com.app.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class registerserv
 */
public class registerserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	    response.setContentType("text/html");
	    PrintWriter pw = response.getWriter();

		String ch = request.getParameter("select");

		// If nothing selected
		if (ch == null || ch.trim().equals("")) {
		    pw.write("Choose Option ");
		    return;      // IMPORTANT (stop execution)
		}

		// When Student is selected
		if ("Student".equals(ch)) {
		    response.sendRedirect("registerStudent.jsp");
		    return;
		}

		// When Admin is selected
		if ("Admin".equals(ch)) {
		    response.sendRedirect("registerAdmin.jsp");
		    return;
		}

		// Any invalid value
		pw.write("Invalid option selected");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
