<%--@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="Dbconn.dbconn"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="org.apache.pdfbox.pdmodel.PDDocument"%>
<%@ page import="org.apache.pdfbox.text.PDFTextStripper"%>


<%


try {
    String fullname = "";
    String edu = "";
    String jobnature = "";
    String job = "";
    String skills = "";
    String serverFilePath = "";
    String fileName = "";
    String company = "";
    String email = "";
    String fileContent = "";

    if (ServletFileUpload.isMultipartContent(request)) {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(5600456); // Adjust the size limit as needed

        List<FileItem> items = upload.parseRequest(request);

        for (FileItem item : items) {
            if (!item.isFormField()) {
                String originalFileName = new File(item.getName()).getName();
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
                String timeStamp = dateFormat.format(new Date());
                String truncatedTimeStamp = timeStamp.substring(8, 13);
                String uniqueFileName = truncatedTimeStamp + "_" + originalFileName;
                serverFilePath = "img\\" + uniqueFileName;
                item.write(new File(serverFilePath));
                fileName = uniqueFileName;
            } else {
                String fieldName = item.getFieldName();
                String fieldValue = item.getString();
                if ("fullname".equals(fieldName)) {
                    fullname = fieldValue;
                } else if ("edu".equals(fieldName)) {
                    edu = fieldValue;
                } else if ("jobnature".equals(fieldName)) {
                    jobnature = fieldValue;
                } else if ("job".equals(fieldName)) {
                    job = fieldValue;
                } else if ("skills".equals(fieldName)) {
                    skills = fieldValue;
                } else if ("company".equals(fieldName)) {
                    company = fieldValue;
                } else if ("email".equals(fieldName)) {
                    email = fieldValue;
                }
            }
        }
        out.println(fullname);
out.println(edu);
out.println(jobnature);
out.println(job);
out.println(skills);
out.println(company);
//out.println(email);
//out.println();
        File file = new File(serverFilePath);
        try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
            StringBuilder stringBuilder = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                stringBuilder.append(line);
            }
            fileContent = stringBuilder.toString();
        }

//txt 

out.println("<pre>" + fileContent + "</pre>");

        try (Connection connection = new Dbconn.dbconn().getConnection()) {
            int companyId = -1;
            PreparedStatement companyStatement = connection.prepareStatement("SELECT companyid FROM company WHERE company = ?");
            companyStatement.setString(1, company);
            ResultSet companyResultSet = companyStatement.executeQuery();
            if (companyResultSet.next()) {
                companyId = companyResultSet.getInt("companyid");
            }
            companyResultSet.close();
            companyStatement.close();

            int jobId = -1;
            PreparedStatement jobStatement = connection.prepareStatement("SELECT jobid FROM jobs WHERE job = ?");
            jobStatement.setString(1, job);
            ResultSet jobResultSet = jobStatement.executeQuery();
            if (jobResultSet.next()) {
                jobId = jobResultSet.getInt("jobid");
            }
            jobResultSet.close();
            jobStatement.close();

            int candidateId = -1;
            PreparedStatement candidateStatement = connection.prepareStatement("SELECT candidateid FROM candidates WHERE email = ?");
            candidateStatement.setString(1, email);
            ResultSet candidateResultSet = candidateStatement.executeQuery();
            if (candidateResultSet.next()) {
                candidateId = candidateResultSet.getInt("candidateid");
            }
            candidateResultSet.close();
            candidateStatement.close();

            String sql = "INSERT INTO applications(name, education, jobnature, email, skills, file,filedata, filename, jobid, companyid, candidateid) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, fullname);
                statement.setString(2, edu);
                statement.setString(3, jobnature);
                statement.setString(4, email);
                statement.setString(5, skills);
                FileInputStream input2 = new FileInputStream(serverFilePath);
                statement.setBinaryStream(6, input2);
                statement.setString(7, fileContent);
                statement.setString(8, fileName);
                statement.setInt(9, jobId);
                statement.setInt(10, companyId);
                statement.setInt(11, candidateId);

                // Execute the statement
                int rowsInserted = statement.executeUpdate();

                if (rowsInserted > 0) {
                    session.setAttribute("email", email);
                    session.setAttribute("msg2", "Success");
                    //response.sendRedirect("candidate-myjobs.jsp");
                } else {
                    session.setAttribute("email", email);
                    session.setAttribute("msg2", "Failed");
                    //response.sendRedirect("candidate-register.jsp");
                }
            } catch (Exception e) {
                out.print(e);
            }
        }
    }
} catch (Exception e) {
    out.print(e);
}
--%>




