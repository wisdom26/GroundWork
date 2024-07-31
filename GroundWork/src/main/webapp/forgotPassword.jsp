<%@ include file="header.jsp" %>
<main class="d-flex align-items-center primary-background banner-background" style="height: 100vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <div class="card">
                            <div class="card-header primary-background text-white text-center">
                                <span class="fa fa-user-plus fa-3x"></span><br>
                                <p>Forgot Password</p>
                            </div>
                            <div class="card-body">
	                        <form action="forgotPassword" method="post">
		                        <div class="form-group">
                                       <label for="email">Email:</label>
                                       <input type="email" class="form-control" id="email" name="email" required>
                                  </div>
		                        <input type="submit" value="Submit">
	                        </form>
                         </div>
                      </div>
                   </div>
                  </div>
                </div>
             </main>

<%@ include file="footer.jsp" %>