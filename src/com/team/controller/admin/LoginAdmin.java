package com.team.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team.dao.impl.AdminDaoImpl;
import com.team.model.Admin;

/**
 * Servlet implementation class LoginAdmin
 */

public class LoginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginAdmin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Admin admin = new AdminDaoImpl().getLogin(username, password);
		if (admin == null) {
			request.setAttribute("error", "Wrong password, please try again!");
			request.getRequestDispatcher("/admin/Login.jsp").forward(request, response);

		} else {
			HttpSession session = request.getSession();
			/*
			 * when setAttribute the name of attribute must be different from the value
			 * 
			 */
			session.setAttribute("admin_", admin);
			response.sendRedirect(request.getContextPath() + "/admin/homepage");
		}

		doGet(request, response);
	}

}
