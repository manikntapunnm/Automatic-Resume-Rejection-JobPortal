


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.Properties"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<%@ page import="Dbconn.dbconn"%>
<!DOCTYPE html>
<html>
<head>
    <title>Form Submission</title>
</head>
<body>
    <%
    Connection connection = null;
    PreparedStatement pstmt = null;

    try {
        // Get a database connection using your Dbconn class
        connection = new Dbconn.dbconn().getConnection();

        String name = request.getParameter("name");
        String fromemail = request.getParameter("email");
        String messsage = request.getParameter("message");
        String subject = request.getParameter("subject");
        out.println(name);
        out.println(fromemail);

        // Create the SQL query
        String sql = "INSERT INTO query (name, email, message, subject) VALUES (?, ?, ?, ?)";
        pstmt = connection.prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, fromemail);
        pstmt.setString(3, messsage);
        pstmt.setString(4, subject);

        // Execute the query
        int rowsInserted = pstmt.executeUpdate();

        if (rowsInserted > 0) {
            final String ToEmail = "projects@codebook.in";
            final String senderPassword = "frwqvhawrnsxetyk"; 

            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.ssl.trust", "*");

            Session esession = Session.getInstance(props, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(ToEmail, senderPassword);
                }
            });

            // Prepare the email message
            MimeMessage message = new MimeMessage(esession);
            message.setFrom(new InternetAddress(fromemail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(ToEmail));
            message.setSubject("Contact Query");
           message.setText("Name: " + name + "\n"
               + "Email: " + fromemail + "\n"
               + "Message: " + messsage + "\n"
               + "Subject: " + subject);

            Transport.send(message);

            session.setAttribute("msg2", "Email sent Successfully");
            out.println("success");
            response.sendRedirect("contact.jsp");
        } else {
            out.println("Error inserting data.");
        }
    } catch (Exception e) {
        out.println("Exception: " + e.getMessage());
    } finally {
        // Close resources
        if (pstmt != null) {
            pstmt.close();
        }
        if (connection != null) {
            connection.close();
        }
    }
    %>
</body>
</html>