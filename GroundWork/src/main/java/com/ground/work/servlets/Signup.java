package com.ground.work.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.DB.DBConnect;
import com.ground.work.dao.UserDAO;
//import com.ground.work.dao.DBConnection;
import com.ground.work.entities.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@MultipartConfig
@WebServlet("/signup")
public class Signup extends HttpServlet {
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String about = request.getParameter("about");

		User us = new User();
		us.setUsername(username);
		us.setEmail(email);
		us.setPassword(password);
		us.setGender(gender);
		us.setAbout(about);

		UserDAO dao = new UserDAO(DBConnect.getConnection());
		boolean f = dao.userRegister(us);
		if (true) {
//			PrintWriter out = response.getWriter();
//			out.print("Data insert successfully");
			HttpSession session=request.getSession();
			session.setAttribute("reg-msg", "Registration Successfully"+" ");
			response.sendRedirect("Register_page.jsp");
		} else {
			HttpSession session=request.getSession();
			session.setAttribute("error-msg", "something went wrong");
			response.sendRedirect("Register_page.jsp");
			
//			PrintWriter out = response.getWriter();
//			out.println("Data not insert");
		}
		
		
		try {

			Connection conn = DBConnect.getConnection();
			PreparedStatement ps = conn.prepareStatement("INSERT INTO users (username,email,password,gender,about) VALUES (?, ?, ?,?,?)");
			ps.setString(1, username);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, gender);
			ps.setString(5, about);
			ps.executeUpdate();

			conn.close();
			response.sendRedirect("Login_page.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
