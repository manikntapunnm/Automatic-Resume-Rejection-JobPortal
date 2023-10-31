<%-- 
    Document   : company-login-action
    Created on : 17-Aug-2023, 7:04:51 pm
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
    ResultSet resultSet = statement.executeQuery("SELECT * FROM company WHERE email='" + email + "' AND password='" + password + "'");
    
    if (resultSet.next()) {
    String company = resultSet.getString("company");
        session.setAttribute("email", email);
        session.setAttribute("companyName", company);
        session.setAttribute("msg", "Success");
        response.sendRedirect("company-index.jsp");
    } else {
        session.setAttribute("msg", "Failed");
        response.sendRedirect("company-login.jsp");
    }
    
    connection.close();
} catch (Exception e) {
    out.print(e);
}
%>
