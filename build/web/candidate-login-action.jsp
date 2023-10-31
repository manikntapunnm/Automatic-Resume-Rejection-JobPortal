<%-- 
    Document   : candidate-login-action
    Created on : 16-Aug-2023, 4:22:38 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="Dbconn.dbconn"%>

<%
try {
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    Connection connection = new Dbconn.dbconn().getConnection();
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery("SELECT * FROM candidates WHERE email='" + email + "' AND password='" + password + "'");
    
    if (resultSet.next()) {
        session.setAttribute("email", email);
        session.setAttribute("msg", "Success");
        response.sendRedirect("candidate-index.jsp");
    } else {
        session.setAttribute("msg", "Failed");
        response.sendRedirect("candidate-login.jsp");
    }
    
    connection.close();
} catch (Exception e) {
    out.print(e);
}
%>
