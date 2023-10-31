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

            <style>
                body{margin-top:20px;
                background-color:#f2f6fc;
                color:#69707a;
                }
                .img-account-profile {
                    height: 10rem;
                }
                .rounded-circle {
                    border-radius: 50% !important;
                }
                .card {
                    box-shadow: 0 0.15rem 1.75rem 0 rgb(33 40 50 / 15%);
                }
                .card .card-header {
                    font-weight: 500;
                }
                .card-header:first-child {
                    border-radius: 0.35rem 0.35rem 0 0;
                }
                .card-header {
                    padding: 1rem 1.35rem;
                    margin-bottom: 0;
                    background-color: rgba(33, 40, 50, 0.03);
                    border-bottom: 1px solid rgba(33, 40, 50, 0.125);
                }
                .form-control, .dataTable-input {
                    display: block;
                    width: 100%;
                    padding: 0.875rem 1.125rem;
                    font-size: 0.875rem;
                    font-weight: 400;
                    line-height: 1;
                    color: #69707a;
                    background-color: #fff;
                    background-clip: padding-box;
                    border: 1px solid #c5ccd6;
                    -webkit-appearance: none;
                    -moz-appearance: none;
                    appearance: none;
                    border-radius: 0.35rem;
                    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
                }
                
                .nav-borders .nav-link.active {
                    color: #0061f2;
                    border-bottom-color: #0061f2;
                }
                .nav-borders .nav-link {
                    color: #69707a;
                    border-bottom-width: 0.125rem;
                    border-bottom-style: solid;
                    border-bottom-color: transparent;
                    padding-top: 0.5rem;
                    padding-bottom: 0.5rem;
                    padding-left: 0;
                    padding-right: 0;
                    margin-left: 1rem;
                    margin-right: 1rem;
                }
                  </style>
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
    <main>

        <br>
        <div class="slider-area ">
            <div class="single-slider section-overly slider-height1 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Candidate Profile</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>

       
        <div class="container-xl px-4 mt-4">
           
            <hr class="mt-0 mb-4">
           
            
            <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
                        <%

String email = (String) session.getAttribute("email");
// //out.println(email);
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = new Dbconn.dbconn().getConnection();

    // Retrieve the image from the appropriate table
    String sql = "SELECT * FROM candidates    where email=?" ;
    PreparedStatement statement = connection.prepareStatement(sql);
      statement.setString(1, email);
    ResultSet resultSet = statement.executeQuery();
   
    while (resultSet.next()) {
            byte[] ImageBytes = resultSet.getBytes("image");
         String ImageBase64 = Base64.encodeBase64String(ImageBytes);
%>
            
           
            <div class="row">
                <div class="col-xl-4">
                    <!-- Profile picture card-->
                    <form action="candidate-profile-action.jsp?email=<%=email%>" method="post" enctype="multipart/form-data">
                    <div class="card mb-4 mb-xl-0">
                        <div class="card-header">Profile</div>
                        <div class="card-body text-center">
                            <!-- Profile picture image-->
                            <img class="img-account-profile rounded-circle mb-2" src="data:image/jpeg;base64,<%= ImageBase64 %>" alt="">
                            
                            <!-- Profile picture help block-->
                            <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
                            <!-- Profile picture upload button-->
<!--                            <input type="file" id="upload" hidden/>-->
                            
                            <input type="hidden" name="email2" value="<%= email %>"> 
<!--                            <input type="file" name="image" class="form-control mb-2" required /><br>-->
<div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text">Upload</span>
        </div>
        <div class="custom-file">
            <input name="image" type="file" class="custom-file-input" id="inputGroupFile01" required onchange="showImagePreview()">
            <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
        </div>
    </div>
                          
 <input class="btn btn-info" style="border-radius:20px;" type="submit"  value="Upload Profile Pic"   />
<!-- <style>
        /* Style for the floating image */
        .floating-image {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            max-width: 80%;
            max-height: 80%;
            border: 2px solid #333;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
            background-color: white;
            z-index: 9999;
            display: none;
        }
    </style>
 <div id="floatingImage" class="floating-image">
        <img id="previewImage" src="" alt="Selected Image">
    </div>-->


              
<!--    <script>
        function showImagePreview() {
            const fileInput = document.getElementById("inputGroupFile01");
            const previewImage = document.getElementById("previewImage");
            const floatingImage = document.getElementById("floatingImage");

            const selectedFile = fileInput.files[0];
            if (selectedFile) {
                const reader = new FileReader();
                reader.onload = function(event) {
                    previewImage.src = event.target.result;
                    floatingImage.style.display = "block";
                };
                reader.readAsDataURL(selectedFile);
            }
        }
    </script>-->
                        </div>
                    </div>
                            </form>
                </div>
                <div class="col-xl-8">
                    <!-- Account details card-->
                    <div class="card mb-4">
                        <div class="card-header">My Profile</div>
                        <div class="card-body">
                            <form action="candidate-profile-action.jsp?email=<%=email%>"  method="post" enctype="multipart/form-data">
                            
                                <!-- Form Group (username)-->
                                <div class="row gx-3 mb-3">
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputUsername">Full Name</label>
                                    <input class="form-control" id="inputUsername" name="name" type="text"  placeholder="Enter your username" value="<%= resultSet.getString("name") %>" >
                                </div>
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputEmailAddress">Email</label>
                                    <input class="form-control" id="inputEmailAddress" name="email2" type="email"  placeholder="Enter your email address"  value="<%= resultSet.getString("email") %>">
                                </div>
                            </div>
                                <!-- Form Row-->
                                <div class="row gx-3 mb-3">
                                    <!-- Form Group (first name)-->
                                    <div class="col-md-6">
                                        <label class="small mb-1" for="inputmobile">Mobile</label>
                                        <input class="form-control" id="inputLastName" name="phone" type="text"  placeholder="Enter your number" value="<%= resultSet.getString("phone") %>" >
                                    </div>
                                    <!-- Form Group (last name)-->
                                    <div class="col-md-6">
                                        <label class="small mb-1" for="inputAddress">City</label>
                                        <input class="form-control" id="inputAddress" name="address"  type="text" placeholder="Enter your city" value="<%= resultSet.getString("address") %>">
                                    </div>
                                </div>
                                <div class="row gx-3 mb-3">
                                    <!-- Form Group (first name)-->
                                    <div class="col-md-6">
                                        <label class="small mb-1" for="inputmobile">Password</label>
                                        <input class="form-control" id="inputLastName" name="password" type="text"  placeholder="Password"  value="<%= resultSet.getString("password") %>" >
                                    </div>
                                </div>
                                <!-- Form Row        -->
                                
                               
                                <button class="btn btn-info" style="border-radius:20px;" type="submit">Update</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        </div>
                                  <%
    }

    // Close resources
    resultSet.close();
    statement.close();
    connection.close();
} catch (ClassNotFoundException | SQLException e) {
    e.printStackTrace();
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