<%--@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="Dbconn.dbconn"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*, java.util.regex.*, java.util.ArrayList"%>
<%@ page import="java.util.Set, java.util.HashSet" %>


<%


try {
    String fullname = "";
    String edu = "";
    String jobnature = "";
    String job = "";
    String skills = "";
    String serverFilePath = "";
    String fileName = "";
    String company = "";
    String email = "";
    //String fileContent = "";
   //String techSkillsArray2 = techSkillsArray;

    if (ServletFileUpload.isMultipartContent(request)) {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(5600456); // Adjust the size limit as needed

        List<FileItem> items = upload.parseRequest(request);

        for (FileItem item : items) {
            if (!item.isFormField()) {
                String originalFileName = new File(item.getName()).getName();
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
                String timeStamp = dateFormat.format(new Date());
                String truncatedTimeStamp = timeStamp.substring(8, 13);
                String uniqueFileName = truncatedTimeStamp + "_" + originalFileName;
                serverFilePath = "img\\" + uniqueFileName;
                item.write(new File(serverFilePath));
                fileName = uniqueFileName;
            } else {
                String fieldName = item.getFieldName();
                String fieldValue = item.getString();
                if ("fullname".equals(fieldName)) {
                    fullname = fieldValue;
                } else if ("edu".equals(fieldName)) {
                    edu = fieldValue;
                } else if ("jobnature".equals(fieldName)) {
                    jobnature = fieldValue;
                } else if ("job".equals(fieldName)) {
                    job = fieldValue;
                } else if ("skills".equals(fieldName)) {
                    skills = fieldValue;
                } else if ("company".equals(fieldName)) {
                    company = fieldValue;
                } else if ("email".equals(fieldName)) {
                    email = fieldValue;
                }
            }
        }
        out.println(fullname);
out.println(edu);
out.println(jobnature);
out.println(job);
out.println(skills);
out.println(company);
//out.println(email);

//out.println();


try (Connection connection = new Dbconn.dbconn().getConnection()) {

 File file = new File(serverFilePath);
            StringBuilder stringBuilder = new StringBuilder();
            String line;
            BufferedReader reader = new BufferedReader(new FileReader(file));
            while ((line = reader.readLine()) != null) {
                stringBuilder.append(line).append(" ");
            }
            String fileContent = stringBuilder.toString();

            // Define a dynamic pattern to match any word
            Pattern pattern = Pattern.compile("\\b\\w+\\b", Pattern.CASE_INSENSITIVE);
            Matcher matcher = pattern.matcher(fileContent);

            Set<String> technicalSkills = new HashSet<>();
            while (matcher.find()) {
                technicalSkills.add(matcher.group());
            }

            String[] techSkillsArray = technicalSkills.toArray(new String[0]);

            // Display the extracted technical skills
            out.println("<pre>");
            for (String techSkill : techSkillsArray) {
                out.println(techSkill + "<br>");
            }
            out.println("</pre>");

            reader.close();
      



        
            int companyId = -1;
            PreparedStatement companyStatement = connection.prepareStatement("SELECT companyid FROM company WHERE company = ?");
            companyStatement.setString(1, company);
            ResultSet companyResultSet = companyStatement.executeQuery();
            if (companyResultSet.next()) {
                companyId = companyResultSet.getInt("companyid");
            }
            companyResultSet.close();
            companyStatement.close();

            int jobId = -1;
            PreparedStatement jobStatement = connection.prepareStatement("SELECT jobid FROM jobs WHERE job = ?");
            jobStatement.setString(1, job);
            ResultSet jobResultSet = jobStatement.executeQuery();
            if (jobResultSet.next()) {
                jobId = jobResultSet.getInt("jobid");
            }
            jobResultSet.close();
            jobStatement.close();

            int candidateId = -1;
            PreparedStatement candidateStatement = connection.prepareStatement("SELECT candidateid FROM candidates WHERE email = ?");
            candidateStatement.setString(1, email);
            ResultSet candidateResultSet = candidateStatement.executeQuery();
            if (candidateResultSet.next()) {
                candidateId = candidateResultSet.getInt("candidateid");
            }
            candidateResultSet.close();
            candidateStatement.close();

            String sql = "INSERT INTO applications(name, education, jobnature, email, skills, file,filedata, filename, jobid, companyid, candidateid) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, fullname);
                statement.setString(2, edu);
                statement.setString(3, jobnature);
                statement.setString(4, email);
                statement.setString(5, skills);
                FileInputStream input2 = new FileInputStream(serverFilePath);
                statement.setBinaryStream(6, input2);
                statement.setString(7, fileContent);
                statement.setString(8, fileName);
                statement.setInt(9, jobId);
                statement.setInt(10, companyId);
                statement.setInt(11, candidateId);

                // Execute the statement
                int rowsInserted = statement.executeUpdate();

                if (rowsInserted > 0) {
                    session.setAttribute("email", email);
                    session.setAttribute("msg2", "Success");
                    //response.sendRedirect("candidate-myjobs.jsp");
                } else {
                    session.setAttribute("email", email);
                    session.setAttribute("msg2", "Failed");
                    //response.sendRedirect("candidate-register.jsp");
                }
            } catch (Exception e) {
                out.print(e);
            }
        }
    }
    
} catch (Exception e) {
    out.print(e);
}
--%>




