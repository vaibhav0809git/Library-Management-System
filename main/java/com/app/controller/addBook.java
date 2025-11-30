package com.app.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.app.dao.LibraryDAO;
import com.app.model.Books;

/**
 * Servlet implementation class addBook
 */
public class addBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		  Books b = new Books();
	        b.setTitle(request.getParameter("title"));
	        b.setAuthor(request.getParameter("author"));
	        b.setAvailable(Integer.parseInt(request.getParameter("available")));

	        int i = LibraryDAO.addBook(b);
	        
	        if(i > 0) {
	        List<Books> list = LibraryDAO.getAllBooks();
	        request.setAttribute("books", list);

	       request.getRequestDispatcher("dashboardAdmin.jsp").forward(request, response);
	        }else {
	        	response.sendRedirect("error.jsp");
	        }
//	        
//	            response.sendRedirect("dashboard.jsp");
//	        else
//	            response.sendRedirect("error.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
