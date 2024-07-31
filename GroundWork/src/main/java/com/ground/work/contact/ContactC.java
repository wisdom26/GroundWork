package com.ground.work.contact;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Contact")
public class ContactC extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");

		try {
			Connection conn = DBConnect.getConnection();
			PreparedStatement ps = conn.prepareStatement("INSERT INTO contactus (name,email,message) VALUES (?, ?, ?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, message);
			ps.executeUpdate();

			conn.close();
			response.sendRedirect("Login_page.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
