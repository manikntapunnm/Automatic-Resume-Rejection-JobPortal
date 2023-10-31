<%-- 
    Document   : candidate-register-action
    Created on : 16-Aug-2023, 2:38:23 pm
    Author     : manikanta

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="Dbconn.dbconn"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%
try {
    String cname = "";
    String email = "";
    String phone = "";
    String address = "";
    String password = "";
    String serverFilePath = "";
    String fileName = "";

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
                if ("cname".equals(fieldName)) {
                    cname = fieldValue;
                } else if ("email".equals(fieldName)) {
                    email = fieldValue;
                } else if ("phone".equals(fieldName)) {
                    phone = fieldValue;
                } else if ("address".equals(fieldName)) {
                    address = fieldValue;
                } else if ("password".equals(fieldName)) {
                    password = fieldValue;
                }
            }
        }

        String sql = "INSERT INTO candidates(name, email, phone, address, password, image, imagename) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (Connection connection = new Dbconn.dbconn().getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, cname);
            statement.setString(2, email);
            statement.setString(3, phone);
            statement.setString(4, address);
            statement.setString(5, password);
            FileInputStream input = new FileInputStream(serverFilePath);
            statement.setBinaryStream(6, input);
            statement.setString(7, fileName);

            // Execute the statement
            int rowsInserted = statement.executeUpdate();

            if (rowsInserted > 0) {
                session.setAttribute("msg2", "Success");
                response.sendRedirect("candidate-login.jsp");
            } else {
                session.setAttribute("msg2", "Failed");
                response.sendRedirect("candidate-register.jsp");
            }
        } catch (Exception e) {
            out.print(e);
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

<%
try {
    String cname = "";
    String email = "";
    String phone = "";
    String address = "";
    String password = "";
    String serverFilePath = "";
    String fileName = "";

    boolean emailExists = false;

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
                if ("cname".equals(fieldName)) {
                    cname = fieldValue;
                } else if ("email".equals(fieldName)) {
                    email = fieldValue;
                } else if ("phone".equals(fieldName)) {
                    phone = fieldValue;
                } else if ("address".equals(fieldName)) {
                    address = fieldValue;
                } else if ("password".equals(fieldName)) {
                    password = fieldValue;
                }
            }
        }

        // Check if email already exists
        try (Connection connection = new Dbconn.dbconn().getConnection();
             PreparedStatement checkEmailStatement = connection.prepareStatement("SELECT email FROM candidates WHERE email = ?");
        ) {
            checkEmailStatement.setString(1, email);
            ResultSet resultSet = checkEmailStatement.executeQuery();
            if (resultSet.next()) {
                // Email already exists, set the flag to true
                emailExists = true;
            }
        }

        if (!emailExists) {
            // Process registration
            String sql = "INSERT INTO candidates(name, email, phone, address, password, image, imagename) VALUES (?, ?, ?, ?, ?, ?, ?)";
            try (Connection connection = new Dbconn.dbconn().getConnection();
                 PreparedStatement statement = connection.prepareStatement(sql)) {
                    
            statement.setString(1, cname);
            statement.setString(2, email);
            statement.setString(3, phone);
            statement.setString(4, address);
            statement.setString(5, password);
            FileInputStream input = new FileInputStream(serverFilePath);
            statement.setBinaryStream(6, input);
            statement.setString(7, fileName);


                int rowsInserted = statement.executeUpdate();

                if (rowsInserted > 0) {
                    session.setAttribute("msg2", "Success");
                    response.sendRedirect("candidate-login.jsp");
                } else {
                    session.setAttribute("msg2", "Failed");
                    response.sendRedirect("candidate-register.jsp");
                }
            } catch (Exception e) {
                out.print(e);
            }
        } else {
            // Email already exists, redirect to login page or show an error message
            session.setAttribute("msg2", "Email already exists. Please log in.");
            response.sendRedirect("candidate-login.jsp");
        }
    }
} catch (Exception e) {
    out.print(e);
}
%>
