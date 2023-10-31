<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Job Dekho
        </title>
        <!-- Add these lines in the <head> section of your HTML document -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <link rel="stylesheet" href="assets/css/price_rangs.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <style>
            .horizontal-bar {
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 20px;
                background-color: #f5f5f5;
                border-top: 1px solid #ccc;
                position: fixed;
                top: 0;
                width: 100%;
                z-index: 1000;
            }

            .horizontal-item {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .custom-select {
                border: none;
                background: transparent;
                cursor: pointer;
                padding: 5px 10px;
                border-radius: 5px;
                border: 1px solid #ccc;
            }

            .items-link a {
                text-decoration: none;
                color: #333;
            }

            .items-link a:hover {
                color: #f76b1c;
            }

        </style>
        <style>
            .nav-item.dropdown {
                //background-color: #f0f0f0; /* Add background color to the dropdown container */
                padding: 2px; /* Add some padding for spacing */
            }

            .form-control {
                font-weight: bold; /* Make the text bold */
                font-size: 18px; /* Apply font size h4 */
                border: none; /* Remove the border */
                background-color:#fffdf9 ; /* Set background color for the select box */
            }

            .form-control option {
                font-weight: normal; /* Reset font weight for options */
            }


        </style>
<!--        <style>
        /* Button used to open the chat form */
        .open-button {

            background-color: #839577;

            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            position: fixed;
            bottom: 20px;
            right: 30px;
            border-radius: 30px;
            cursor: pointer;
            z-index: 1000;
            box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s, transform 0.3s;
        }

        .open-button:hover {
            background-color: #2780a0;
            transform: scale(1.05);
        }

        /* The popup chat - hidden by default */
        .chat-popup {
            display: none;
            position: fixed;
            bottom: 60px;
            right: 33px;
            border: 2px solid #2b2626;
            z-index: 9;
        }

        .close-button {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 35px;
            color: #ffffff;
            cursor: pointer;
        }

        .close-button:hover {
            color: #d44a3e;
        }

        /* Add styles to the form container */
        .form-container {
            max-width: 300px;
            padding: 20px;
            background-color: white;
        }

        /* Full-width textarea */
        .form-container textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
        }

        /* Set a style for the submit/send button */
        .form-container .btn {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            width: 100%;
        }

        /* Add some hover effects to buttons */
        .form-container .btn:hover {
            background-color: #45a049;
        }

        .form-container .cancel {
            background-color: #ffffff;
        }

        .form-container .cancel:hover {
            background-color: #aaa;
        }
    </style>-->
    </head>

    <body>
        
        
        
            <style>
        df-messenger {
            --df-messenger-bot-message: #050561;
            --df-messenger-button-titlebar-color: #ff0066;
            --df-messenger-chat-background-color: #fafafa;
            --df-messenger-font-color: white;
            --df-messenger-send-icon: #878fac;
            --df-messenger-user-message:#7599bd;
        }
    </style>     
       
<script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
<df-messenger
  intent="WELCOME"
  chat-title="JobPortal"
  agent-id="fe28b9df-4b66-4b8b-a9bc-2173caa6d3ce"
  language-code="en"
></df-messenger>
<!--         <button class="open-button" onclick="openForm()">Chat</button>


    <div class="chat-popup" id="myForm">
        <span class="close-button" onclick="closeForm()">&times;</span>
        <iframe id="chatbot-iframe" width="350" height="430" allow="microphone;"
            src="https://console.dialogflow.com/api-client/demo/embedded/dcdec622-8dd2-4714-9227-f4bf14f5cec5">

        </iframe>

