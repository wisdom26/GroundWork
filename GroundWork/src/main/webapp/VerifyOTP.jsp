<%@include file="header.jsp"%>
    <h2>Verify OTP</h2>
    <form action="verifyOTP" method="post">
        <label for="email">Enter your email:</label>
        <input type="email" id="email" name="email" required>
        <label for="otp">Enter OTP:</label>
        <input type="text" id="otp" name="otp" required>
        <button type="submit">Verify OTP</button>
    </form>
    <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
            out.println("<p>" + message + "</p>");
        }
    %>
<%@include file="footer.jsp"%>