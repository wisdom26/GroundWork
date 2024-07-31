<%@include file="header.jsp"%>

	<main class="primary-background  banner-background"
		style="padding-bottom: 80px;">

		<div class="container">

			<div class="col-md-6 offset-md-3">

				<div class="card">
					<div class="card-header text-center primary-background text-white">
						<span class="fa fa-3x fa-user-circle"></span> <br> Register
						here
					</div>
					<%
					String regMsg = (String) session.getAttribute("reg-msg");
					if (regMsg != null) {
					%>

					<div class="alert alert-success" role="alert"><%=regMsg %>Login..<a href="Login_page.jsp">click here</a></div>

					<%
					}
					%>
					<div class="card-body">
						<form id="reg-form" action="signup" method="POST">

							<div class="form-group">
								<label for="username">User Name</label> <input name="username"
									type="text" class="form-control" id="username"
									placeholder="Enter name">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									name="email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter email"> <small id="emailHelp"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>



							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									name="password" type="password" class="form-control"
									id="exampleInputPassword1" placeholder="Password">
							</div>


							<div class="form-group">
								<label for="gender">Select Gender</label> <br> <input
									type="radio" id="gender" name="gender" value="male">Male
								<input type="radio" id="gender" name="gender" value="famale">Female
							</div>

							<div class="form-group">

								<textarea name="about" class="form-control" id="" rows="5"
									placeholder="Enter something about yourself"></textarea>

							</div>


							<div class="form-check">
								<input name="check" type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">agree terms and conditions</label>
							</div>

							<br>

							<div class="container text-center" id="loader"
								style="display: none;">
								<span class="fa fa-refresh fa-spin fa-4x"></span>
								<h4>Please wait..</h4>
							</div>

							<button id="sumbimt-btn" type="submit"
								class="btn btn-primary text-center font-weight-bold">SignUp</button>
							<div class="nav-item">
								<a class="nav-link text-primary font-weight-bold text-center"
									href="Login_page.jsp">If already have account?</a>
							</div>
						</form>

					</div>


				</div>




			</div>
		</div>

	</main>


<%@include file="footer.jsp"%>
