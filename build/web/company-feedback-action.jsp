<%@ page import="java.sql.*, Dbconn.dbconn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Feedback Submission</title>
    <!-- Include SweetAlert CSS and JS files -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
    <%
        int rating1 = Integer.parseInt(request.getParameter("rating1"));
        int rating2 = Integer.parseInt(request.getParameter("rating2"));
         out.println("Rating 1: " + rating1 + "<br>");
            out.println("Rating 2: " + rating2 + "<br>");
            
       
        String overallFeedback = request.getParameter("overall");
        String email = (String) session.getAttribute("email");
//        out.println(rating1);
//        out.println(rating2);
//      
//        //out.println(email);
         try {
            // Get database connection
            Connection connection = new Dbconn.dbconn().getConnection();

            // Get user's email from session
           // String email = (String) session.getAttribute("email");

            // Fetch company's data based on email
            String selectQuery = "SELECT email, company, cimage FROM company WHERE email = ?";
            try (PreparedStatement selectStatement = connection.prepareStatement(selectQuery)) {
                selectStatement.setString(1, email);
                ResultSet companysResultSet = selectStatement.executeQuery();

                // Process the company's data
                if (companysResultSet.next()) {
                    String companyEmail = companysResultSet.getString("email");
                    String companyName = companysResultSet.getString("company");
                    Blob companyImage = companysResultSet.getBlob("cimage");

                    // Retrieve feedback ratings from form parameters
//                    int rating1 = Integer.parseInt(request.getParameter("rating1"));
//                    int rating2 = Integer.parseInt(request.getParameter("rating2"));
//                    int rating3 = Integer.parseInt(request.getParameter("rating3"));
//                    String overallFeedback = request.getParameter("overall");

                    // Calculate sentiment based on ratings
                    String sentiment;
                    double averageRating = (rating1 + rating2 ) / 2.0;
                    if (averageRating >= 0 && averageRating < 1) {
                        sentiment = "Very Negative";
                    } else if (averageRating >= 1 && averageRating < 2) {
                        sentiment = "Negative";
                    } else if (averageRating >= 2 && averageRating < 3) {
                        sentiment = "Neutral";
                    } else if (averageRating >= 3 && averageRating < 4) {
                        sentiment = "Positive";
                    } else {
                        sentiment = "Very Positive";
                    }

                    // Insert feedback data into the database
                    String insertQuery = "INSERT INTO feedback (category, email, name, image, finding,  findposition,avg, description, sentiment) VALUES ( ?,?, ?, ?, ?, ?, ?, ?, ?)";
                    try (PreparedStatement insertStatement = connection.prepareStatement(insertQuery)) {
                        insertStatement.setString(1, "Company");
                        insertStatement.setString(2, email);
                        insertStatement.setString(3, companyName);
                        insertStatement.setBlob(4, companyImage);
                        insertStatement.setInt(5, rating1);
                        insertStatement.setInt(6, rating2);
                        insertStatement.setDouble(7, averageRating);
                        insertStatement.setString(8, overallFeedback);
                        insertStatement.setString(9, sentiment);

                        int rowsInserted = insertStatement.executeUpdate();
                        if (rowsInserted > 0) {
                            // Show success message and redirect
                              out.println("<script>");
                    out.println("Swal.fire({ icon: 'success', title: 'Feedback submitted successfully!', showConfirmButton: false });");
                    out.println("setTimeout(function() { window.location.href = 'company-feedback.jsp'; }, 1500);");
                    out.println("</script>");
                        } else {
                            out.println("<script>");
                    out.println("Swal.fire({ icon: 'error', title: 'Failed to submit feedback.', showConfirmButton: false });");
                    out.println("setTimeout(function() { window.location.href = 'company-feedback.jsp'; }, 1500);");
                    out.println("</script>");
                        }
                    }
                } else {
                    out.println("<script>alert('Candidate with email " + email + " not found.');</script>");
                }
            } catch (SQLException e) {
                out.println("<script>alert('An error occurred: " + e.getMessage() + "');</script>");
            }
        } catch (Exception e) {
            out.println("<script>alert('An error occurred: " + e.getMessage() + "');</script>");
        }
    %>