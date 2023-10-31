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
                <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.11.338/pdf.min.js"></script>
   </head>

   <body>
                <%
String msg3 = (String) session.getAttribute("msg3");
if (msg3 != null) {
    // Clear the message attribute to prevent repeated display
   
%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>
    <script>
        Swal.fire({
            icon: 'error',
            text: '<%= msg3 %>',
            timer: 2000, 
            //timerProgressBar: true,
            
            showConfirmButton: false
        })
    </script>
<%
    session.removeAttribute("msg3");
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

<!--<p>Job ID: <%--=session.getAttribute("job") --%></p>-->
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
      
       
        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider section-overly slider-height1 d-flex align-items-center" data-background="assets/img/hero/about.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Apply for Job</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <!-- Hero Area End -->
          <br><br>
        <!-- Content wrapper -->
 <div class="content-wrapper">
    <!-- Content -->
<!--                     <p>${sessionScope.ComapanyName},${sessionScope.experience},${sessionScope.email},${sessionScope.job},${sessionScope.jobnature},${sessionScope.Skills}</p>-->
                       
<div class="container-xxl flex-grow-1 container-p-y">
    <div class="row justify-content-center">
        
            <div class="col-md-6">
           <form id="pdfForm" method="post" action="candidate-apply-jobaction.jsp" enctype="multipart/form-data">
                <div class="card mb-4">
                    <h5 class="card-header">Apply for Job</h5>
                    <div class="card-body">
                        
                        <div class="mb-3">
                            
                            <label for="fullname" class="form-label">Candidate Fullname</label>
                            <input type="text" id="fullname" class="form-control"  placeholder="Candidate Fullname" value="Manikanta"
                                name="fullname" required>
                           
                           
                        </div>
                        <div class="mb-3">
                            <label for="edu" class="form-label">Education</label>
                            <input type="text" class="form-control" id="edu" placeholder="Education" name="edu" value="b.tech"
                                required>
                           
                            
                        </div>
                        <div class="mb-3">
                            <label for="resume" class="form-label" >Upload Resume<sub> only .pdf or .txt files </sub></label>
                            <input class="form-control form-control-lg" style="font-size:medium;border-radius: 10px;"
                                   id="pdfFile" name="pdfFile"  accept=".txt, .pdf" type="file"  required>
                               
                              
                        </div>
                        <div class="mb-3">
                            <label for="skills" class="form-label">Skills</label>
                            <textarea class="form-control" id="skills" rows="3" name="skills" required>java</textarea>
                           
                          
                        </div>
                        <input type="hidden" name="company" value="${sessionScope.ComapanyName}">
                        <input type="hidden" name="email" value="${sessionScope.email}">
                        <input type="hidden" name="job" value="${sessionScope.job}">
                        <input type="hidden" name="jobnature" value="${sessionScope.jobnature}">
                        <input type="hidden" id="foundKeywordsInput" name="foundKeywordsInput">
                        <input type="hidden" id="unfoundKeywordsInput" name="unfoundKeywordsInput">

                        <br>
                        <div>
                            <button type="button" class="btn btn-primary justify-content-center"
                                   onclick="analyzePDF()" style="border-radius:25px;"> Apply</button>
           
                        </div>
                        <pre id="outputMessage"></pre>
                   </div> 
                </div>
            </div>
        <%
    String Skills = (String) session.getAttribute("Skills");
    String[] keywords = Skills.split(","); // Split the skills string into an array
%> 
    <script>
        async function analyzePDF() {
            const pdfFileInput = document.getElementById('pdfFile');
            const outputMessage = document.getElementById('outputMessage');

            const selectedFile = pdfFileInput.files[0];
            if (!selectedFile) {
                return;
            }

            const arrayBuffer = await selectedFile.arrayBuffer();
            const pdfDoc = await pdfjsLib.getDocument({ data: arrayBuffer }).promise;

            const numPages = pdfDoc.numPages;
            const allText = [];

            for (let pageNum = 1; pageNum <= numPages; pageNum++) {
                const page = await pdfDoc.getPage(pageNum);
                const content = await page.getTextContent();
                const textItems = content.items.map(item => item.str);
                allText.push(...textItems);
            }
             const keywords = [<%= "'" + String.join("', '", keywords) + "'" %>];

//         const keywords = [
//  "java", "python", "c++", "javascript", "ruby",
//  "git", "svn",
//  "visual studio", "intellij idea", "eclipse", "pycharm", "xcode",
//  "html", "css", "node.js", "react",
//  "flask", "ruby on rails", "django", "spring boot",
//  "mysql", "postgresql", "mongodb", "redis",
//  "restful apis", "graphql",
//  "apache", "nginx",
//  "aws", "azure", "gcp",
//  "docker", "kubernetes",
//  "unit testing", "integration testing", "junit", "pytest",
//  "jenkins", "travis ci", "circleci",
//  "scrum", "kanban",
//  "owasp", "encryption", "secure coding",
//  "http", "https", "tcp", "ip", "dns",
//  "android studio", "ios (swift & xcode)",
//  "infrastructure as code", "ansible",
//  "tensorflow", "pytorch", "scikit-learn",
//  "waterfall", "agile"
//];

            const foundKeywords = keywords.filter(keyword => allText.join(' ').toLowerCase().includes(keyword));
            const unfoundKeywords = keywords.filter(keyword => !foundKeywords.includes(keyword));

            // Set values of hidden inputs
            document.getElementById('foundKeywordsInput').value = foundKeywords.join(',');
            document.getElementById('unfoundKeywordsInput').value = unfoundKeywords.join(',');

            // Submit the form
            document.getElementById('pdfForm').submit();
        }
    </script>

   
                        
                      
  
<!--                            <form id="pdfForm" method="get" action="action.jsp">
                                <label for="fullname" class="form-label">Candidate Fullname</label>
        <input type="text" class="form-control" id="fullname" placeholder="Candidate Fullname" value="Manikanta"
                                name="fullname" required>
                <label for="edu" class="form-label">Education</label>
                            <input type="text" class="form-control" id="edu" placeholder="Education" name="edu" value="b.tech"
                                required>
                            
        <label for="resume" class="form-label" >Upload Resume<sub> </sub></label>
        <input class="form-control form-control-lg" style="font-size:medium;border-radius: 10px;"
                                   name="file" id="resume"  accept="" type="file" required>
                 <label for="skills" class="form-label">Skills</label>
         <textarea class="form-control" id="skills" rows="3" name="skills" value="java" required></textarea>
         <input type="hidden" name="company" value="${sessionScope.ComapanyName}">
                        <input type="hidden" name="email" value="${sessionScope.email}">
                        <input type="hidden" name="job" value="${sessionScope.job}">
                        <input type="hidden" name="jobnature" value="${sessionScope.jobnature}">

        <label for="pdfFile">PDF File:</label>
        <input type="file" id="pdfFile" name="pdfFile">
        <input type="hidden" id="foundKeywordsInput" name="foundKeywordsInput">
        <input type="hidden" id="unfoundKeywordsInput" name="unfoundKeywordsInput">
        <button type="button" onclick="analyzePDF()">Analyze PDF</button>

    </form>-->


    
 </div>
</div>


 <script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.10.377/pdf.min.js"></script>
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

<!--               <div class="mb-3">
                    <label for="exampleFormControlSelect1" class="form-label">Job nature</label>
                    <select class="form-select" id="exampleFormControlSelect1" aria-label="Default select example" name="jobnature">
                      <option selected>Select</option>
                      <option value="1">Full Time</option>
                      <option value="2">Part Time</option>
                      <option value="3">Remote</option>
                    </select>
                  </div>
                  <br>-->
<!--                  <div class="mb-3">
                    <label for="exampleFormControlSelect1" class="form-label">JobS</label>
                    <select class="form-select" id="exampleFormControlSelect1" aria-label="Default select example" name="job">
                      <option selected>Select</option>
                      <option value="1">Full Stack Python Developer</option>
                      <option value="2">System Software Development</option>
                      <option value="3">Research and code , APIs and frameworks</option>
                      <option value="4">Django Developer</option>
                      <option value="5">UI/UX Developer</option>
                      <option value="6">Content Writer</option>
                      <option value="7">Sales & Marketing</option>
                      <option value="8">Construction</option>
                      <option value="9">Design & Creative</option>
                      <option value="10">Construction</option>
                      <option value="11">Real Estate</option>
                      <option value="12">Mobile Applicationin iOS/Android/Tizen or other platform</option>
    
                    </select>
                  </div>-->