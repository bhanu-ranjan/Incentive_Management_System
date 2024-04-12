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
import javax.servlet.http.HttpSession;
@WebServlet("/add")
public class AddHoliday extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String name = req.getParameter("holiday-name");
	String duration = req.getParameter("holiday-duration");
	String destination = req.getParameter("holiday-destination");
	String location = req.getParameter("holiday-location");
	String amenties = req.getParameter("holiday-amenities");
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb_ims","root","root");
		PreparedStatement pst = con.prepareStatement("insert into add_holiday(name,duration,destination,location,amenties) values (?,?,?,?,?)");
		pst.setString(1, name);
		pst.setString(2, duration);
		pst.setString(3, destination);
		pst.setString(4, location);
		pst.setString(5, amenties);
		
		int result=pst.executeUpdate();
		if(result==1)
		{
			resp.sendRedirect("admin_home.jsp");
		}
		else
		{
			resp.sendRedirect("error.jsp");
		}
		
		HttpSession session = req.getSession();
		
		
	} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}
	
	
}
}
