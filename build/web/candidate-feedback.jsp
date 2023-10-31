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
            <link rel="stylesheet" href="assets/css/rating.css">


           
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

        <br><br>
       
       <p>${sessionScope.email}</p>
            <div class="container" >
                 <form action="submit-feedback.jsp" method="post" id="ratingForm">
                    <div class="table-responsive pt-3">
                        
                                <table class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th colspan="4">
                                                <center><h4 class="card-title" style="color: rgb(45, 62, 219);">Add Your Feedback</h4></center>
                                            </th>
                                        </tr>
                                    </thead>
            
                                        <tbody>
                                        
                                            <tr> 
                                               <td>
    <label for="rating1">1. How would you rate finding the jobs in our site?</label>
    <fieldset class="star-rating">
        <div class="star-rating__stars"> 
            <input class="star-rating__input" type="radio" name="rating1" value="1" id="a-1" />
            <label class="star-rating__label" for="a-1" aria-label="One"></label>
            <input class="star-rating__input" type="radio" name="rating1" value="2" id="a-2" />
            <label class="star-rating__label" for="a-2" aria-label="Two"></label>
            <input class="star-rating__input" type="radio" name="rating1" value="3" id="a-3" />
            <label class="star-rating__label" for="a-3" aria-label="Three"></label>
            <input class="star-rating__input" type="radio" name="rating1" value="4" id="a-4" />
            <label class="star-rating__label" for="a-4" aria-label="Four"></label>
            <input class="star-rating__input" type="radio" name="rating1" value="5" id="a-5" />
            <label class="star-rating__label" for="a-5" aria-label="Five"></label>
            <div class="star-rating__focus"></div>
        </div>
    </fieldset>
</td>

                                                <td>
    <label for="rating3">3. How would you rate to recommend others?</label>
    <fieldset class="star-rating">
        <div class="star-rating__stars">
            <input class="star-rating__input" type="radio" name="rating3" value="1" id="b-1" />
            <label class="star-rating__label" for="b-1" aria-label="One"></label>
            <input class="star-rating__input" type="radio" name="rating3" value="2" id="b-2" />
            <label class="star-rating__label" for="b-2" aria-label="Two"></label>
            <input class="star-rating__input" type="radio" name="rating3" value="3" id="b-3" />
            <label class="star-rating__label" for="b-3" aria-label="Three"></label>
            <input class="star-rating__input" type="radio" name="rating3" value="4" id="b-4" />
            <label class="star-rating__label" for="b-4" aria-label="Four"></label>
            <input class="star-rating__input" type="radio" name="rating3" value="5" id="b-5" />
            <label class="star-rating__label" for="b-5" aria-label="Five"></label>
            <div class="star-rating__focus"></div>
        </div>
    </fieldset>
</td>

                                            </tr>
                                            <tr>
                                                
                                            <td>
    <label for="rating2">2. It was easy to apply for the position in our site?</label>
    <fieldset class="star-rating">
        <div class="star-rating__stars">
            
            <input class="star-rating__input" type="radio" name="rating2" value="1" id="c-1" />
            <label class="star-rating__label" for="c-1" aria-label="One"></label>
            <input class="star-rating__input" type="radio" name="rating2" value="2" id="c-2" />
            <label class="star-rating__label" for="c-2" aria-label="Two"></label>
            <input class="star-rating__input" type="radio" name="rating2" value="3" id="c-3" />
            <label class="star-rating__label" for="c-3" aria-label="Three"></label>
            <input class="star-rating__input" type="radio" name="rating2" value="4" id="c-4" />
            <label class="star-rating__label" for="c-4" aria-label="Four"></label>
            <input class="star-rating__input" type="radio" name="rating2" value="5" id="c-5" />
            <label class="star-rating__label" for="c-5" aria-label="Five"></label>
            <div class="star-rating__focus"></div>
        </div>
    </fieldset>
</td>
                                              
                                                </tr>    
                                        
                                        </tbody>
                                </table>
                                <div class="form-group">
                                    <label for="overall">Overall Feedback</label>
                                    <textarea name="overall" class="form-control" id="exampleFormControlTextarea5" rows="3"></textarea>
                                </div>
                        <input type="hidden" name="email" value="<%= session.getAttribute("email") %>">
                       

                    
                        <br>
                        <center><button type="submit" class="btn btn-main" style="background-color:rgb(12, 55, 116);"> Submit</button></center>
             
                        
                        <br>
                    </div>
                 </form>
                        <script>
    document.getElementById("ratingForm").addEventListener("submit", function(event) {
        handleRatingSubmission(this, "rating1");
        handleRatingSubmission(this, "rating2");
        handleRatingSubmission(this, "rating3");
    });

    function handleRatingSubmission(form, ratingName) {
        const selectedValue = form.querySelector(`input[name='${ratingName}']:checked`);
        
        if (!selectedValue) {
            // If no star is selected, set the value to 0
            const hiddenInput = document.createElement("input");
            hiddenInput.setAttribute("type", "hidden");
            hiddenInput.setAttribute("name", ratingName);
            hiddenInput.setAttribute("value", "0");
            form.appendChild(hiddenInput);
        }
    }
</script>
            </div>
        

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
