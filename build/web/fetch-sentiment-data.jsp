<%-- 
    Document   : fetch-sentiment-data
    Created on : 23-Aug-2023, 6:32:17 pm
    Author     : manikanta
--%>

<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet, java.util.Map, java.util.HashMap" %>
<%@ page import="java.sql.*" %>
<%@ page import="Dbconn.dbconn"%>
<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String categoryHeader = request.getParameter("categoryHeader");
   Connection connection =  new Dbconn.dbconn().getConnection();
    
    Map<String, Integer> sentimentCounts = new HashMap<>();
    
    if (connection != null) {
    
    
    
    
        try {
//            String sql = "SELECT sentiment, COUNT(*) AS count FROM feedback WHERE category = ? GROUP BY sentiment";
                String sql = "SELECT "
                       + "SUM(CASE WHEN sentiment = 'Very Positive' THEN 1 ELSE 0 END) AS very_positive_count, "
                       + "SUM(CASE WHEN sentiment = 'Very Negative' THEN 1 ELSE 0 END) AS very_negative_count, "
                       + "SUM(CASE WHEN sentiment = 'Neutral' THEN 1 ELSE 0 END) AS neutral_count, "
                       + "SUM(CASE WHEN sentiment = 'Positive' THEN 1 ELSE 0 END) AS positive_count, "
                       + "SUM(CASE WHEN sentiment = 'Negative' THEN 1 ELSE 0 END) AS negative_count "
                       + "FROM feedback WHERE category = ?";
PreparedStatement preparedStatement = connection.prepareStatement(sql);
             preparedStatement.setString(1, categoryHeader);
            ResultSet rs = preparedStatement.executeQuery();
            
//            while (rs.next()) {
//                String sentiment = rs.getString("sentiment");
//                int count = rs.getInt("count");
//                sentimentCounts.put(sentiment, count);
//            }
   if (rs.next()) {
                sentimentCounts.put("Very Positive", rs.getInt("very_positive_count"));
                sentimentCounts.put("Very Negative", rs.getInt("very_negative_count"));
                sentimentCounts.put("Neutral", rs.getInt("neutral_count"));
                sentimentCounts.put("Positive", rs.getInt("positive_count"));
                sentimentCounts.put("Negative", rs.getInt("negative_count"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    
    // Convert sentimentCounts map to JSON
    String jsonData = "{";
    for (Map.Entry<String, Integer> entry : sentimentCounts.entrySet()) {
        jsonData += "\"" + entry.getKey() + "\":" + entry.getValue() + ",";
    }
    if (!sentimentCounts.isEmpty()) {
        jsonData = jsonData.substring(0, jsonData.length() - 1); // Remove trailing comma
    }
    jsonData += "}";
    
    response.setContentType("application/json");
    response.getWriter().write(jsonData);
%>

