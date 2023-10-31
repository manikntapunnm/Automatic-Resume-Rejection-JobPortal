<%-- 
    Document   : action
    Created on : 25-Aug-2023, 8:36:05 pm
    Author     : manikanta


<!DOCTYPE html>
<html>
<head>
    <title>Index Action Page</title>
</head>
<body>
    <h2>Index Action Page</h2>
    
    <%
        // Get the value of the foundKeywords parameter
        String foundKeywords = request.getParameter("foundKeywords");
        out.println(foundKeywords );
        // Check if foundKeywords is not null and not empty before splitting
        String[] foundKeywordsArray = new String[0]; // Initialize with an empty array
        if (foundKeywords != null && !foundKeywords.isEmpty()) {
            foundKeywordsArray = foundKeywords.split(",");
        }
    %>
    
    <p>Found Keywords:</p>
    <ul>
        <% for (String keyword : foundKeywordsArray) { %>
            <li><%= keyword %></li>
        <% } %>
    </ul>
    
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>PDF Analysis Results</title>
</head>
<body>
    <h2>PDF Analysis Results</h2>
    <p>Found Keywords: <%= request.getParameter("foundKeywordsInput") %></p>
    <p>Unfound Keywords: <%= request.getParameter("unfoundKeywordsInput") %></p>
</body>
</html>


--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Form Submission Result</title>
</head>
<body>
    <h2>Form Submission Result</h2>
    
    <%-- Retrieve form parameters --%>
    <%
        String candidateFullname = request.getParameter("fullname");
        String education = request.getParameter("edu");
        String skills = request.getParameter("skills");
        String foundKeywords = request.getParameter("foundKeywordsInput");
        String unfoundKeywords = request.getParameter("unfoundKeywordsInput");
        String companyName = (String) session.getAttribute("ComapanyName");
        String email = (String) session.getAttribute("email");
        String job = (String) session.getAttribute("job");
        String jobNature = (String) session.getAttribute("jobnature");
    %>
    
    <p><strong>Candidate Fullname:</strong> <%= candidateFullname %></p>
    <p><strong>Education:</strong> <%= education %></p>
    <p><strong>Skills:</strong> <%= skills %></p>
    <p><strong>Found Keywords:</strong> <%= foundKeywords %></p>
    <p><strong>Unfound Keywords:</strong> <%= unfoundKeywords %></p>
    <p><strong>Company Name:</strong> <%= companyName %></p>
    <p><strong>Email:</strong> <%= email %></p>
    <p><strong>Job:</strong> <%= job %></p>
    <p><strong>Job Nature:</strong> <%= jobNature %></p>
</body>
</html>