<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="Dbconn.dbconn"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="org.apache.pdfbox.pdmodel.PDDocument"%>
<%@ page import="org.apache.pdfbox.text.PDFTextStripper"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.mail.*, javax.mail.internet.*"%>
<%@ page import="java.util.Properties" %>

<%
try {
    String fullname = "";
    String edu = "";
    String jobnature = "";
    String job = "";
    String skills = "";
    String serverFilePath = "";
    String fileName = "";
    String company = "";
    String email = "";
    String fileContent = "";
     HttpSession fsession = request.getSession();
    String Skills = (String) session.getAttribute("Skills");
    String exp = (String) session.getAttribute("experience");

    if (ServletFileUpload.isMultipartContent(request)) {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(5600456); // Adjust the size limit as needed

        List<FileItem> items = upload.parseRequest(request);

        for (FileItem item : items) {
            if (!item.isFormField()) {
                String originalFileName = new File(item.getName()).getName();
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
                String timeStamp = dateFormat.format(new Date());
                String truncatedTimeStamp = timeStamp.substring(8, 13);
                String uniqueFileName = truncatedTimeStamp + "_" + originalFileName;
                serverFilePath = "img\\" + uniqueFileName;
                item.write(new File(serverFilePath));
                fileName = uniqueFileName;
            } else {
                String fieldName = item.getFieldName();
                String fieldValue = item.getString();
                if ("fullname".equals(fieldName)) {
                    fullname = fieldValue;
                } else if ("edu".equals(fieldName)) {
                    edu = fieldValue;
                } else if ("jobnature".equals(fieldName)) {
                    jobnature = fieldValue;
                } else if ("job".equals(fieldName)) {
                    job = fieldValue;
                } else if ("skills".equals(fieldName)) {
                    skills = fieldValue;
                } else if ("company".equals(fieldName)) {
                    company = fieldValue;
                } else if ("email".equals(fieldName)) {
                    email = fieldValue;
                }
            }
        }

 out.println(Skills);
  out.println(exp);

        // Read file content
        File file = new File(serverFilePath);
        try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
            StringBuilder stringBuilder = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                stringBuilder.append(line);
            }
            fileContent = stringBuilder.toString();
        }
