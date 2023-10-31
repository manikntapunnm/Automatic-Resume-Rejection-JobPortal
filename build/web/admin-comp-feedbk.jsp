<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default" data-assets-path="assets2/"
  data-template="vertical-menu-template-free">

<head>
  <meta charset="utf-8" />
  <meta name="viewport"
    content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

  <title>Job Dekho
  </title>

  <meta name="description" content="" />

  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="assets2/img/favicon/favicon.ico" />

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
    href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
    rel="stylesheet" />

  <!-- Icons. Uncomment required icon fonts -->
  <link rel="stylesheet" href="assets2/vendor/fonts/boxicons.css" />

  <!-- Core CSS -->
  <link rel="stylesheet" href="assets2/vendor/css/core.css" class="template-customizer-core-css" />
  <link rel="stylesheet" href="assets2/vendor/css/theme-default.css" class="template-customizer-theme-css" />
  <link rel="stylesheet" href="assets2/css/demo.css" />
  <link rel="stylesheet" href="assets2/css/rating1.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


  <!-- Vendors CSS -->
  <link rel="stylesheet" href="assets2/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

  <link rel="stylesheet" href="assets2/vendor/libs/apex-charts/apex-charts.css" />

  <!-- Page CSS -->

  <!-- Helpers -->
  <script src="assets2/vendor/js/helpers.js"></script>

  <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
  <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
  <script src="assets2/js/config.js"></script>

 
    <style>
    .checked {
      color: orange;
    }
  </style>
        <style>
        .emoji {
            font-size: 30px; /* Set your desired font size here */
            line-height: 1; /* Set line-height to adjust vertical alignment */
            display: inline-block;
            width: 30px; /* Set width to match font-size */
            height: 30px; /* Set height to match font-size */
        }
    </style>
</head>

