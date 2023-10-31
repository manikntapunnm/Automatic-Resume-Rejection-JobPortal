<%-- 
    Document   : getData1
    Created on : 23-Aug-2023, 1:08:41 pm
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Dbconn.dbconn"%>




<%
    // Establish a database connection
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    try {
  
        Connection connection =  new Dbconn.dbconn().getConnection();


   //String electionName = (String) session.getAttribute("ename2");
   //String electionName = request.getParameter("ename");
   
        String query = "SELECT pname, votes FROM candidates WHERE ename = ?";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1, electionName);
        resultSet = preparedStatement.executeQuery();

        // Create a JSON response manually
        StringBuilder jsonResponse = new StringBuilder("[");
        boolean firstRow = true;
        while (resultSet.next()) {
            if (!firstRow) {
                jsonResponse.append(",");
            } else {
                firstRow = false;
            }
            jsonResponse.append("{\"partyname\":\"")
                       .append(resultSet.getString("pname"))
                       .append("\",\"votecount\":")
                       .append(resultSet.getInt("votes"))
                       .append("}");
        }
        jsonResponse.append("]");

        // Write JSON response
        response.setContentType("application/json");
        response.getWriter().write(jsonResponse.toString());
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (resultSet != null) resultSet.close();
        if (statement != null) statement.close();
        if (connection != null) connection.close();
    }
%>

