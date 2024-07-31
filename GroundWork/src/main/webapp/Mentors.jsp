<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<h1>Mentors Page</h1>
<div class="search-filter">
        <form action="search" method="get">
            <input type="text" name="query" placeholder="Search for mentors...">
            <select name="industry">
                <option value="">All Industries</option>
                <option value="Technology">Technology</option>
                <option value="Business">Business</option>
                <option value="Healthcare">Healthcare</option>
                <!-- Add more industries as needed -->
            </select>
            <button type="submit">Search</button>
        </form>
    </div>

    <div class="mentor-directory">
         <h2>Mentor List</h2>
        <c:forEach var="mentor" items="${mentorsList}">
            <div class="mentor">
                <img src="img/${mentor.photo}" alt="${mentor.name}">
                <h3>${mentor.name}</h3>
                <p>Expertise: ${mentor.expertise}</p>
                <a href="mentors/${mentor.name.replaceAll(' ', '').toLowerCase()}.jsp">View Profile</a>
            </div>
        </c:forEach>
    </div>

<%@ include file="footer.jsp" %>