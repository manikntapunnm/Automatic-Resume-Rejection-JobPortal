<%-- 
    Document   : company-register-action
    Created on : 16-Aug-2023, 5:33:48 pm
    Author     : manikanta


<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        String sql = "INSERT INTO company (cname, email, phone, address, password, cimage,pimage,document) VALUES (?, ?, ?, ?, ?, ?, ?,?)";
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
                response.sendRedirect("candidate-index.jsp");
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
%>



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
    String company = "";
    String email = "";
    String phone = "";
    String address = "";
    String password = "";
    byte[] cimageData = null;
    byte[] pimageData = null;
    String cimageName = "";
    String pimageName = "";
    String documentFileName = "";
    
    
    String serverFilePath = "C:\\Users\\manikanta\\OneDrive\\Documents\\NetBeansProjects\\JPA\\build\\web\\assets2\\img\\";
                               // C:\Users\manikanta\OneDrive\Documents\NetBeansProjects\JPA\build\web\assets2
    String serverFilePath2 = "C:\\Users\\manikanta\\OneDrive\\Documents\\NetBeansProjects\\JPA\\build\\web\\assets2\\img\\documents\\";

    if (ServletFileUpload.isMultipartContent(request)) {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(560045654); // Adjust the size limit as needed

        List<FileItem> items = upload.parseRequest(request);

        for (FileItem item : items) {
            if (!item.isFormField()) {
                String originalFileName = new File(item.getName()).getName();
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");
                String timeStamp = dateFormat.format(new Date());
                String truncatedTimeStamp = timeStamp.substring(8, 13);
                String uniqueFileName = truncatedTimeStamp + "_" + originalFileName;

                if ("cimage".equals(item.getFieldName())) {
                    cimageData = item.get();
                    cimageName = uniqueFileName;
                    // Save the uploaded cimage to the specified serverFilePath
                    File cimageFile = new File(serverFilePath + cimageName);
                    item.write(cimageFile);
                } else if ("pimage".equals(item.getFieldName())) {
                    pimageData = item.get();
                    pimageName = uniqueFileName;
                    // Save the uploaded pimage to the specified serverFilePath
                    File pimageFile = new File(serverFilePath + pimageName);
                    item.write(pimageFile);
                } else if ("document".equals(item.getFieldName())) {
                    documentFileName = uniqueFileName;
                    // Save the uploaded document to the specified serverFilePath
                    File documentFile = new File(serverFilePath2 + documentFileName);
                    item.write(documentFile);
                }
            } else {
                String fieldName = item.getFieldName();
                String fieldValue = item.getString();
                if ("company".equals(fieldName)) {
                    company = fieldValue;
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

        String sql = "INSERT INTO company(company, email, phone, address, password, cimage, cimagename, pimage, pimagename, documentname) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection connection = new Dbconn.dbconn().getConnection();
            PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, company);
            statement.setString(2, email);
            statement.setString(3, phone);
            statement.setString(4, address);
            statement.setString(5, password);

            if (cimageData != null) {
                statement.setBytes(6, cimageData);
                statement.setString(7, cimageName);
            } else {
                statement.setNull(6, Types.BLOB);
                statement.setNull(7, Types.VARCHAR);
            }

            if (pimageData != null) {
                statement.setBytes(8, pimageData);
                statement.setString(9, pimageName);
            } else {
                statement.setNull(8, Types.BLOB);
                statement.setNull(9, Types.VARCHAR);
            }

            statement.setString(10, documentFileName);

            int rowsInserted = statement.executeUpdate();

            if (rowsInserted > 0) {
                session.setAttribute("msg2", "Success");
                response.sendRedirect("company-login.jsp");
            } else {
                session.setAttribute("msg2", "Failed");
                response.sendRedirect("company-register.jsp");
            }
        } catch (SQLException sqle) {
            out.print("SQL Exception: " + sqle.getMessage());
            sqle.printStackTrace();
        } catch (IOException ioe) {
            out.print("IO Exception: " + ioe.getMessage());
            ioe.printStackTrace();
        } catch (Exception e) {
            out.print("Exception: " + e.getMessage());
            e.printStackTrace();
        }
    }
} catch (Exception e) {
    e.printStackTrace();
    out.print("Outer Exception: " + e.getMessage());
}
%>