<body>
  <!-- Layout wrapper -->
  <div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">
      <!-- Menu -->

      <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
        <div class="app-brand demo">
          <a href="admin-index.jsp" class="app-brand-link">
            <span class="app-brand-logo demo">
              <svg width="25" viewBox="0 0 25 42" version="1.1" xmlns="http://www.w3.org/2000/svg"
                xmlns:xlink="http://www.w3.org/1999/xlink">
                <defs>
                  <path
                    d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
                    id="path-1"></path>
                  <path
                    d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
                    id="path-3"></path>
                  <path
                    d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
                    id="path-4"></path>
                  <path
                    d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
                    id="path-5"></path>
                </defs>
                <g id="g-app-brand" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g id="Brand-Logo" transform="translate(-27.000000, -15.000000)">
                    <g id="Icon" transform="translate(27.000000, 15.000000)">
                      <g id="Mask" transform="translate(0.000000, 8.000000)">
                        <mask id="mask-2" fill="white">
                          <use xlink:href="#path-1"></use>
                        </mask>
                        <use fill="#696cff" xlink:href="#path-1"></use>
                        <g id="Path-3" mask="url(#mask-2)">
                          <use fill="#696cff" xlink:href="#path-3"></use>
                          <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
                        </g>
                        <g id="Path-4" mask="url(#mask-2)">
                          <use fill="#696cff" xlink:href="#path-4"></use>
                          <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4"></use>
                        </g>
                      </g>
                      <g id="Triangle"
                        transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) ">
                        <use fill="#696cff" xlink:href="#path-5"></use>
                        <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5"></use>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </span>
            <span class="app-brand-text demo menu-text fw-bolder ms-2">Job Dekho</span>

          </a>

          <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
            <i class="bx bx-chevron-left bx-sm align-middle"></i>
          </a>
        </div>

        <div class="menu-inner-shadow"></div>

        <ul class="menu-inner py-1">
          <!-- Dashboard -->
          <li class="menu-item ">
            <a href="admin-admin-index.jsp" class="menu-link">
              <i class="menu-icon tf-icons bx bx-home-circle"></i>
              <div data-i18n="Analytics">Dashboard</div>
            </a>
          </li>

          <!-- Layouts -->
          <li class="menu-item">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-layout"></i>
              <div data-i18n="Layouts">Companies Portal</div>
            </a>

            <ul class="menu-sub">
              <li class="menu-item">
                <a href="admin-pending-comp.jsp" class="menu-link">
                  <div data-i18n="Without menu">Pending Companies</div>
                </a>
              </li>
              <li class="menu-item">
                <a href="admin-all-comp.jsp" class="menu-link">
                  <div data-i18n="Without navbar">All Companies</div>
                </a>
              </li>

            </ul>
          </li>


          <li class="menu-item">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-dock-top"></i>
              <div data-i18n="Account Settings">Job Portal</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item">
                <a href="admin-view-postjob.jsp" class="menu-link">
                  <div data-i18n="Account">View Posted Jobs</div>
                </a>
              </li>
              <li class="menu-item">
                <a href="admin-man-postjob.jsp" class="menu-link">
                  <div data-i18n="Notifications">Manage Posted Jobs</div>
                </a>
              </li>

            </ul>
          </li>
          <!-- User interface -->
          <li class="menu-item">
            <a href="javascript:void(0)" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-box"></i>
              <div data-i18n="User interface">Candidate Management/Portal</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item">
                <a href="admin-view-cand.jsp" class="menu-link">
                  <div data-i18n="Accordion">View Candidates</div>
                </a>
              </li>

            </ul>
          </li>


          <li class="menu-item">
            <a href="javascript:void(0)" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-box"></i>
              <div data-i18n="User interface">Resume Rejection Portal</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item">
                <a href="rejection.jsp" class="menu-link">
                  <div data-i18n="Accordion">Rejection Details</div>
                </a>
              </li>

            </ul>
          </li>

          <!-- Extended components -->
          <li class="menu-item active open">
            <a href="javascript:void(0)" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-copy"></i>
              <div data-i18n="Extended UI">Feedback Portal</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item active">
                <a href="admin-comp-feedbk.jsp" class="menu-link">
                  <div data-i18n="Perfect Scrollbar">Companies Feedback</div>
                </a>
              </li>
              <li class="menu-item">
                <a href="admin-cand-feedbk.jsp" class="menu-link">
                  <div data-i18n="Perfect Scrollbar">Candidate Feedback</div>
                </a>
              </li>
              <li class="menu-item">
               <a href="admin-feedbk-analy.jsp?category=Company" class="menu-link">
                  <div data-i18n="Perfect Scrollbar">Companies Feedback Analysis</div>
                </a>
              </li>
              <li class="menu-item">
               <a href="admin-feedbk-analy.jsp?category=Candidate" class="menu-link">
                  <div data-i18n="Perfect Scrollbar">Candidate Feedback Analysis</div>
                </a>
              </li>

            </ul>
          </li>








      </aside>
      <!-- / Menu -->

      <!-- Layout container -->
      <div class="layout-page">
        <!-- Navbar -->

        <nav
          class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
          id="layout-navbar">
          <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
            <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
              <i class="bx bx-menu bx-sm"></i>
            </a>
          </div>

          <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
            <!-- Search -->
            <div class="navbar-nav align-items-center">
              <div class="nav-item d-flex align-items-center">
                <i class="bx bx-search fs-4 lh-0"></i>
                <input type="text" class="form-control border-0 shadow-none" placeholder="Search..."
                  aria-label="Search..." />
              </div>
            </div>
            <!-- /Search -->

            <ul class="navbar-nav flex-row align-items-center ms-auto">
              <!-- Place this tag where you want the button to render. -->

              <!-- User -->
              <li class="nav-item navbar-dropdown dropdown-user dropdown">
                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                  <div class="avatar avatar-online">
                    <img src="assets2/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                  </div>
                </a>
                <ul class="dropdown-menu dropdown-menu-end">
                  <li>
                    <a class="dropdown-item" href="#">
                      <div class="d-flex">
                        <div class="flex-shrink-0 me-3">
                          <div class="avatar avatar-online">
                            <img src="assets2/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                          </div>
                        </div>
                        <div class="flex-grow-1">
                          <span class="fw-semibold d-block">John Doe</span>
                          <small class="text-muted">Admin</small>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <div class="dropdown-divider"></div>
                  </li>


                  <li>
                    <a class="dropdown-item" href="index.jsp">
                      <i class="bx bx-power-off me-2"></i>
                      <span class="align-middle">Log Out</span>
                    </a>
                  </li>
                </ul>
              </li>
              <!--/ User -->
            </ul>
          </div>
        </nav>

        <!-- / Navbar -->
        <!-- Content wrapper -->
        <div class="content-wrapper">
          <!-- Content -->

          <div class="container-xxl flex-grow-1 container-p-y">
            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Companies /</span> Feedback</h4>

 <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>

