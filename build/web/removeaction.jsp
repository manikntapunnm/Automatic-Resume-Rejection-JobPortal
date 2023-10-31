<%-- 
    Document   : removeaction
    Created on : 28-Aug-2023, 5:44:33 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Dbconn.dbconn"%>
<%--
    String jobid = request.getParameter("jobid");
    
    try {
         Connection con = new Dbconn.dbconn().getConnection();
        Statement st = con.createStatement();
        
        int rowsAffected = st.executeUpdate("DELETE FROM jobs WHERE jobid='" + jobid + "'");
        
        if (rowsAffected > 0) {
            request.getSession().setAttribute("msg", "ID removed successfully.");
        } else {
            request.getSession().setAttribute("msg", "Failed to remove ID.");
        }
        response.sendRedirect("company-mang-jobs.jsp");
    } catch (Exception e) {
        e.printStackTrace();
        out.println(e);
    }
--%>
<%
    String jobid = request.getParameter("jobid");
    
    try {
        Connection con = new Dbconn.dbconn().getConnection();
        Statement st = con.createStatement();
        
        int rowsAffected = st.executeUpdate("UPDATE jobs SET status='Declined' WHERE jobid='" + jobid + "'");
        
        if (rowsAffected > 0) {
            request.getSession().setAttribute("msg", "Status updated successfully.");
        } else {
            request.getSession().setAttribute("msg", "Failed to update status.");
        }
        response.sendRedirect("company-mang-jobs.jsp");
    } catch (Exception e) {
        e.printStackTrace();
        out.println(e);
    }
%>
