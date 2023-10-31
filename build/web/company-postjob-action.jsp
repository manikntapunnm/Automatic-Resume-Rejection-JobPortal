<%-- 
    Document   : job-post-action
    Created on : 17-Aug-2023, 8:23:40 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="Dbconn.dbconn"%>

<%
try {
    // Retrieve form data
    String jobNature = request.getParameter("jobNature");
    String salary = request.getParameter("salary");
    String job = request.getParameter("job");
    String experienceEducation = request.getParameter("experienceEducation");
    String skills = request.getParameter("skills");
    String description = request.getParameter("description");
   

    // Retrieve company name from session
    HttpSession esession = request.getSession();
    String companyName = (String) session.getAttribute("companyName");
    out.println(companyName);
    // Get database connection
    Connection connection = new Dbconn.dbconn().getConnection();

    // Retrieve the company ID based on the company name from the session
    int companyId = -1; // Default value
    PreparedStatement companyStatement = connection.prepareStatement("SELECT companyid FROM company WHERE company = ?");
    companyStatement.setString(1, companyName);
    ResultSet companyResultSet = companyStatement.executeQuery();
    if (companyResultSet.next()) {
        companyId = companyResultSet.getInt("companyid");
    }
    companyResultSet.close();
    companyStatement.close();

    // Insert the new job into the jobs table using the retrieved company ID
    PreparedStatement insertStatement = connection.prepareStatement("INSERT INTO jobs (jobnature, salary, job, experience_education, skills, description, companyid) VALUES (?, ?, ?, ?, ?, ?, ?)");
    insertStatement.setString(1, jobNature);
    insertStatement.setString(2, salary);
    insertStatement.setString(3, job);
    insertStatement.setString(4, experienceEducation);
    insertStatement.setString(5, skills);
    insertStatement.setString(6, description);
    insertStatement.setInt(7, companyId);

    int rowsInserted = insertStatement.executeUpdate();

    // Close database connection
    connection.close();

    // Redirect to a success page
    if (rowsInserted > 0) {
        session.setAttribute("job",job);
        session.setAttribute("msg", "Wait for Untill Admin Approval");
        response.sendRedirect("company-mang-jobs.jsp"); // Replace with your success page
    } else {
        response.sendRedirect("company-postjob.jsp"); // Replace with your failure page
    }
} catch (Exception e) {
    // Handle any exceptions
    out.print(e);
}
%>

