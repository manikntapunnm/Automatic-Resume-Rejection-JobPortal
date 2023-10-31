<%-- 
    Document   : admin-login-action
    Created on : 16-Aug-2023, 12:37:55 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="Dbconn.dbconn"%>

<%
try {
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    Connection connection = new Dbconn.dbconn().getConnection();
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery("SELECT * FROM admin WHERE username='" + username + "' AND password='" + password + "'");
    
    if (resultSet.next()) {
        session.setAttribute("username", username);
        session.setAttribute("msg", "Success");
        response.sendRedirect("admin-index.jsp");
    } else {
        session.setAttribute("msg", "Failed");
        response.sendRedirect("admin-login.jsp");
    }
    
    connection.close();
} catch (Exception e) {
    out.print(e);
}
%>

<%--
String u=request.getParameter("username"),p=request.getParameter("password");
try{ResultSet r=new Dbconnection().getConnection().createStatement().executeQuery("SELECT*FROM admin WHERE username='"+u+"' AND password='"+p+"'");session.setAttribute("msg",r.next()?"Admin Login Successfully":"Admin Login Failed");response.sendRedirect(r.next()?"admin-index.jsp":"admin-login.jsp");}catch(Exception e){out.print(e);}
--%>
<%--
String username = request.getParameter("username");
session.setAttribute("username",username);
String password = request.getParameter("password");

try {
    Connection con = Dbconnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM admin WHERE username='" + username + "' AND password='" + password + "'");
    
    if (rs.next()) {
        response.sendRedirect("admin-index.jsp");
    } else {
        %>
        <script type="text/javascript">
            window.alert("Admin Login Failed");
            window.location = "Admin.jsp";
        </script>
        <%
    }
    con.close(); // Close the database connection
} catch (Exception e) {
    out.println(e);
}
--%>