<iframe width="350" height="430" allow="microphone;" src="https://console.dialogflow.com/api-client/demo/embedded/2b7ca981-8861-4a88-963e-2f52c792e3ba"></iframe>
         <button type="button" class="btn cancel" onclick="closeForm()">Close</button> 


    </div>

    <script>
        function openForm() {
            document.getElementById("myForm").style.display = "block";
        }

        function closeForm() {
            document.getElementById("myForm").style.display = "none";
        }
    </script>-->
        <!-- Preloader Start -->
        <div id="preloader-active">
            <div class="preloader d-flex align-items-center justify-content-center">
                <div class="preloader-inner position-relative">
                    <div class="preloader-circle"></div>
                    <div class="preloader-img pere-text">
                        <img src="assets/img/logo/logo.png" alt="">
                    </div>
                </div>
            </div>
        </div>
        <!-- Preloader Start -->
        <header>
            <!-- Header Start -->
            <div class="header-area header-transparrent">
                <div class="headder-top header-sticky">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-3 col-md-2">
                                <!-- Logo -->
                                <div class="logo">
                                    <a href="index.jsp"><img src="assets/img/logo/logg1.png" width="200px" alt=""></a>
                                </div>  
                            </div>
                            <div class="col-lg-9 col-md-9">
                                <div class="menu-wrapper">
                                    <!-- Main-menu -->
                                    <div class="main-menu">
                                        <nav class="d-none d-lg-block">
                                            <ul id="navigation">
                                                <li><a href="candidate-index.jsp">Home</a></li>
                                                <li><a href="candidate-jobs.jsp">Jobs</a></li>
                                                <li><a href="candidate-myjobs.jsp">My Jobs</a></li>
                                                <li><a href="candidate-feedback.jsp">Feedback</a></li>

                                                <li><a href="candidate-profile.jsp">My Profile</a></li>
                                                <li><a href="index.jsp">Logout</a></li>
                                            </ul>
                                        </nav>
                                    </div>          

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- Header End -->
        </header>

