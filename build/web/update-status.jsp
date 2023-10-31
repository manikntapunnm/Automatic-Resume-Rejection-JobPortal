<%-- 
    Document   : update-status
    Created on : 18-Aug-2023, 6:48:23 pm
    Author     : manikanta



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<%
try {
    // Retrieve form data
    String jobid = request.getParameter("jobid");
//    out.println(jobid);
    String newStatus = request.getParameter("newstatus");
//out.println(newStatus);
    // Update the status in the database
    Connection con = new Dbconn.dbconn().getConnection();
    PreparedStatement ps = con.prepareStatement("UPDATE jobs SET status = ? WHERE jobid = ?");
    ps.setString(1, newStatus);
    ps.setString(2, jobid);
    int rowsUpdated = ps.executeUpdate();
    con.close();

    // Redirect back to the jobs page with a status parameter
//    String redirectURL = "admin-viewde-jb.jsp";
//    if (rowsUpdated > 0) {
//        redirectURL += "?status=success";
//    } else {
//        redirectURL += "?status=error";
//    }
//    response.sendRedirect(redirectURL);
//} catch (Exception e) {
//    e.printStackTrace();
//    response.sendRedirect("admin-viewde-jb.jsp");
//}
String swalScript = "";
    if (rowsUpdated > 0) {
        swalScript = "Swal.fire({ icon: 'success', title: 'Status Updated', text: 'Status updated successfully.', width: '20%', height: 'auto' }).then((result) => { if (result.isConfirmed) { window.location.href = 'admin-viewde-jb.jsp'; } });";
    } else {
        swalScript = "Swal.fire({ icon: 'error', title: 'Error', text: 'Error updating status.', width: '20%', height: 'auto' }).then((result) => { if (result.isConfirmed) { window.location.href = 'admin-viewde-jb.jsp'; } });";
    }

    // Output the SweetAlert script
    out.println("<script>" + swalScript + "</script>");
} catch (Exception e) {
    e.printStackTrace();
    // Handle exception and show an error SweetAlert if needed
    out.println(e);
}
%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<%
try {
    // Retrieve form data
    String jobid = request.getParameter("jobid");
    //out.println(jobid);
    String companyid = request.getParameter("companyid");
    //out.println(companyid);
    String newStatus = request.getParameter("newstatus");
    String source = request.getParameter("source"); // Retrieve the source parameter
    out.println(source);
    Connection con = new Dbconn.dbconn().getConnection();
    PreparedStatement ps;

    if ("companyid".equals(source)) {
        // Update the company table based on jobid and newStatus
        ps = con.prepareStatement("UPDATE company SET status = ? WHERE companyid = ?");
    } else {
        // Update the jobs table based on jobid and newStatus
        ps = con.prepareStatement("UPDATE jobs SET status = ? WHERE jobid = ?");
    }
    
    ps.setString(1, newStatus);
    ps.setString(2, jobid);
    ps.setString(3,companyid);
    int rowsUpdated = ps.executeUpdate();
    con.close();

    String swalScript = "";
    if (rowsUpdated > 0) {
        swalScript = "Swal.fire({ icon: 'success', title: 'Status Updated', text: 'Status updated successfully.', width: '20%', height: 'auto' }).then((result) => { if (result.isConfirmed) {";
        
        if ("companyid".equals(source)) {
            swalScript += " window.location.href = 'admin-pending-comp.jsp';"; // Redirect to company page
        } else {
            swalScript += " window.location.href = 'admin-viewde-jb.jsp';"; // Redirect to job page
        }
        
        swalScript += " }});";
    } else {
        swalScript = "Swal.fire({ icon: 'error', title: 'Error', text: 'Error updating status.', width: '20%', height: 'auto' }).then((result) => { if (result.isConfirmed) { ";
          
        if ("companyid".equals(source)) {
            swalScript += " window.location.href = 'admin-pending-comp.jsp';"; // Redirect to company page
        } else {
            swalScript += " window.location.href = 'admin-viewde-jb.jsp';"; // Redirect to job page
        }
        
        swalScript += " }});";
    }

    // Output the SweetAlert script
    out.println("<script>" + swalScript + "</script>");
} catch (Exception e) {
    e.printStackTrace();
    String swalScript = "Swal.fire({ icon: 'error', title: 'Error', text: 'An error occurred.', width: '20%', height: 'auto' }).then((result) => { if (result.isConfirmed) { window.location.href = 'admin-viewde-jb.jsp'; } });";
    out.println("<script>" + swalScript + "</script>");
}
%>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<%
try {
    // Retrieve form data
    String jobid = request.getParameter("jobid");
    String companyid = request.getParameter("companyid");
    String newStatus = request.getParameter("newstatus");
    String source2 = request.getParameter("source2");
    String source = request.getParameter("source"); // Retrieve the source parameter
//out.println(source2);
//out.println(source);
if (source != null) {
    out.println("source is: " + source);
}else{
out.println("source2 is: " + source2);
    }

   
    Connection con = new Dbconn.dbconn().getConnection();
    PreparedStatement ps;

    if ("companyid".equals(source)) {
        // Update the company table based on companyid and newStatus
        ps = con.prepareStatement("UPDATE company SET status = ? WHERE companyid = ?");
        ps.setString(1, newStatus);
        ps.setString(2, companyid);
    } else if ("companyid".equals(source2)) {
        // Update the company table based on companyid and newStatus
        ps = con.prepareStatement("UPDATE company SET status = ? WHERE companyid = ?");
        ps.setString(1, newStatus);
        ps.setString(2, companyid);
    } else {
        // Update the jobs table based on jobid and newStatus
        ps = con.prepareStatement("UPDATE jobs SET status = ? WHERE jobid = ?");
        ps.setString(1, newStatus);
        ps.setString(2, jobid);
    }

    int rowsUpdated = ps.executeUpdate();
    con.close();

    String swalScript = "";
    if (rowsUpdated > 0) {
        swalScript = "Swal.fire({ icon: 'success', title: 'Status Updated', text: 'Status updated successfully.', width: '20%', height: 'auto' }).then((result) => { if (result.isConfirmed) {";
        
        if ("companyid".equals(source)) {
            swalScript += " window.location.href = 'admin-pending-comp.jsp';"; // Redirect to admin-pending-comp.jsp
        } else if ("companyid".equals(source2)) {
            swalScript += " window.location.href = 'admin-all-comp.jsp';"; // Redirect to admin-all-comp.jsp
        } else {
            swalScript += " window.location.href = 'admin-viewde-jb.jsp';"; // Redirect to admin-viewde-jb.jsp
        }
        
        swalScript += " }});";
    } else {
      swalScript = "Swal.fire({ icon: 'error', title: 'Error', text: 'Error updating status.', width: '20%', height: 'auto' }).then((result) => { if (result.isConfirmed) { ";
          
if ("companyid".equals(source)) {
    swalScript += " window.location.href = 'admin-pending-comp.jsp';";
} else if ("companyid".equals(source2)) {
    swalScript += " window.location.href = 'admin-all-comp.jsp';";
} else {
    swalScript += " window.location.href = 'admin-viewde-jb.jsp';";
}
        swalScript += " }});";
        
    }

    // Output the SweetAlert script
    out.println("<script>" + swalScript + "</script>");
} catch (Exception e) {
    e.printStackTrace();
    String swalScript = "Swal.fire({ icon: 'error', title: 'Error', text: 'An error occurred.', width: '20%', height: 'auto' }).then((result) => { if (result.isConfirmed) { window.location.href = 'admin-viewde-jb.jsp'; } });";
    out.println("<script>" + swalScript + "</script>");
}
%>