<%@ page import="org.apache.commons.codec.binary.Base64" %>
<%@ page import="Dbconn.dbconn"%>


<%
try {
    int recordsPerPage = 5; // Number of records to display per page
    int currentPage = (request.getParameter("page") != null) ? Integer.parseInt(request.getParameter("page")) : 1;
    int startRecord = Math.max((currentPage - 1) * recordsPerPage, 0);
    String category = "Company";

    Connection connection = new Dbconn.dbconn().getConnection();

    int totalRecords = 0;
    PreparedStatement countStatement = connection.prepareStatement(
        "SELECT COUNT(*) FROM feedback WHERE category = ?");
    countStatement.setString(1, category);
    ResultSet countResult = countStatement.executeQuery();

    if (countResult.next()) {
        totalRecords = countResult.getInt(1);
    }

    countResult.close();
    countStatement.close();

    PreparedStatement statement = connection.prepareStatement(
        "SELECT * FROM feedback WHERE category = ? LIMIT ?, ?");
    statement.setString(1, category);
    statement.setInt(2, startRecord);
    statement.setInt(3, recordsPerPage);

    ResultSet resultSet = statement.executeQuery();
    int sno = startRecord + 1;
%>

            <!-- Responsive Table -->
            <div class="card">
              <h5 class="card-header">Company Feedback</h5>
              <div class="table-responsive text-nowrap">
                <table class="table">
                  <thead>
                    <tr class="text-nowrap">
                      <th>Sno</th>
                      <th>Image</th>
                      <th>Company Name</th>
                      <th>Company Email</th>
                      <th>hw much you rate finding candidates in our site</th>
                      <th>hw much you rate hosting jb post in our site</th>
                      <th>Overall Review</th>
                      <th>Sentiment</th>
                      <th style="width:10px">Emoji</th>





                    </tr>
                  </thead>

                  <tbody>
             <% 
                int Sno=1;
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
               
                    byte[] ImageBytes = resultSet.getBytes("image");
        String ImageBase64 = Base64.encodeBase64String(ImageBytes);
         int rating1 = resultSet.getInt("finding");
                    int rating2 = resultSet.getInt("recommend");
                    int rating3 = resultSet.getInt("findposition");
                    String sentiment = resultSet.getString("sentiment");
                     String emoji = "";
                    if (sentiment.equals("Very Negative")) {
                        emoji = "&#128542;"; // Very Negative Emoji
                    } else if (sentiment.equals("Negative")) {
                        emoji = "&#128577;"; // Negative Emoji
                    } else if (sentiment.equals("Neutral")) {
                        emoji = "&#128528;"; // Neutral Emoji
                    } else if (sentiment.equals("Positive")) {
                        emoji = "&#128513;"; // Positive Emoji
                    } else {
                        emoji = "&#128525;"; // Very Positive Emoji
                    }
        %>
                    <tr>
<th scope="row"><%=Sno++%></th>
                      <td><img src="data:image/jpeg;base64,<%= ImageBase64 %>" width="50px" height="30px" alt=""></td>
                      <td><%=resultSet.getString(4)%></td>
                      <td><%=resultSet.getString(3)%></td>

                      <td>
                        <% 
                    for (int i = 1; i <= 5; i++) {
                        if (i <= rating1) {
                            out.print("<span class=\"fa fa-star checked\"></span>");
                        } else {
                            out.print("<span class=\"fa fa-star\"></span>");
                        }
                    }
                %>
                      </td>
                      <td>
                      <% 
                    for (int i = 1; i <= 5; i++) {
                        if (i <= rating3) {
                            out.print("<span class=\"fa fa-star checked\"></span>");
                        } else {
                            out.print("<span class=\"fa fa-star\"></span>");
                        }
                    }
                %>
                      </td>
<td><textarea rows="2" cols="10"><%=resultSet.getString(9)%></textarea> </td>
                     <td><textarea rows="2" cols="10"><%=sentiment%></textarea> </td>
     
                 <td><span class="emoji"><%= emoji %></span></td>
                      
                    </tr> <%
                } %>
              

                  </tbody>
                </table>
                                <nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="?page=<%= currentPage - 1 %>" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only"></span>
      </a>
    </li>
    <% for (int i = 1; i <= Math.ceil((double) totalRecords / recordsPerPage); i++) { %>
      <li class="page-item <%= (i == currentPage) ? "active" : "" %>">
        <a class="page-link" href="?page=<%= i %>"><%= i %></a>
      </li>
    <% } %>
    <li class="page-item">
      <a class="page-link" href="?page=<%= currentPage + 1 %>" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only"></span>
      </a>
    </li>
  </ul>
