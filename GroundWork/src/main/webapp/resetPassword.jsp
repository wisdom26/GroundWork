<%@ include file="header.jsp" %>
<div class="container mt-3">

<h2>Reset Password</h2>
	<form action="resetPassword" method="post">
		<input type="hidden" name="token" value="${param.token}">
		<label for="password">New Password:</label>
		<input type="password" id="password" name="password" required>
		<input type="submit" value="Reset Password">
	</form>
	</div>
<%@ include file="footer.jsp" %>