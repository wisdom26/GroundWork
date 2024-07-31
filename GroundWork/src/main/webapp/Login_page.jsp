<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@include file="header.jsp" %> 

<main class="d-flex align-items-center primary-background banner-background" style="height: 90vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header primary-background text-white text-center">
                                <span class="fa fa-user-plus fa-3x"></span><br>
                                <p>Login here</p>
                            </div>
                            
                            <div class="card-body">
                                <form action="login" method="POST">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>
                                    <div class="container text-center">
                                        <button type="submit" class="btn btn-primary">Login</button>
                                    </div> 
                                    <a href="forgotPassword.jsp">Forgot Password?</a>                                  
                                    <div class="nav-item">                                    
                                         <a class="nav-link text-primary font-weight-bold text-center" href="Register_page.jsp">Register here!</a>
                                    </div>                                   
                                     <div class="nav-item">
                                         <a class="nav-link text-primary font-weight-bold text-center" href="googleauth.jsp">Sign in with google</a>
                                    </div>
                                </form>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </main>
     <%@include file="footer.jsp"%>