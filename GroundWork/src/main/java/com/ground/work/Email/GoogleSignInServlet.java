package com.ground.work.Email;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/GoogleSignIn")
public class GoogleSignInServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String imageUrl = request.getParameter("imageUrl");

        // Save user data to the database
        saveUserToDatabase(name, email, imageUrl);

        // Start a session and store user data
        jakarta.servlet.http.HttpSession session = request.getSession();
        session.setAttribute("userName", name);
        session.setAttribute("userEmail", email);
        session.setAttribute("userImageUrl", imageUrl);

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        // Send a response back to the user
        response.getWriter().write("<html><body>");
        response.getWriter().write("<h1>Welcome " + name + "</h1>");
        response.getWriter().write("<img src='" + imageUrl + "' alt='Profile Picture'>");
        response.getWriter().write("<p>Email: " + email + "</p>");
        response.getWriter().write("</body></html>");
    }

    private void saveUserToDatabase(String name, String email, String imageUrl) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
          
            conn =DBConnect.getConnection();

            // Execute SQL query
            String sql = "INSERT INTO users (name, email, imageUrl) VALUES (?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, imageUrl);

            pstmt.executeUpdate();
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            // Clean-up environment
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
}
