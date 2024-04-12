package com.org.ims;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/reg")
public class Registration extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String name = req.getParameter("name");
	String mobile = req.getParameter("mobile");
	String email = req.getParameter("email");
	String password = req.getParameter("password");
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb_ims","root","root");
		PreparedStatement pst = con.prepareStatement("insert into user_register(name,mobile,email,password) values (?,?,?,?)");
		pst.setString(1, name);
		pst.setString(2, mobile);
		pst.setString(3, email);
		pst.setString(4, password);
		
		pst.executeUpdate();
		
		resp.sendRedirect("login.jsp");
		pst.close(); 
		
		
	} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}
	
}
}