String[] skillWords = Skills.toLowerCase().split("\\s*,\\s*"); // Split by comma and trim

    // Compare lowercase skills with lowercase file content and update status
    boolean skillsMatch = false;
    for (String skill : skillWords) {
        if (fileContent.contains(skill)) {
            skillsMatch = true;
            break;
        }
    }
 String applications = skillsMatch ? "accepted" : "rejected";
 
 
 
 
 
 
 
 try (Connection connection = new Dbconn.dbconn().getConnection()) {
           
          int jobId = -1;
    PreparedStatement jobStatement = connection.prepareStatement("SELECT jobid FROM jobs WHERE job = ?");
    jobStatement.setString(1, job);
    ResultSet jobResultSet = jobStatement.executeQuery();
    if (jobResultSet.next()) {
        jobId = jobResultSet.getInt("jobid");
    }
    jobResultSet.close();
    jobStatement.close();
 PreparedStatement checkExistingApplication = connection.prepareStatement(
                "SELECT * FROM applications WHERE email = ? AND jobid = ?");
            checkExistingApplication.setString(1, email);
            checkExistingApplication.setInt(2, jobId);
            ResultSet existingApplicationResultSet = checkExistingApplication.executeQuery();

            if (existingApplicationResultSet.next()) {
            
             String existingStatus = existingApplicationResultSet.getString("status");
               if (!existingStatus.equalsIgnoreCase("Pending")) {
        session.setAttribute("msg3", "Application already exists");
        response.sendRedirect("candidate-apply-job.jsp");
    } else {
        out.println("you are not Allowed");
    }
                
            } else {
            
            
              int companyId = -1;
    PreparedStatement companyStatement = connection.prepareStatement("SELECT companyid FROM company WHERE company = ?");
    companyStatement.setString(1, company);
    ResultSet companyResultSet = companyStatement.executeQuery();
    if (companyResultSet.next()) {
        companyId = companyResultSet.getInt("companyid");
    }
    companyResultSet.close();
    companyStatement.close();

  

    int candidateId = -1;
    PreparedStatement candidateStatement = connection.prepareStatement("SELECT candidateid FROM candidates WHERE email = ?");
    candidateStatement.setString(1, email);
    ResultSet candidateResultSet = candidateStatement.executeQuery();
    if (candidateResultSet.next()) {
        candidateId = candidateResultSet.getInt("candidateid");
    }
    candidateResultSet.close();
    candidateStatement.close();
    
        String sql = "INSERT INTO applications(name, education, jobnature, email, skills, file, filedata, filename, jobid, companyid, candidateid, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
try (PreparedStatement statement = connection.prepareStatement(sql)) {
    statement.setString(1, fullname);
    statement.setString(2, edu);
    statement.setString(3, jobnature);
    statement.setString(4, email);
    statement.setString(5, skills);
    FileInputStream input2 = new FileInputStream(serverFilePath);
    statement.setBinaryStream(6, input2);
    statement.setString(7, fileContent);
    statement.setString(8, fileName);
    statement.setInt(9, jobId);
    statement.setInt(10, companyId);
    statement.setInt(11, candidateId);
    statement.setString(12, "Applied");

                    // Execute the statement
                    int rowsInserted = statement.executeUpdate();

                    if (rowsInserted > 0) {
                    PreparedStatement updateStatusStatement = connection.prepareStatement(
        "UPDATE applications SET application = ? WHERE email = ? AND jobid = ?");
    updateStatusStatement.setString(1, applications);
    updateStatusStatement.setString(2, email);
    updateStatusStatement.setInt(3, jobId);
    int rowsUpdated = updateStatusStatement.executeUpdate();
    updateStatusStatement.close();
                    
              // Sending email
            final String senderEmail = "projects@codebook.in";
            final String senderPassword = "frwqvhawrnsxetyk";
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com"); // or your email provider's SMTP host
            props.put("mail.smtp.port", "587"); // or your email provider's SMTP port
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.ssl.trust", "*");

            Session esession = Session.getInstance(props, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(senderEmail, senderPassword);
                }
            });

            MimeMessage message = new MimeMessage(esession);
            message.setFrom(new InternetAddress(senderEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject("Application Status");
            message.setText("Dear " + fullname + ",\n\nThank you for your application. Your application status is: " + applications);

            Transport.send(message);
                
                        session.setAttribute("email", email);
                        session.setAttribute("msg2", "Applied Successfully");
                        //response.sendRedirect("candidate-myjobs.jsp");
                    } else {
                        session.setAttribute("email", email);
                        session.setAttribute("msg2", "Failed");
                        response.sendRedirect("candidate-job-details.jsp");
                    }
                } catch (Exception e) {
                    out.print(e);
                }
            }//else end
 // Close resources
            existingApplicationResultSet.close();
            checkExistingApplication.close();
        } catch (Exception e) {//try second
            out.print(e);
  }
    }// if (ServletFileUpload.isMultipartContent(request)) {
    
    

} catch (Exception e) {//try  first
    out.print(e);
}

