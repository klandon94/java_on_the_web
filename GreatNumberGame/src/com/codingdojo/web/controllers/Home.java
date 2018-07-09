package com.codingdojo.web.controllers;

import java.util.Random;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		if (request.getParameter("another") != null) {
			session.invalidate();
			response.sendRedirect("/GreatNumberGame/Home");
			return;
		}
		
		if (session.getAttribute("holy") == null && session.getAttribute("result") == null) {
			Random r = new Random();
			session.setAttribute("holy", 1 + r.nextInt(100));
			System.out.println(session.getAttribute("holy"));
			session.setAttribute("result", "");
		}
		
		request.setAttribute("result", (String) session.getAttribute("result"));
		request.setAttribute("holy", (int) session.getAttribute("holy"));
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/index.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String num = request.getParameter("num");
		
		if (num == "") session.setAttribute("result", "missing");
		else {
			int guess = Integer.parseInt(num);
			int holy = (int) session.getAttribute("holy");
			
			if (guess < holy) session.setAttribute("result", "less");
			else if (guess > holy) session.setAttribute("result", "more");
			else session.setAttribute("result", "equal");
		}
		response.sendRedirect("/GreatNumberGame/Home");
	}

}