<!--<p>${sessionScope.email}</p>-->

        <!-- Featured_job_start -->
        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider section-overly slider-height1 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Get your Dream job</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="slider-area ">
            <div class="single-slider section-overly slider-height1 d-flex align-items-center" >
                <div class="container">
                    <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
                    <%@ page import="org.apache.commons.codec.binary.Base64" %>
                    <%@ page import="Dbconn.dbconn"%>
                    <%@ page import="java.time.*" %>
                    <%@ page import="java.time.format.DateTimeFormatter" %>
                    <%@ page import="java.time.temporal.ChronoUnit" %>
                    <%@ page import="java.net.URLEncoder" %>
                    <%@ page import="java.util.List" %>
                    <%@ page import="java.util.ArrayList" %>
                    <%@ page import="java.util.Set" %>
                    <%@ page import="java.util.HashSet" %>

                    <%--
                 try {
                     // Get database connection
                     Connection connection = new Dbconn.dbconn().getConnection();

                     // Fetch job postings and related company information using JOIN
                     PreparedStatement navStatement = connection.prepareStatement("SELECT c.* FROM company c");
                     ResultSet navResultSet = navStatement.executeQuery();
   
                     ArrayList<String> jobLocations = new ArrayList<>();
                     while (navResultSet.next()) {
                         jobLocations.add(navResultSet.getString("address"));
                     }

             //        PreparedStatement cardStatement = connection.prepareStatement("SELECT j.*, c.* FROM jobs j INNER JOIN company c ON j.companyid = c.companyid");
                 PreparedStatement  cardStatement = connection.prepareStatement("SELECT j.*,c.*  FROM jobs j INNER JOIN company c ON j.companyid = c.companyid", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);        
             ResultSet cardResultSet = cardStatement.executeQuery();
    
                     ArrayList<String> jobTypes = new ArrayList<>();
                     ArrayList<String> experienceLevels = new ArrayList<>();
    
                     while (cardResultSet.next()) {
                         // Store values for dropdowns
                         jobTypes.add(cardResultSet.getString("jobnature"));
                         experienceLevels.add(cardResultSet.getString("experience_education"));
                     }
    
                     cardResultSet.beforeFirst(); // Reset the cursor to the beginning
        
                     PreparedStatement countStatement = connection.prepareStatement("SELECT COUNT(*) AS totalJobs FROM jobs");
                     ResultSet countResultSet = countStatement.executeQuery();
                     countResultSet.next(); // Move to the first row of the result set
                     int totalJobs = countResultSet.getInt("totalJobs");
    
                     Set<String> uniqueLocations = new HashSet<>();
                     for (String companyLocation : jobLocations) {
                         uniqueLocations.add(companyLocation);
                     }
                    --%>

<%--
      Connection connection = null;
    PreparedStatement navStatement = null;
    ResultSet navResultSet = null;
    PreparedStatement cardStatement = null;
    ResultSet cardResultSet = null;
    try {
        // Get database connection
       connection = new Dbconn.dbconn().getConnection();

        // Fetch job postings and related company information using JOIN
        navStatement = connection.prepareStatement("SELECT c.* FROM company c");
        navResultSet = navStatement.executeQuery();

        ArrayList<String> jobLocations = new ArrayList<>();
        while (navResultSet.next()) {
            jobLocations.add(navResultSet.getString("address"));
        }

        // Construct the base SQL query
        String sqlQuery = "SELECT j.*, c.* FROM jobs j INNER JOIN company c ON j.companyid = c.companyid";

        // Retrieve selected filter values from request parameters
        String selectedJobType = request.getParameter("jobType");
        Set<String> uniqueJobTypes = new HashSet<>(jobTypes);
        String selectedExperience = request.getParameter("experience_education");
        String selectedAddress = request.getParameter("address");

        // If any filter is selected, add the WHERE clause
        if (selectedJobType != null || selectedExperience != null || selectedAddress != null) {
            sqlQuery += " WHERE 1=1"; // Start the WHERE clause

            // Add conditions for each filter, if applicable
            if (selectedJobType != null && !selectedJobType.isEmpty()) {
                sqlQuery += " AND j.jobnature = ?";
            }
            if (selectedExperience != null && !selectedExperience.isEmpty()) {
                sqlQuery += " AND j.experience_education = ?";
            }
            if (selectedAddress != null && !selectedAddress.isEmpty()) {
                sqlQuery += " AND c.address = ?";
            }
        }
sqlQuery += " AND j.status = 'Accepted'";
        // Prepare and execute the query
        cardStatement = connection.prepareStatement(sqlQuery, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        int parameterIndex = 1;
        if (selectedJobType != null && !selectedJobType.isEmpty()) {
            cardStatement.setString(parameterIndex++, selectedJobType);
        }
        if (selectedExperience != null && !selectedExperience.isEmpty()) {
            cardStatement.setString(parameterIndex++, selectedExperience);
        }
        if (selectedAddress != null && !selectedAddress.isEmpty()) {
            cardStatement.setString(parameterIndex++, selectedAddress);
        }

        cardResultSet = cardStatement.executeQuery();

        ArrayList<String> jobTypes = new ArrayList<>();
        ArrayList<String> experienceLevels = new ArrayList<>();

        while (cardResultSet.next()) {
            // Store values for dropdowns
            jobTypes.add(cardResultSet.getString("jobnature"));
            experienceLevels.add(cardResultSet.getString("experience_education"));
        }

        cardResultSet.beforeFirst(); // Reset the cursor to the beginning

        PreparedStatement countStatement = connection.prepareStatement("SELECT COUNT(*) AS totalJobs FROM jobs");
        ResultSet countResultSet = countStatement.executeQuery();
        countResultSet.next(); // Move to the first row of the result set
        int totalJobs = countResultSet.getInt("totalJobs");

        Set<String> uniqueLocations = new HashSet<>();
        for (String companyLocation : jobLocations) {
            uniqueLocations.add(companyLocation);
        }
   --%>   
    <!-- Your HTML code for rendering the filtered results -->
<%
    Connection connection = null;
    PreparedStatement navStatement = null;
    ResultSet navResultSet = null;
    PreparedStatement cardStatement = null;
    ResultSet cardResultSet = null;
    
    ArrayList<String> jobTypes = new ArrayList<>();
    ArrayList<String> experienceLevels = new ArrayList<>();
    
    try {
        // Get database connection
        connection = new Dbconn.dbconn().getConnection();

        // Fetch job postings and related company information using JOIN
        navStatement = connection.prepareStatement("SELECT c.* FROM company c");
        navResultSet = navStatement.executeQuery();

        ArrayList<String> jobLocations = new ArrayList<>();
        while (navResultSet.next()) {
            jobLocations.add(navResultSet.getString("address"));
        }

        // Construct the base SQL query
        String sqlQuery = "SELECT j.*, c.* FROM jobs j INNER JOIN company c ON j.companyid = c.companyid";

        // Retrieve selected filter values from request parameters
        String selectedJobType = request.getParameter("jobType");
        String selectedExperience = request.getParameter("experience_education");
        String selectedAddress = request.getParameter("address");

        // If any filter is selected, add the WHERE clause
        if (selectedJobType != null || selectedExperience != null || selectedAddress != null) {
            sqlQuery += " WHERE 1=1"; // Start the WHERE clause

            // Add conditions for each filter, if applicable
            if (selectedJobType != null && !selectedJobType.isEmpty()) {
                sqlQuery += " AND j.jobnature = ?";
            }
            if (selectedExperience != null && !selectedExperience.isEmpty()) {
                sqlQuery += " AND j.experience_education = ?";
            }
            if (selectedAddress != null && !selectedAddress.isEmpty()) {
                sqlQuery += " AND c.address = ?";
            }
        }
        sqlQuery += " AND j.status = 'Accepted'";
        
        // Prepare and execute the query
        cardStatement = connection.prepareStatement(sqlQuery, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        int parameterIndex = 1;
        if (selectedJobType != null && !selectedJobType.isEmpty()) {
            cardStatement.setString(parameterIndex++, selectedJobType);
        }
        if (selectedExperience != null && !selectedExperience.isEmpty()) {
            cardStatement.setString(parameterIndex++, selectedExperience);
        }
        if (selectedAddress != null && !selectedAddress.isEmpty()) {
            cardStatement.setString(parameterIndex++, selectedAddress);
        }

        cardResultSet = cardStatement.executeQuery();

        while (cardResultSet.next()) {
            // Store values for dropdowns
            jobTypes.add(cardResultSet.getString("jobnature"));
            experienceLevels.add(cardResultSet.getString("experience_education"));
        }

        cardResultSet.beforeFirst(); // Reset the cursor to the beginning

        PreparedStatement countStatement = connection.prepareStatement("SELECT COUNT(*) AS totalJobs FROM jobs where status='Accepted'");
        ResultSet countResultSet = countStatement.executeQuery();
        countResultSet.next(); // Move to the first row of the result set
        int totalJobs = countResultSet.getInt("totalJobs");
 Set<String> uniqueExperienceLevels = new HashSet<>(experienceLevels);
        Set<String> uniqueLocations = new HashSet<>();
        for (String companyLocation : jobLocations) {
            uniqueLocations.add(companyLocation);
        }
        


    %> 

                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #e3f2fd;">


                                 <!--     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                        <span class="navbar-toggler-icon"></span>
                                    </button>-->

                                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                        <ul class="navbar-nav mr-auto">

                                            <li class="nav-item ml-3 dropdown">
                                                <div class="nav-item ml-3">
                                                    <!--    <label for="jobTypeSelect"><b>Job Type:</b></label>-->
<!--                                              <select id="jobTypeSelect" class="form-control">
                                                <option value="">Job Type</option>
                                                <% for (String jobType : jobTypes) { %>
                                                    <option value="<%= jobType %>"><%= jobType %></option>
                                                <% } %>
                                            </select>-->
                                             <select id="jobTypeSelect" class="form-control">
        <option value="">Job Type</option>
        <% for (String jobType : new HashSet<>(jobTypes)) { %>
            <option value="<%= jobType %>"><%= jobType %></option>
        <% } %>
    </select>
                                                </div>
                                            </li>

                                        
                                            
                                            
                                            <li class="nav-item dropdown ml-3">
    <div class="nav-item ml-3">
        <select id="addressSelect" class="form-control">
            <option value="">Job Location</option>
            <% for (String location : uniqueLocations) { %>
                <option value="<%= location %>"><%= location %></option>
            <% } %>
        </select>
    </div>
</li>


                                 <li class="nav-item dropdown ml-3">
<!--    <div class="nav-item ml-3">
        <select id="experienceSelect" class="form-control">
            <option value="">Experience Level</option>
            <% for (String experience : experienceLevels) { %>
                <option value="<%= experience %>"><%= experience %></option>
            <% } %>
        </select>
    </div>-->
            <select id="experienceSelect" class="form-control">
    <option value="">Experience Level</option>
    <% for (String experience : uniqueExperienceLevels) { %>
        <option value="<%= experience %>"><%= experience %></option>
    <% } %>
</select>
</li>



                                        </ul>
                                        <div class="text-center mb-2">
                                            <button id="filterButton" class="btn btn-outline-primary btn-sm filter-button" type="button">Filter</button>
                                        </div>

                                </nav>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<style>
    .align-right {
        display: inline-block; /* To allow text alignment */
        text-align: right;
        width: 100%; /* This ensures the text takes up the entire width of the container */
    }
</style>


        <div class="job-listing-area pt-120 pb-120">

            <div class="container">

                <style>
                    .container1 {
                        max-height: 500px;
                        /* Adjust the maximum height as needed */
                        overflow-y: auto;
                    }
                </style>
 


                <div class="col-xl-12 col-lg-9 col-md-8">
                    <!-- Featured_job_start -->
                    <section class="featured-job-area">
                        <div class="row">
                            <div class="col-lg-12">

<div class="count-job mb-35">
    <span class="align-right"><%= totalJobs %> Jobs found</span>
</div>

                            </div>
                        </div>





                        <div class="container " id="cardContainer">

                

  <%
      

        // Pagination setup
        int currentPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
        int jobsPerPage = 3;
        int totalJobs2 = jobTypes.size(); // Use the size of jobTypes for total jobs

        int totalPages = (int) Math.ceil((double) totalJobs2 / jobsPerPage);
        int startIndex = (currentPage - 1) * jobsPerPage;
        int endIndex = Math.min(startIndex + jobsPerPage, totalJobs2);
        
        // Loop through the job listings for the current page
        for (int i = startIndex; i < endIndex; i++) {
            cardResultSet.absolute(i + 1); // Move cursor to the current row
            String companyName = cardResultSet.getString("company");
                           String companyLocation = cardResultSet.getString("address");
                           byte[] companyImageBytes = cardResultSet.getBytes("cimage");
                           String companyImageBase64 = Base64.encodeBase64String(companyImageBytes);
                           String salary = cardResultSet.getString("salary");
                           String job2 = cardResultSet.getString("jobnature");
                            String jobType = cardResultSet.getString("jobnature");
                           String job = cardResultSet.getString("job");
                           String time = cardResultSet.getString("time");
                           int id = cardResultSet.getInt("jobid");//experience_education
                           String experienceLevel = cardResultSet.getString("experience_education");

        %>

                            <%
                            // Assuming jobPostingTime is the time of job posting as a String in a format like "yyyy-MM-dd HH:mm:ss"
                            String jobPostingTimeStr = time; // Replace this with the actual job posting time
                            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                            LocalDateTime jobPostingTime = LocalDateTime.parse(jobPostingTimeStr, formatter);

                            // Get the current time
                            LocalDateTime currentTime = LocalDateTime.now();

                            // Calculate the time difference
                            long daysDiff = ChronoUnit.DAYS.between(jobPostingTime, currentTime);
                            LocalDateTime remainingTime = jobPostingTime.plusDays(daysDiff);
                            long hoursDiff = ChronoUnit.HOURS.between(remainingTime, currentTime);
                            long minutesDiff = ChronoUnit.MINUTES.between(remainingTime.plusHours(hoursDiff), currentTime);

                            // Calculate the maximum time unit
                            long maxTime;
                            String unitLabel;

                            if (daysDiff > 0) {
                                maxTime = daysDiff;
                                unitLabel = "days";
                            } else if (hoursDiff > 0) {
                                maxTime = hoursDiff;
                                unitLabel = "hours";
                            } else {
                                maxTime = minutesDiff;
                                unitLabel = "minutes";
                            }

                            // Store the formatted time difference in a string
                            String ftime = maxTime + " " + unitLabel + " ago";

                            // Output the time difference

                            %>

                   <div class="single-job-items mb-30 job-item" data-jobtype="<%= jobType %>" data-address="<%= companyLocation %>" data-experience="<%= experienceLevel %>">
    <div class="job-items">
        <div class="company-img">
            <a href="#"><img src="data:image/jpeg;base64,<%= companyImageBase64 %>"  width="50px" height="30px" alt="Company Image" ></a>
        </div>
        <div class="job-tittle job-tittle2">
            <a href="#">
                <h4><%= job %></h4>
            </a>
            <ul>
                <li><%= companyName %></li>
                <li><i class="fas fa-map-marker-alt"></i><%= companyLocation %></li>
                <li><%= salary %></li>
            </ul>
        </div>
    </div>
    <div class="items-link items-link2 f-right">
        <a href="candidate-job-details.jsp?id=<%=id%>"><%= job2 %></a>
        <span><%= ftime %></span>
    </div>
</div>



                            <%
                                 }
                           
                               
                            %>     
                        </div>
             

                
     <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <% if (currentPage > 1) { %>
      <li class="page-item">
        <a class="page-link" href="?page=<%= currentPage - 1 %>" tabindex="-1">Previous</a>
      </li>
    <% } else { %>
      <li class="page-item disabled">
        <span class="page-link">Previous</span>
      </li>
    <% } %>

    <% for (int pages = 1; pages <= totalPages; pages++) { %>
      <li class="page-item <%= pages == currentPage ? "active" : "" %>">
        <a class="page-link" href="?page=<%= pages %>"><%= pages %></a>
      </li>
    <% } %>

    <% if (currentPage < totalPages) { %>
      <li class="page-item">
        <a class="page-link" href="?page=<%= currentPage + 1 %>">Next</a>
      </li>
    <% } else { %>
      <li class="page-item disabled">
        <span class="page-link">Next</span>
      </li>
    <% } %>
  </ul>
</nav>

</div>
                                     
<script>
document.addEventListener('DOMContentLoaded', function() {
    const filterButton = document.getElementById('filterButton');
    filterButton.addEventListener('click', function() {
        const selectedJobType = document.getElementById('jobTypeSelect').value;
        const selectedAddress = document.getElementById('addressSelect').value;
        const selectedExperience = document.getElementById('experienceSelect').value;
        
        // Filter the displayed job items using the captured filter values
        const jobItems = document.querySelectorAll('.job-item');
        jobItems.forEach(jobItem => {
            const jobType = jobItem.getAttribute('data-jobtype');
            const jobAddress = jobItem.getAttribute('data-address'); // Add this attribute to your HTML
            const jobExperience = jobItem.getAttribute('data-experience'); // Add this attribute to your HTML
            
            // Show/hide the job item based on the filter values
            if ((selectedJobType === '' || jobType === selectedJobType) &&
                (selectedAddress === '' || jobAddress === selectedAddress) &&
                (selectedExperience === '' || jobExperience === selectedExperience)) {
                jobItem.style.display = 'block';
            } else {
                jobItem.style.display = 'none';
            }
        });
    });
});
</script>


                
                
                </div>
                </section>
                       
        </div>
    </div>
          
          
            </div>


           
<%
    // Close the database connection
 
} catch (Exception e) {
    e.printStackTrace();
out.print(e);
} finally {
    if (cardResultSet != null) {
        try { cardResultSet.close(); } catch (Exception e) {}
    }
    if (cardStatement != null) {
        try { cardStatement.close(); } catch (Exception e) {}
    }
    if (navResultSet != null) {
        try { navResultSet.close(); } catch (Exception e) {}
    }
    if (navStatement != null) {
        try { navStatement.close(); } catch (Exception e) {}
    }
    // Close other resources and connection
    if (connection != null) {
        try { connection.close(); } catch (Exception e) {}
    }
}
%>
    <%--                       
 } catch (Exception e) {
    // Handle any exceptions
    out.print(e);
}
    --%>




    <br>
    <footer>
        <!-- Footer Start-->
        <div class="footer-area footer-bg footer-padding">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="single-footer-caption mb-30">
                                <div class="footer-tittle">
                                    <h4>About Us</h4>
                                    <div class="footer-pera">
                                        <p>Finding jobs easily from our website and the companies hosting jobs very easily.</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Contact Info</h4>
                                <ul>
                                    <li>
                                        <p>Address :Siris road Lb nagar,near metro station</p>
                                    </li>
                                    <li><a href="#">Phone : +8880 44338899</a></li>
                                    <li><a href="#">Email : codebook@gmail.com</a></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Important Link</h4>
                                <ul>
                                    <li><a href="#"> View Project</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                    <li><a href="#">Testimonial</a></li>

                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
                <!--  -->
                <div class="row footer-wejed justify-content-between">
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <!-- logo -->
                        <div class="footer-logo mb-20">
                            <a href="index.jsp"><img src="assets/img/logo/logg1.png" width="180" alt=""></a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                        <div class="footer-tittle-bottom">
                            <span>5000+</span>
                            <p>Talented Hunter</p>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                        <div class="footer-tittle-bottom">
                            <span>451</span>
                            <p>Talented Hunter</p>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                        <!-- Footer Bottom Tittle -->
                        <div class="footer-tittle-bottom">
                            <span>568</span>
                            <p>Talented Hunter</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer-bottom area -->
        <div class="footer-bottom-area footer-bg">
            <div class="container">
                <div class="footer-border">
                    <div class="row d-flex justify-content-between align-items-center">
                        <div class="col-xl-10 col-lg-10 ">
                            <div class="copyright" style="color:aliceblue">
                                &copy; Copyrights @2022 by  <span class="text-color:white">Job Dekho</span>  | Designed and Developed by <a href="https://codebook.in/" style="color:rgb(12, 152, 216)" target="_blank">CODEBOOK</a>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-2">
                            <div class="footer-social f-right">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="fas fa-globe"></i></a>
                                <a href="#"><i class="fab fa-behance"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>
    <!-- JS here -->

    <!-- All JS Custom Plugins Link Here here -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/price_rangs.js"></script>

    <!-- One Page, Animated-HeadLin -->
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/animated.headline.js"></script>
    <script src="assets/js/jquery.magnific-popup.js"></script>

    <!-- Scrollup, nice-select, sticky -->
    <script src="assets/js/jquery.scrollUp.min.js"></script>
    <script src="assets/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/jquery.sticky.js"></script>

    <!-- contact js -->
    <script src="assets/js/contact.js"></script>
    <script src="assets/js/jquery.form.js"></script>
    <script src="assets/js/jquery.validate.min.js"></script>
    <script src="assets/js/mail-script.js"></script>
    <script src="assets/js/jquery.ajaxchimp.min.js"></script>

    <!-- Jquery Plugins, main Jquery -->	
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>

</body>
</html>






<!--    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>-->
<!--     <div class="input-group" style="max-width: 200px;">
            <div class="input-group-prepend">
                <button class="btn btn-sm btn-outline-success my-2 my-sm-0 search-icon" type="button">
                    <i class="bi bi-search"></i>
                </button>
            </div>
            <input class="form-control" type="search" placeholder="Search" aria-label="Search" style="display: none;">
        </div>-->


<!--                               <script>
    document.addEventListener("DOMContentLoaded", function() {
        const searchIcon = document.querySelector(".search-icon");
        const searchInput = document.querySelector(".form-control");

        searchIcon.addEventListener("click", function() {
            searchInput.style.display = "block"; // Show the search input
            searchInput.focus(); // Focus on the input
        });

        searchInput.addEventListener("blur", function() {
            if (this.value === "") {
                this.style.display = "none"; // Hide the search input if empty
            }
        });
    });
</script>-->
<!-- Featured_job_end -->
<%--<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-end">
       
        <li class="page-item <%= pageNumber <= 1 ? "disabled" : "" %>">
            <a class="page-link" href="?page=<%= URLEncoder.encode(String.valueOf(pageNumber - 1), "UTF-8") %>" tabindex="-1">Previous</a>
        </li>

       
        <% for (int pageNum = 1; pageNum <= totalPages; pageNum++) { %>
            <li class="page-item <%= pageNum == pageNumber ? "active" : "" %>">
                <a class="page-link" href="?page=<%= URLEncoder.encode(String.valueOf(pageNum), "UTF-8") %>"><%= pageNum %></a>
            </li>
        <% } %>

       
        <li class="page-item <%= pageNumber >= totalPages ? "disabled" : "" %>">
            <a class="page-link" href="?page=<%= URLEncoder.encode(String.valueOf(pageNumber + 1), "UTF-8") %>">Next</a>
        </li>
    </ul>
</nav>--%>


<%--

int pageNumber = 1;
int pageSize = 2; 

int totalRecords = 0;
if (resultSet.last()) {
    totalRecords = resultSet.getRow();
    resultSet.beforeFirst();
}
int totalPages = (int) Math.ceil((double) totalRecords / pageSize);

int startRecordIndex = (pageNumber - 1) * pageSize;

resultSet.absolute(startRecordIndex);
--%>