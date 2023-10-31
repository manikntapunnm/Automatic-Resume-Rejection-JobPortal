<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.css">
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
                       <%
String msg2 = (String) session.getAttribute("msg2");
if (msg2 != null) {
    // Clear the message attribute to prevent repeated display
   
%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>
    <script>
        Swal.fire({
            icon: 'success',
            text: '<%= msg2 %>',
            timer: 2000, 
            //timerProgressBar: true,
            
            showConfirmButton: false
        })
    </script>
<%
    session.removeAttribute("msg2");
}
%>
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
    <main>

        <br>
      
       <p>${sessionScope.email}</p>
        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider section-overly slider-height1 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Applied Jobs</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <!-- Hero Area End -->
          <br><br>
        <!-- Content wrapper -->
 <div class="content-wrapper p-5">
    <!-- Content -->
    
    
   
  
    
    <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>

<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%>
 <p>${sessionScope.foundkeys}</p>
   
      <!-- Responsive Table -->
      <div class="card">
        <h5 class="card-header">Applied Jobs</h5>
        <div class="table-responsive text-nowrap">
          <table class="table">
            <thead>
              <tr class="text-nowrap">
               
                <th>Company Name</th>
                <th>Company Location</th>
                <th>Salary</th>
                   <th>Job</th>
                <th>Job nature</th>
                <th>Education + Experience</th>
                <th>Status</th>
                <th>Application</th>
                 <th>Date</th>
                
                
              </tr>
            </thead>
                   <%
String jobid = request.getParameter("jobid");
session.setAttribute("jobid", jobid);
String email = (String) session.getAttribute("email");
////out.println(email);
try {
    // Get database connection
    Connection connection = new Dbconn.dbconn().getConnection();

    // Fetch job postings and related company information using JOIN
//    PreparedStatement statement = connection.prepareStatement(
//    "SELECT j.*, c.company, c.address,c.cimage, c.email FROM jobs j INNER JOIN company c ON j.companyid = c.companyid");
//    
//    PreparedStatement statement = connection.prepareStatement(
//    "SELECT j.*, c.company, c.address, c.cimage, c.email, a.status " +
//    "FROM jobs j " +
//    "INNER JOIN company c ON j.companyid = c.companyid " +
//    "LEFT JOIN applications a ON j.jobid = a.jobid");

   PreparedStatement statement = connection.prepareStatement(
    "SELECT a.*, j.job,j.jobnature, j.salary,j.experience_education, c.address, c.company " +
    "FROM applications a " +
    "INNER JOIN jobs j ON a.jobid = j.jobid " +
    "INNER JOIN company c ON a.companyid = c.companyid " +
    "WHERE a.email = ?");
statement.setString(1, email);

    ResultSet resultSet = statement.executeQuery();
    
    int sno = 1; // Counter for serial number
    while (resultSet.next()) {
        String companyName = resultSet.getString("company");
       // out.println(companyName);
        String companyLocation = resultSet.getString("address");
      //  out.println(companyLocation);
        String salary = resultSet.getString("salary");
      //  out.println(salary);
        String jobNature = resultSet.getString("jobnature");
      //  out.println(jobNature);
         String job = resultSet.getString("job");
       //  out.println(job);
       // String officialEmail = resultSet.getString("email");
         //String Skills = resultSet.getString("skills");
          String Date = resultSet.getString("time(application)");
       //   out.println(Date);
          String applicationStatus = resultSet.getString("status");
          String applicationStatus2 = resultSet.getString("application");
       //   out.println(applicationStatus);
        String experienceEducation = resultSet.getString("experience_education");
       // out.println(experienceEducation);
      
       
        
        %>

            <tbody>
              <tr>
               
                
                 <td><%= companyName %></td>
            <td><%= companyLocation %></td>
            <td><%= salary %></td>
            <td><%= job %></td>
            <td><%= jobNature %></td>
               <td><textarea rows="1" cols="18" ><%= experienceEducation %></textarea></td>
            
                <td><%= applicationStatus %></td>
                <td><%= applicationStatus2 %></td>
                  <td><%= Date %></td>
                
              </tr>
              
             
                     <%
    }
    resultSet.close();
    statement.close();
    
    // Close database connection
    connection.close();
} catch (Exception e) {
    // Handle any exceptions
    out.print(e);
}
%>
  
             
            </tbody>
          </table>
        </div>
      </div>
      <!--/ Responsive Table -->
      

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
