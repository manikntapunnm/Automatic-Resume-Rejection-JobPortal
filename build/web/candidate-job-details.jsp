<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
         <title>Job Dekho
 </title>
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
   </head>

   <body>
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
    <p>${sessionScope.email}</p>
    <main>

        <br>
      <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>

<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%>
<%@ page import="java.time.*" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.temporal.ChronoUnit" %>
<%@ page import="java.net.URLEncoder" %>
   
                                         <%
try {

//String id = request.getParameter("id");
////session.setAttribute("jobid", jobid);
//    Connection connection = new Dbconn.dbconn().getConnection();
//
//    PreparedStatement statement = connection.prepareStatement("SELECT j.*, c.company, c.address,c.cimage FROM jobs j INNER JOIN company c ON j.companyid = c.companyid  where id='" + id + "'  ", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
//   
//    ResultSet resultSet = statement.executeQuery();
// 


    
String id = request.getParameter("id");
Connection connection = new Dbconn.dbconn().getConnection();

        // Fetch job postings and related company information using JOIN
        PreparedStatement statement = connection.prepareStatement("SELECT j.*, c.company, c.address, c.cimage FROM jobs j INNER JOIN company c ON j.companyid = c.companyid WHERE j.jobid = ?", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        statement.setString(1, id); // Set the parameter value
        ResultSet resultSet = statement.executeQuery();
    
      %>
      
                               
 <%
    
    while (resultSet.next() ) {
        String companyName = resultSet.getString("company");
        session.setAttribute("ComapanyName", companyName);
        String companyLocation = resultSet.getString("address");
        byte[] companyImageBytes = resultSet.getBytes("cimage");
         String companyImageBase64 = Base64.encodeBase64String(companyImageBytes);
        String salary = resultSet.getString("salary");
        String jobNature = resultSet.getString("jobnature");
        session.setAttribute("jobnature", jobNature);
        String job = resultSet.getString("job");
        session.setAttribute("job", job);

        String time = resultSet.getString("time");
        String skills = resultSet.getString("skills");
        session.setAttribute("Skills",skills);
        String desc = resultSet.getString("description");
         String ede = resultSet.getString("experience_education");
         session.setAttribute("experience",ede);
         String vacancy  = resultSet.getString("vacancy");
        
        %> 
            



<%
// Assuming jobPostingTime is the time of job posting as a String in a format like "yyyy-MM-dd HH:mm:ss"
String jobPostingTimeStr = time; // Replace this with the actual job posting time
DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
LocalDateTime jobPostingTime = LocalDateTime.parse(jobPostingTimeStr, formatter);

// Get the current time
LocalDateTime endDateTime = jobPostingTime.plusDays(30);
LocalDateTime currentTime = LocalDateTime.now();

// Calculate the time difference
long daysDiff = ChronoUnit.DAYS.between(jobPostingTime, currentTime);
LocalDateTime remainingTime = jobPostingTime.plusDays(daysDiff);
long hoursDiff = ChronoUnit.HOURS.between(remainingTime, currentTime);
long minutesDiff = ChronoUnit.MINUTES.between(remainingTime.plusHours(hoursDiff), currentTime);

long remainingDays = ChronoUnit.DAYS.between(currentTime, endDateTime);
long remainingHours = ChronoUnit.HOURS.between(currentTime, endDateTime) % 24;
long remainingMinutes = ChronoUnit.MINUTES.between(currentTime, endDateTime) % 60;



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
//String endDuration = remainingDays + " days " + remainingHours + " hours " + remainingMinutes + " minutes remaining";
String endDuration = remainingDays + " days remaining ";
// Output the time difference

%>

       
        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider section-overly slider-height1 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2><%= job %></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <!-- Hero Area End -->
            <!-- job post company Start -->
            <div class="job-post-company pt-120 pb-120">
                <div class="container">
                    <div class="row justify-content-between">
                        <!-- Left Content -->
                        <div class="col-xl-7 col-lg-8">
                            <!-- job single -->
                            <div class="single-job-items mb-50">
                                <div class="job-items">
                                   <div class="company-img">
                                            <a href="#"><img src="data:image/jpeg;base64,<%= companyImageBase64 %>"  width="50px" height="30px" alt="Company Image" ></a>
                                        </div>
                                    <div class="job-tittle">
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
                            </div>
                              <!-- job single End -->
                           
                            <div class="job-post-details">
                                <div class="post-details1 mb-50">
                                    <!-- Small Section Tittle -->
                                    <div class="small-section-tittle">
                                        <h4>Job Description</h4>
                                    </div>
                                    <p> 
                                         <%= desc %>
                                    </p>
                                </div>
                                <div class="post-details2  mb-50">
                                     <!-- Small Section Tittle -->
                                    <div class="small-section-tittle">
                                        <h4>Required Knowledge, Skills, and Abilities</h4>
                                         <p>
                                         <%= skills %>
                                     </p>
                                    </div>
<!--                                   <ul>
                                       <li>System Software Development</li>
                                       <li>Mobile Applicationin iOS/Android/Tizen or other platform</li>
                                       <li>Research and code , libraries, APIs and frameworks</li>
                                       <li>Strong knowledge on software development life cycle</li>
                                       <li>Strong problem solving and debugging skills</li>
                                   </ul>-->
                                    
                                </div>
                                <div class="post-details2  mb-50">
                                     <!-- Small Section Tittle -->
                                    <div class="small-section-tittle">
                                        <h4>Education + Experience</h4>
                                    </div>
<!--                                   <ul>
                                       <li>3 or more years of professional design experience</li>
                                       <li>Direct response email experience</li>
                                       <li>Ecommerce website design experience</li>
                                       <li>Familiarity with mobile and web apps preferred</li>
                                       <li>Experience using Invision a plus</li>
                                   </ul>-->
    <p>
                                         <%= ede %>
                                     </p>
                                </div>
                            </div>
    
                        </div>
                        <!-- Right Content -->
                        <div class="col-xl-4 col-lg-4">
                            <div class="post-details3  mb-50">
                                <!-- Small Section Tittle -->
                               <div class="small-section-tittle">
                                   <h4>Job Overview</h4>
                               </div>
                              <ul>
                                  <li>Posted date : <span>  <%=time %></span></li>
                                  <li>Location : <span><%= companyLocation %></span></li>
                                  <li>Vacancy : <span><%= vacancy %></span></li>
                                  <li>Job nature : <span><%= jobNature %></span></li>
                                  <li>Salary :  <span>$<%= salary  %> yearly</span></li>
                                  <li>Application date : <span><%= endDuration %></span></li>
                              </ul>
                             <div class="apply-btn2">
                                <a href="candidate-apply-job.jsp" class="btn">Apply Now</a>
                             </div>
                           </div>
                            <div class="post-details4  mb-50">
                                <!-- Small Section Tittle -->
                               <div class="small-section-tittle">
                                   <h4>Company Information</h4>
                               </div>
                                  <span>Colorlib</span>
                                  <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                                <ul>
                                    <li>Name: <span>Colorlib </span></li>
                                    <li>Web : <span> colorlib.com</span></li>
                                    <li>Email: <span>carrier.colorlib@gmail.com</span></li>
                                </ul>
                           </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- job post company End -->
       
       
        <% 
                             
                            
    }
                         
           
      
                                         
    resultSet.close();
    statement.close();
    
    // Close database connection
    connection.close();
%>


    <%                        
 } catch (Exception e) {
    // Handle any exceptions
    out.print(e);
}
%>
   
    </main>
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
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->
		<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
        <script src="./assets/js/price_rangs.js"></script>
        
		<!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
		<script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

		<!-- Scrollup, nice-select, sticky -->
        <script src="./assets/js/jquery.scrollUp.min.js"></script>
        <script src="./assets/js/jquery.nice-select.min.js"></script>
		<script src="./assets/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
        
    </body>
</html>
