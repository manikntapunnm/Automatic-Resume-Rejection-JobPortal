<%-- 
    Document   : newjsp
    Created on : 23-Aug-2023, 6:09:20 pm
    Author     : manikanta
--%>

<%@ page import="Dbconn.Dbconn" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sentiment Analysis Chart</title>
    <!-- Include necessary Chart.js library -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <canvas id="barChart"></canvas>

    <%
        Dbconn dbconn = new Dbconn();
        Connection connection = dbconn.getConnection();
        
        if (connection != null) {
            try {
                String sql = "SELECT sentiment, COUNT(*) AS count FROM feedback GROUP BY sentiment";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                ResultSet rs = preparedStatement.executeQuery();
                
                // Initialize sentiment counts map
                Map<String, Integer> sentimentCounts = new HashMap<>();
                
                // Populate sentimentCounts map
                while (rs.next()) {
                    String sentiment = rs.getString("sentiment");
                    int count = rs.getInt("count");
                    sentimentCounts.put(sentiment, count);
                }
                
                // Create arrays for Chart.js
                String[] sentimentLabels = {"Very Positive", "Very Negative", "Negative", "Positive", "Neutral"};
                int[] sentimentData = new int[sentimentLabels.length];
                
                for (int i = 0; i < sentimentLabels.length; i++) {
                    sentimentData[i] = sentimentCounts.getOrDefault(sentimentLabels[i], 0);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    %>

    <script>
        const ctx = document.getElementById("barChart").getContext("2d");
        const myChart = new Chart(ctx, {
            type: "bar",
            data: {
                labels: <%= Arrays.toString(sentimentLabels) %>,
                datasets: [{
                    label: "Reviews",
                    data: <%= Arrays.toString(sentimentData) %>,
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)',
                    ],
                    borderColor: [
                        'rgba(255,99,132,1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                    ],
                    borderWidth: 1,
                    hoverBorderColor: ["green", "red", "yellow", "orange", "pink"],
                }],
            },
            options: {
                legend: {
                    labels: {
                        fontColor: "blue",
                        fontSize: 18,
                    },
                },
                scales: {
                    y: {
                        beginAtZero: true,
                    },
                },
            },
        });
    </script>
</body>
</html>
