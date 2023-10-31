<%-- 
    Document   : candidate-profile-action
    Created on : 22-Aug-2023, 2:35:02 pm
    Author     : manikanta
--%>


<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="Dbconn.dbconn"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Example using CDN link -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body>
<%
try {
    // Database connection parameters
   


    String name = "";
    String phone = "";
    String email2 = "";
    String address = "";
    String password = "";
    String serverFilePath = "";
    String fileName = "";
String email = (String) session.getAttribute("email");
  String updateFields = "";

    // Check if the request contains multipart data
    if (ServletFileUpload.isMultipartContent(request)) {
        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        // Set the maximum allowed file size (in bytes)
        upload.setSizeMax(5600456); // Adjust the size limit as needed

        List<FileItem> items = upload.parseRequest(request);

        for (FileItem item : items) {
            if (!item.isFormField()) {
                // Handle file upload
                String originalFileName = new File(item.getName()).getName();
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
                String timeStamp = dateFormat.format(new Date());
                String truncatedTimeStamp = timeStamp.substring(8, 13); // Extract 5 digits from the timestamp
                String uniqueFileName = truncatedTimeStamp + "_" + originalFileName;
                serverFilePath = "C:\\Users\\manikanta\\OneDrive\\Documents\\NetBeansProjects\\JPA\\build\\web\\img\\" + uniqueFileName;
                item.write(new File(serverFilePath));
                fileName = uniqueFileName;
            } else {
                // Handle form fields
                String fieldName = item.getFieldName();
                String fieldValue = item.getString();
                if ("name".equals(fieldName)) {
                    name = fieldValue;
                } else if ("email2".equals(fieldName)) {
                    email2 = fieldValue;
                } else if ("phone".equals(fieldName)) {
                    phone = fieldValue;
                } else if ("address".equals(fieldName)) {
                    address = fieldValue;
                }else if ("password".equals(fieldName)) {
                    password = fieldValue;
                }
            }
        }

        // Update data in the database
               try (   Connection connection = new Dbconn.dbconn().getConnection();) {
            //String updateFields = ""; // Initialize a string to hold the updated fields for the SQL query
            List<Object> updateValues = new ArrayList<>(); // List to hold the values for the prepared statement

            // Check if each field has been updated, and add it to the updateFields string
            if (!name.isEmpty()) {
                updateFields += "name=?, ";
                updateValues.add(name);
            }
          
            if (!email.isEmpty()) {
                updateFields += "email=?, ";
                updateValues.add(email2);
            }
            if (!phone.isEmpty()) {
                updateFields += "phone=?, ";
                updateValues.add(phone);
            }
            if (!address.isEmpty()) {
                updateFields += "address=?, ";
                updateValues.add(address);
            }
             if (!password.isEmpty()) {
                updateFields += "password=?, ";
                updateValues.add(password);
            }

            // Check if an image was uploaded
            if (!fileName.isEmpty()) {
                updateFields += "image=?, imagename=?, ";
                updateValues.add(new FileInputStream(serverFilePath));
                updateValues.add(fileName);
            }

            // Remove the trailing comma and space from the updateFields string
            if (!updateFields.isEmpty()) {
                updateFields = updateFields.substring(0, updateFields.length() - 2);
            }

            // Construct the update query
            String sql = "UPDATE candidates SET " + updateFields + " WHERE email=?";
            updateValues.add(email);

            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                // Set values for the prepared statement
                for (int i = 0; i < updateValues.size(); i++) {
                    statement.setObject(i + 1, updateValues.get(i));
                }

                // Execute the update statement
                int rowsAffected = statement.executeUpdate();

                if (rowsAffected > 0) {
                    // Update successful
                    String successMessage = "Profile details and image updated successfully.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'success',");
                    out.println("  title: 'Success',");
                    out.println("  text: '" + successMessage + "',");
                    out.println("}).then(function() { window.location.href = 'candidate-profile.jsp'; });");
                    out.println("</script>");
                } else {
                    // No rows updated (aadhar not found)
                    String errorMessage = "No matching record found for the provided aadhar.";
                    out.println("<script>");
                    out.println("Swal.fire({");
                    out.println("  icon: 'error',");
                    out.println("  title: 'Error',");
                    out.println("  text: '" + errorMessage + "',");
                    out.println("}).then(function() { window.location.href = 'candidate-profile.jsp'; });");
                    out.println("</script>");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                out.println("<p>Error executing database update: " + e.getMessage() + "</p>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<p>Error connecting to database: " + e.getMessage() + "</p>");
        }
    }
} catch (FileUploadException e) {
    e.printStackTrace();
    out.println("<p>Error parsing file upload: " + e.getMessage() + "</p>");
} catch (Exception e) {
    e.printStackTrace();
    out.println("<p>Unexpected error: " + e.getMessage() + "</p>");
}
%>
</body>
</html>
