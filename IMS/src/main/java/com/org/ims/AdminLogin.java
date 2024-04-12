package com.org.ims;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/admn")
public class AdminLogin extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String email = req.getParameter("email");
	String password = req.getParameter("password");

	PrintWriter out=resp.getWriter();
	if(email.equals("admin@gmail.com") && password.equals("admin"))
	{
		resp.sendRedirect("admin_home.jsp");
	}
	else
	{
		resp.sendRedirect("error.jsp" );
	}
}
}