</nav>
              </div>
            </div>
                <%
             
                
                resultSet.close();
                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
            <!--/ Responsive Table -->
          </div>
          <!-- / Content -->

          <!-- Footer -->
          <footer class="content-footer footer bg-footer-theme">
            <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
              <div class="mb-2 mb-md-0">
                ©
                <script>
                  document.write(new Date().getFullYear());
                </script>
                &copy; Copyrights @2022 by <span class="text-color:white">Job Dekho</span> | Designed and Developed by
                <a href="https://codebook.in/" style="color:rgb(12, 152, 216)" target="_blank">CODEBOOK</a>

              </div>
              <div>
                <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                <a href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/"
                  target="_blank" class="footer-link me-4">Documentation</a>

                <a href="https://github.com/themeselection/sneat-html-admin-template-free/issues" target="_blank"
                  class="footer-link me-4">Support</a>
              </div>
            </div>
          </footer>
          <!-- / Footer -->

          <div class="content-backdrop fade"></div>
        </div>
        <!-- Content wrapper -->

      </div>
      <!-- / Layout page -->
    </div>

    <!-- Overlay -->
    <div class="layout-overlay layout-menu-toggle"></div>
  </div>
  <!-- / Layout wrapper -->



  <!-- Core JS -->
  <!-- build:js assets/vendor/js/core.js -->
  <script src="assets2/vendor/libs/jquery/jquery.js"></script>
  <script src="assets2/vendor/libs/popper/popper.js"></script>
  <script src="assets2/vendor/js/bootstrap.js"></script>
  <script src="assets2/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

  <script src="assets2/vendor/js/menu.js"></script>
  <!-- endbuild -->

  <!-- Vendors JS -->
  <script src="assets2/vendor/libs/apex-charts/apexcharts.js"></script>

  <!-- Main JS -->
  <script src="assets2/js/main.js"></script>

  <!-- Page JS -->
  <script src="assets2/js/dashboards-analytics.js"></script>

  <!-- Place this tag in your head or just before your close body tag. -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
</body>

</html>
