package com.org.ims;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/login")
public class Login extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String email=req.getParameter("email");
	String password=req.getParameter("password");
	resp.setContentType("text/html");
	PrintWriter out=resp.getWriter();
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb_ims","root","root");
		Statement stmt = con.createStatement();
		String sql="Select * from user_register where email='"+email+"'";
		ResultSet res = stmt.executeQuery(sql);
		if(res.next())
		{
			String pwd=res.getString("password");
			if(password.equals(pwd))
			{
				
				resp.sendRedirect("user_home.jsp");
			}
			else
			{
				resp.sendRedirect("error.jsp");
			}
		}
			else
			{
				resp.sendRedirect("error.jsp");
			}
		
		con.close();
		
	} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}
	
}
}
