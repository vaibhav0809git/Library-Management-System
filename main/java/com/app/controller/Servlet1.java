package com.app.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.app.dao.LibraryDAO;
import com.app.model.Admin;
import com.app.model.Student;

/**
 * Servlet implementation class Servlet1
 */
@WebServlet("/serv1")
public class Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		response.setContentType("text/html");
//		PrintWriter pw = response.getWriter();
//		
//		String ch = request.getParameter("select");
//		
//		
//		if(ch.equals("Student")) {
//			
//		
//		String prn = request.getParameter("prn");
//		String pass = request.getParameter("password");
//		
//
//        Student s = LibraryDAO.loginsev(prn,pass);
        
        
        
//        response.setContentType("text/html");
//        PrintWriter pw = response.getWriter();
//
//        String ch = request.getParameter("select");
//
//        if ("Student".equals(ch)) {
//
//            String prn = request.getParameter("prn");
//            String pass = request.getParameter("password");
//
//            Student s = LibraryDAO.loginsev(prn, pass);
//        
//       
//        if (s != null) {
//    //student soLd not e ull
//            HttpSession session = request.getSession();
//            session.setAttribute("student", s);
//
//            request.setAttribute("message", "Login Successful!!!");
//            response.sendRedirect("ViewBook");
//           
//
//        } else {
//           
//        	 request.setAttribute("message", "Login unSuccessful!");
//            pw.println("<h3>Invalid PRN or Password</h3>");
//           
//
//        }
//		}else if("Admin".equals(ch)) {
//			
//			 String em = request.getParameter("email");
//	            String pass = request.getParameter("password");
//	
//	            Admin s = LibraryDAO.loginsevAdmin(em, pass);
//	            
//	            
//	            if (s != null) {
//	        //student soLd not e ull
//	                HttpSession session = request.getSession();
//	                session.setAttribute("admin", s);
//
//	                request.setAttribute("message", "Login Successful!!!");
//	                response.sendRedirect("dashboard.jsp");
//	               
//
//	            } else {
//	               
//	            	 request.setAttribute("message", "Login unSuccessful!");
//	                pw.println("<h3>Invalid email or Password</h3>");
//	               
//
//	            }
//			
//		}else {
//			pw.write("invalid");
//		
//        }
		
		
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();

		String ch = request.getParameter("select");

		if ("Student".equals(ch)) {

		    String prn = request.getParameter("prn");
		    String pass = request.getParameter("password");

		    Student s = LibraryDAO.loginsev(prn, pass);

		    if (s != null) {
		        // Student login success
		        HttpSession session = request.getSession();
		        session.setAttribute("student", s);

		        // Store message (optional)
		        session.setAttribute("message", "Login Successful!!!");

		        // Redirect to servlet that loads books
		        response.sendRedirect("ViewBook");

		    } else {
		        // Login failed
		        request.setAttribute("message", "Login Failed! Invalid PRN or Password");

		        // Forward to login page again
		        request.getRequestDispatcher("index.jsp").forward(request, response);
		    }

		}
		else if ("Admin".equals(ch)) {

		    String email = request.getParameter("email");
		    String pass = request.getParameter("password");

		    Admin a = LibraryDAO.loginsevAdmin(email, pass);

		    if (a != null) {

		        HttpSession session = request.getSession();
		        session.setAttribute("admin", a);

		        session.setAttribute("message", "Admin Login Successful!!");

		        response.sendRedirect("ViewBook");

		    } else {
		        request.setAttribute("message", "Invalid Email or Password");
				/* request.getRequestDispatcher("ViewBook").forward(request, response); */
		        response.sendRedirect("ViewBookAdmin");
		    }
		}
		else {
		    pw.println("Invalid choice!");
		}

        
        
        
        
	}
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
