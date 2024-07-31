package com.ground.work.FP;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/verifyOTP")
public class VerifyOTP extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String otp = request.getParameter("otp");

        try (Connection conn = DBConnect.getConnection()) {
            PreparedStatement ps = conn.prepareStatement("SELECT otp, otp_expiry FROM users WHERE email = ?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String storedOtp = rs.getString("otp");
                Timestamp otpExpiry = rs.getTimestamp("otp_expiry");

                if (storedOtp != null && storedOtp.equals(otp) && otpExpiry != null && otpExpiry.after(new Timestamp(System.currentTimeMillis()))) {
                    // OTP is valid
                    response.getWriter().println("OTP is valid.");
                } else {
                    response.getWriter().println("Invalid or expired OTP.");
                }
            } else {
                response.getWriter().println("Email not found.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred.");
        }
    }
}
