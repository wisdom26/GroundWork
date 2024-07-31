<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>

	<!-- //banner -->
	<div class="container-fluid m-0 p-0 primary-background banner-background">
		<div class="jumbotron primary-background text-white">
			<div class="container">
				<h3 class="display-3">Welcome to Social Impact Incubator</h3>
				<p>The objective of creating a Startup Incubator website is to
					provide a platform that supports and nurtures startups and projects
					aimed at creating positive social change. The website will
					facilitate connections between entrepreneurs, mentors, investors,
					and other stakeholders. The primary goals include:</p>
				<!--<p>A business incubator is an organization that helps startup
					companies and individual entrepreneurs to develop their businesses
					by providing a fullscale range of services, starting with
					management training and office space, and ending with venture
					capital financing.</p>
				  <p>We aim to address this issue by establishing an incubator
					program that provides a supportive environment for start-ups to
					grow and thrive. This program will offer resources such as
					workspace, access to funding, and networking opportunities to help
					entrepreneurs turn their ideas into viable businesses.</p>-->
				<button class="btn btn-outline-light btn-lg bg-success">
					<span class="fa fa-line-chart "></span><BR>I AM A STARTUP
				</button>
				<button class="btn btn-outline-light btn-lg bg-primary">
					<span class="fa fa-handshake-o "></span><BR>I AM AN INVESTOR
				</button>
				
			</div>
		</div>
	</div>
	
	<!-- cards -->
	<div class="container ">
		<div class="row mb-5">
			<div class="col-md-4">
				<div class="card ">
					<div class="card-body primary-background text-white text-center">
						<h5 class="card-title ">Startups</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="Startups.jsp" class="btn btn-primary">read more</a>
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card">
					<div class="card-body primary-background text-white text-center">
						<h5 class="card-title">Investors</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">read more</a>
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card">
					<div class="card-body primary-background text-white text-center">
						<h5 class="card-title">partners</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">read more</a>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<div class="card-body primary-background text-white text-center">
						<h5 class="card-title">Events</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">read more</a>
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card">
					<div class="card-body primary-background text-white text-center">
						<h5 class="card-title">Our Program</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">read more</a>
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card">
					<div class="card-body primary-background text-white text-center">
						<h5 class="card-title">Who we are</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="about.jsp" class="btn btn-primary">read more</a>
					</div>
				</div>
			</div>
		</div>
	</div>





<%@include file="footer.jsp"%>