<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Css/about.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Css/mentor.css">
<link href="Css/mystyle.css" rel="stylesheet">

 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.3/font/bootstrap-icons.min.css" rel="stylesheet">
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="UTF-8">
<title>✨Lading page</title>
</head>
<body>
<header>
<nav class="navbar navbar-expand-lg navbar-light bg-light primary-background">
  <a class="navbar-brand text-light font-weight-bold" href="index.jsp"><span class="fa fa-asterisk"></span>Ground Work!</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link text-light font-weight-bold" href="#"><span class="fa fa-bell-o"></span>social Incubator<span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-light font-weight-bold" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="Startups.jsp">Startups </a>
          <a class="dropdown-item" href="#">Investors</a>
          <a class="dropdown-item" href="Mentors.jsp">Mentors</a>
          <a class="dropdown-item" href="#">Latest news</a>
          <a class="dropdown-item" href="#">Events</a>
          <a class="dropdown-item" href="#">Our programs</a>
          <a class="dropdown-item" href="about.jsp">Who we are</a>
          <a class="dropdown-item" href="contact.jsp">Contact Us</a>
         
        </div>
    </ul>
    <form class="form-inline my-2 my-lg-0">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link text-light font-weight-bold " href="#"><span class="fa fa-line-chart  "></span>I AM STARTUP</a>
      </li>
       <li class="nav-item">
        <a class="nav-link text-light font-weight-bold" href="#"><span class="fa fa-handshake-o"></span>I WANT TO INVEST</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light font-weight-bold" href="#"><span class="fa fa-user-circle"></span>EXPLORE OUR PROGRAMS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light font-weight-bold" href="Register_page.jsp"><span class="fa fa-share-alt"></span>JOIN OUR STARTUPS</a>
      </li>
      </ul>
    </form>
      <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link text-light font-weight-bold" href="Login_page.jsp"><span class="fa fa-bell-o"></span>LogIn<span class="sr-only">(current)</span></a>
  
      </li>
    </ul>
  </div>
</nav>
</header>