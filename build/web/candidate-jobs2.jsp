<%-- 
    Document   : candidate-jobs2
    Created on : 20-Aug-2023, 10:39:55 am
    Author     : manikanta
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        <div id="jobListContainer" class="col-xl-9 col-lg-9 col-md-8">
    <!-- Filter Jobs Section -->
    <div class="col-xl-3 col-lg-3 col-md-4">
      <div class="container">
                    <div class="row">
            <div class="col-12">
                <div class="small-section-tittle2 mb-45">
                    <div class="ion">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20px" height="12px">
                            <path fill-rule="evenodd" fill="rgb(27, 207, 107)" d="M7.778,12.000 L12.222,12.000 L12.222,10.000 L7.778,10.000 L7.778,12.000 ZM-0.000,-0.000 L-0.000,2.000 L20.000,2.000 L20.000,-0.000 L-0.000,-0.000 ZM3.333,7.000 L16.667,7.000 L16.667,5.000 L3.333,5.000 L3.333,7.000 Z"/>
                        </svg>
                    </div>
                    <h4>Filter Jobs</h4>
                </div>
            </div>
        
       
        <div class="job-category-listing mb-50">
            <div class="single-listing">
                <div class="select-Categories pt-20 pb-50">
                    <div class="small-section-tittle2">
                        <h4>Job Type</h4>
                    </div>
                    <label class="container">Full Time
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">Part Time
                        <input type="checkbox" checked="checked active">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">Remote
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">Freelance
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                </div>
            </div>
          
            <div class="single-listing">
                <div class="small-section-tittle2">
                    <h4>Job Location</h4>
                </div>
                <div class="select-job-items2">
                    <select name="select">
                        <option value="">Anywhere</option>
                        <option value="">Category 1</option>
                        <option value="">Category 2</option>
                        <option value="">Category 3</option>
                        <option value="">Category 4</option>
                    </select>
                </div>
                
                <div class="select-Categories pt-80 pb-50">
                    <div class="small-section-tittle2">
                        <h4>Experience</h4>
                    </div>
                    <label class="container">1-2 Years
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">2-3 Years
                        <input type="checkbox" checked="checked active">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">3-6 Years
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">6-more..
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                </div>
                
                <div class="items-link items-link2 f-center">
                    <a href="">Filter</a>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
    <!-- End of Filter Jobs Section -->
    
    <!-- Job Listings Will Be Displayed Here -->
    <!-- ... Your Job Listings HTML Goes Here ... -->
</div>
        
             
   
        

    </body>
    
</html>