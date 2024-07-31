package com.ground.work.Mentor;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/search")
public class MentorS extends HttpServlet {
    private List<Mentor> mentors;

    @Override
    public void init() {
        mentors = new ArrayList<>();
        mentors.add(new Mentor("Vivek", "Technology", "JavaScript, React", "mentor1.jpg", "Vivek has over 10 years of experience in web development, specialising in JavaScript and React...", "Vivek@gmail.com"));
        mentors.add(new Mentor("Vivek Kumar", "Business", "Marketing, Management", "mentor2.jpg", "Vivek Kumar is an experienced business consultant with a focus on marketing and management...", "Vivek.kumar@gmail.com"));
        // Add more mentors as needed
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String query = request.getParameter("query") != null ? request.getParameter("query").toLowerCase() : "";
        String industry = request.getParameter("industry") != null ? request.getParameter("industry") : "";

        List<Mentor> filteredMentors = new ArrayList<>();
        for (Mentor mentor : mentors) {
            if ((mentor.getName().toLowerCase().contains(query) || query.isEmpty()) &&
                (mentor.getIndustry().equals(industry) || industry.isEmpty())) {
                filteredMentors.add(mentor);
            }
        }

        // New code: Creating a separate list of mentors, setting a photo, and adding it to request attributes
        List<Mentor> mentorsList = new ArrayList<>();
        Mentor mentor = new Mentor("John Doe", "Science", "Physics, Chemistry", "photoURL", "John Doe is a well-known science mentor with expertise in Physics and Chemistry.", "john.doe@example.com");
        mentorsList.add(mentor);
        request.setAttribute("mentorsList", mentorsList);

        request.setAttribute("mentors", filteredMentors);
        request.getRequestDispatcher("/Mentors.jsp").forward(request, response);
    }
    

    private static class Mentor {
        private String name;
        private String industry;
        private String expertise;
        private String photo;
        private String bio;
        private String contact;

        public Mentor(String name, String industry, String expertise, String photo, String bio, String contact) {
            this.name = name;
            this.industry = industry;
            this.expertise = expertise;
            this.photo = photo;
            this.bio = bio;
            this.contact = contact;
        }

        // Getters
        public String getName() { return name; }
        public String getIndustry() { return industry; }
        public String getExpertise() { return expertise; }
        public String getPhoto() { return photo; }
        public String getBio() { return bio; }
        public String getContact() { return contact; }

        // Setters (if needed)
        public void setName(String name) { this.name = name; }
        public void setIndustry(String industry) { this.industry = industry; }
        public void setExpertise(String expertise) { this.expertise = expertise; }
        public void setPhoto(String photo) { this.photo = photo; }
        public void setBio(String bio) { this.bio = bio; }
        public void setContact(String contact) { this.contact = contact; }
    }
}