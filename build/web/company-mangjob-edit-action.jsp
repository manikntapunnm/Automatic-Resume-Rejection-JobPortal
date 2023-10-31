<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.net.URLEncoder" %>

<%
Connection con = null;
Statement st = null;

try {
    // Retrieve form data
    String jobNature = request.getParameter("jobNature");
    String salary = request.getParameter("salary");
    String job = request.getParameter("job");
    String jobid = request.getParameter("jobid");
    String experienceEducation = request.getParameter("experienceEducation");
    String skills = request.getParameter("skills");
    String description = request.getParameter("description");
    out.println(jobNature);
    out.println(salary);
    out.println(job);
    out.println(experienceEducation);
    out.println(skills);
    out.println(description);
    
    
    con = new Dbconn.dbconn().getConnection();
    st = con.createStatement();
    
    PreparedStatement ps = con.prepareStatement("UPDATE jobs SET jobnature=?, salary=?, job=?, experience_education=?, skills=?, description=? WHERE jobid=?");
    ps.setString(1, jobNature);
    ps.setString(2, salary);
    ps.setString(3, job);
    ps.setString(4, experienceEducation);
    ps.setString(5, skills);
    ps.setString(6, description);
    ps.setString(7, jobid);

    int rowsUpdated = ps.executeUpdate();

    // Redirect to a success page
    if (rowsUpdated > 0) {
        session.setAttribute("msg", "Success");
        response.sendRedirect("company-mangjob-edit.jsp?jobid=" + jobid); // Replace with your success page
    } else {
    session.setAttribute("msg", "Error");
    
        response.sendRedirect("company-mang-jobs.jsp"); // Replace with your failure page
    }

} catch (Exception e) {
    e.printStackTrace();
  
} finally {
    // Close the resources in the reverse order of their creation
    try {
        if (st != null) {
            st.close();
        }
        if (con != null) {
            con.close();
        }
    } catch (SQLException ex) {
        ex.printStackTrace();
    }
}
%>
