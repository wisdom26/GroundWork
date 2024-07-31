package com.ground.work.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.DB.DBConnect;
//import com.ground.work.dao.DBConnection;
import com.ground.work.dao.UserDAO;
import com.ground.work.entities.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/login")
public class Login extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");		
		try {
			Connection conn = DBConnect.getConnection();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM users WHERE email = ? AND password = ?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				response.sendRedirect("profile.jsp");
			} else {
				
				response.sendRedirect("Login_page.jsp");
				
				
			}

			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
