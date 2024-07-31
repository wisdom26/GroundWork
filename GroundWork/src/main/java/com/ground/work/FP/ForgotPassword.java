package com.ground.work.FP;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.UUID;

import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/forgotPassword")
public class ForgotPassword extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");

        try (Connection conn = DBConnect.getConnection()) {
            String query = "SELECT * FROM users WHERE email = ?";
            try (PreparedStatement ps = conn.prepareStatement(query)) {
                ps.setString(1, email);
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        // Generate reset token (for simplicity, using UUID)
                        String token = UUID.randomUUID().toString();

                        // Save token to database with expiration time
                        String updateQuery = "UPDATE users SET reset_token = ?, reset_token_expiry = ? WHERE email = ?";
                        try (PreparedStatement updatePs = conn.prepareStatement(updateQuery)) {
                            updatePs.setString(1, token);
                            updatePs.setTimestamp(2, new Timestamp(System.currentTimeMillis() + 3600000)); // 1 hour expiry
                            updatePs.setString(3, email);
                            updatePs.executeUpdate();
                        }

                        // Send reset email (email sending code not included)
                        String resetLink = "http://localhost:8080/GroundWorkP/resetPassword?token=" + token;
                        // Email sending code goes here

                        // Provide feedback to user
                        response.setContentType("text/html");
                        response.getWriter().println("<html>");
                        response.getWriter().println("<body>");
                        response.getWriter().println("<script type='text/javascript'>");
                        response.getWriter().println("alert('Password reset link has been sent to your email.');");
                        response.getWriter().println("window.location.href = 'Login_page.jsp';");
                        response.getWriter().println("</script>");
                        response.getWriter().println("</body>");
                        response.getWriter().println("</html>");
                    } else {
                        response.setContentType("text/html");
                        response.getWriter().println("<html>");
                        response.getWriter().println("<body>");
                        response.getWriter().println("<script type='text/javascript'>");
                        response.getWriter().println("alert('Email not found.');");
                        response.getWriter().println("window.location.href = 'forgotPassword.jsp';");
                        response.getWriter().println("</script>");
                        response.getWriter().println("</body>");
                        response.getWriter().println("</html>");
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while processing your request.");
        }
    }
}