%>




<%--@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="Dbconn.dbconn"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="org.apache.pdfbox.pdmodel.PDDocument"%>
<%@ page import="org.apache.pdfbox.text.PDFTextStripper"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.mail.*, javax.mail.internet.*"%>
<%@ page import="java.util.Properties" %>



<%
try {
    String fullname = "";
    String edu = "";
    String jobnature = "";
    String job = "";
    String skills = "";
    String serverFilePath = "";
    String fileName = "";
    String company = "";
    String email = "";
    String fileContent = "";
     HttpSession esession = request.getSession();
    String Skills = (String) session.getAttribute("Skills");
    String exp = (String) session.getAttribute("experience");

    if (ServletFileUpload.isMultipartContent(request)) {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(5600456); // Adjust the size limit as needed

        List<FileItem> items = upload.parseRequest(request);

        for (FileItem item : items) {
            if (!item.isFormField()) {
                String originalFileName = new File(item.getName()).getName();
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
                String timeStamp = dateFormat.format(new Date());
                String truncatedTimeStamp = timeStamp.substring(8, 13);
                String uniqueFileName = truncatedTimeStamp + "_" + originalFileName;
                serverFilePath = "img\\" + uniqueFileName;
                item.write(new File(serverFilePath));
                fileName = uniqueFileName;
            } else {
                String fieldName = item.getFieldName();
                String fieldValue = item.getString();
                if ("fullname".equals(fieldName)) {
                    fullname = fieldValue;
                } else if ("edu".equals(fieldName)) {
                    edu = fieldValue;
                } else if ("jobnature".equals(fieldName)) {
                    jobnature = fieldValue;
                } else if ("job".equals(fieldName)) {
                    job = fieldValue;
                } else if ("skills".equals(fieldName)) {
                    skills = fieldValue;
                } else if ("company".equals(fieldName)) {
                    company = fieldValue;
                } else if ("email".equals(fieldName)) {
                    email = fieldValue;
                }
            }
        }
        
        // Print values for debugging
//        out.println(fullname);
//        out.println(edu);
//        out.println(jobnature);
//        out.println(job);
//        out.println(skills);
//        out.println(company);
//        //out.println(email);
 out.println(Skills);
  out.println(exp);

        // Read file content
        File file = new File(serverFilePath);
        try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
            StringBuilder stringBuilder = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                stringBuilder.append(line);
            }
            fileContent = stringBuilder.toString();
        }
        // Print file content for debugging
//        out.println("<pre>" + fileContent + "</pre>");

