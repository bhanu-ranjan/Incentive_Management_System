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
@WebServlet("/show")

public class DisplayHoliday extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	resp.setContentType("text/html");
	PrintWriter out = resp.getWriter();
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb_ims","root","root");
		Statement stmt = con.createStatement();
		String sql="Select * from add_holiday";
		ResultSet res = stmt.executeQuery(sql);
		
		out.println("<!DOCTYPE html>");
		 out.println("<html><body><table style='border-collapse:collapse; width:100%;'><caption style='text-align:center'><h3>Holiday Package</h3></caption>");
		 out.println("<thead><tr style=' background-color: #f2f2f2;'>");      
         out.println("<th style='background-color: #f2f2f2;font-weight: bold;'>ID.No</th>");
         out.println("<th style='background-color: #f2f2f2;font-weight: bold;'>Name</th>");
         out.println("<th style='background-color: #f2f2f2;font-weight: bold;'>Duration (Days)</th>");
         out.println("<th style='background-color: #f2f2f2;font-weight: bold;'>Destination</th>");
         out.println("<th style='background-color: #f2f2f2;font-weight: bold;'>Location</th>");
         out.println("<th style='background-color: #f2f2f2;font-weight: bold;'>Amenties</th>");
         out.println("</tr></thead>");
         
         while (res.next()) {
        	 
             out.println("<tbody><tr style=' background-color: #f2f2f2;'>");
             out.println("<td style='border: 1px solid #dddddd;padding: 8px;text-align: center;'>" + res.getString("id") + "</td>");
             out.println("<td style='border: 1px solid #dddddd;padding: 8px;text-align: center;'>" + res.getString("name") + "</td>");
             out.println("<td style='border: 1px solid #dddddd;padding: 8px;text-align: center;'>" + res.getString("duration") + "</td>");
             out.println("<td style='border: 1px solid #dddddd;padding: 8px;text-align: center;'>" + res.getString("destination") + "</td>");
             out.println("<td style='border: 1px solid #dddddd;padding: 8px;text-align: center;'>" + res.getString("location") + "</td>");
             out.println("<td style='border: 1px solid #dddddd;padding: 8px;text-align: center;'>" + res.getString("amenties") + "</td>");
             out.println("</tr></tbody>");
         }
         
         out.println("</table><div style='display:flex; flex-direction: column; align-items: center; margin-top: 20px; '>");
         out.println("<form action=\"delete\"  method=\"post\">");
         out.println("<input type='number' placeholder='enter the id to delete' name='id' required style=' width: 300px; padding: 10px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; ' />");
         out.println("<button type=\"submit\" style=' padding: 10px 20px; background-color: #007bff; color: #fff;  border: none; border-radius: 5px; cursor: pointer;'>Delete Holiday</button>");
         out.println("</form></div></body></html>");
         con.close();
		
		
	} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}
	
}
}