//  String[] skillWords = Skills.split("\\s+");
//    boolean skillsMatch = false;
//    for (String skill : skillWords) {
//        if (fileContent.contains(skill)) {
//            skillsMatch = true;
//            break;
//        }
//    }
//    

 String[] skillWords = Skills.toLowerCase().split("\\s*,\\s*"); // Split by comma and trim

    // Compare lowercase skills with lowercase file content and update status
    boolean skillsMatch = false;
    for (String skill : skillWords) {
        if (fileContent.contains(skill)) {
            skillsMatch = true;
            break;
        }
    }

    String applications = skillsMatch ? "accepted" : "rejected";


        // Database operations
        try (Connection connection = new Dbconn.dbconn().getConnection()) {
           
          int jobId = -1;
    PreparedStatement jobStatement = connection.prepareStatement("SELECT jobid FROM jobs WHERE job = ?");
    jobStatement.setString(1, job);
    ResultSet jobResultSet = jobStatement.executeQuery();
    if (jobResultSet.next()) {
        jobId = jobResultSet.getInt("jobid");
    }
    jobResultSet.close();
    jobStatement.close();

   
            
            // Your queries and result set retrieval code here
            
            PreparedStatement checkExistingApplication = connection.prepareStatement(
                "SELECT * FROM applications WHERE email = ? AND jobid = ?");
            checkExistingApplication.setString(1, email);
            checkExistingApplication.setInt(2, jobId);
            ResultSet existingApplicationResultSet = checkExistingApplication.executeQuery();

            if (existingApplicationResultSet.next()) {
            
             String existingStatus = existingApplicationResultSet.getString("status");
               if (!existingStatus.equalsIgnoreCase("Pending")) {
        session.setAttribute("msg3", "Application already exists");
        response.sendRedirect("candidate-apply-job.jsp");
    } else {
        out.println("you are not Allowed");
    }
                
            } else {
            
            
              int companyId = -1;
    PreparedStatement companyStatement = connection.prepareStatement("SELECT companyid FROM company WHERE company = ?");
    companyStatement.setString(1, company);
    ResultSet companyResultSet = companyStatement.executeQuery();
    if (companyResultSet.next()) {
        companyId = companyResultSet.getInt("companyid");
    }
    companyResultSet.close();
    companyStatement.close();

  

    int candidateId = -1;
    PreparedStatement candidateStatement = connection.prepareStatement("SELECT candidateid FROM candidates WHERE email = ?");
    candidateStatement.setString(1, email);
    ResultSet candidateResultSet = candidateStatement.executeQuery();
    if (candidateResultSet.next()) {
        candidateId = candidateResultSet.getInt("candidateid");
    }
    candidateResultSet.close();
    candidateStatement.close();
    
        String sql = "INSERT INTO applications(name, education, jobnature, email, skills, file, filedata, filename, jobid, companyid, candidateid, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
try (PreparedStatement statement = connection.prepareStatement(sql)) {
    statement.setString(1, fullname);
    statement.setString(2, edu);
    statement.setString(3, jobnature);
    statement.setString(4, email);
    statement.setString(5, skills);
    FileInputStream input2 = new FileInputStream(serverFilePath);
    statement.setBinaryStream(6, input2);
    statement.setString(7, fileContent);
    statement.setString(8, fileName);
    statement.setInt(9, jobId);
    statement.setInt(10, companyId);
    statement.setInt(11, candidateId);
    statement.setString(12, "Applied");

                    // Execute the statement
                    int rowsInserted = statement.executeUpdate();

                    if (rowsInserted > 0) {
                    PreparedStatement updateStatusStatement = connection.prepareStatement(
        "UPDATE applications SET application = ? WHERE email = ? AND jobid = ?");
    updateStatusStatement.setString(1, applications);
    updateStatusStatement.setString(2, email);
    updateStatusStatement.setInt(3, jobId);
    int rowsUpdated = updateStatusStatement.executeUpdate();
    updateStatusStatement.close();
                    
    
            
    
    
    
                    
                        session.setAttribute("email", email);
                        session.setAttribute("msg2", "Applied Successfully");
                        //response.sendRedirect("candidate-myjobs.jsp");
                    } else {
                        session.setAttribute("email", email);
                        session.setAttribute("msg2", "Failed");
                        response.sendRedirect("candidate-job-details.jsp");
                    }
                } catch (Exception e) {
                    out.print(e);
                }
            }//else end

            
            
            
            
            // Close resources
            existingApplicationResultSet.close();
            checkExistingApplication.close();
        } catch (Exception e) {//try second
            out.print(e);
            
            
            
            
        }
    }// if (ServletFileUpload.isMultipartContent(request)) {
    
    

} catch (Exception e) {//try  first
    out.print(e);
}

//    boolean containsMatchingWord(String content, String skills) {
//        String[] skillWords = skills.split("\\s+");
//        for (String skill : skillWords) {
//            if (content.contains(skill)) {
//                return true;
//            }
//        }
//        return false;
//    }
--%>
