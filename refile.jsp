<%@page import="algo.CipherHelper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Proxy Encryption</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">


</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
          <h1><a href="index.html">Proxy<span style="color:#0dcaf0;">Encryption<span></a></h1>
      </div>

      <nav id="navbar" class="navbar">
         <ul>
          <li><a class="nav-link scrollto active" href="ahome.jsp">Home</a></li>
          <li><a class="nav-link scrollto " href="upload.jsp">Upload File</a></li>
          <li><a class="nav-link scrollto " href="rereq.jsp">Re-encryption Request</a></li>
          <li><a class="nav-link scrollto " href="refile.jsp ">Re-encrypt file </a></li>
          <li><a class="nav-link scrollto " href="index.html">Logout</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section >

   

         <br>
         <br>
      
                    <style>
                        table,tr,th,td{
                            border: 1px solid black;
                            border-collapse:collapse;
                            padding:5px;
                            margin-top:- 200px;
                     margin-left:350px;
                        }
                        
                        </style>
                         <h2 style="  color:#3498db ; text-align: center; font-size: 25px; font-weight: bolder; margin-left:-50px; ">View Cloud Status and Upload !!</h2>
                          <br>
                        <br>
                        <br>
                         
                    <table>
       <tr>
           <td style=" font-weight: bold; background-color:  #0dcaf0;">ID</td>
           <td style=" font-weight: bold; background-color:  #0dcaf0;">Owner name</td>
           <td style=" font-weight: bold; background-color:  #0dcaf0;">File</td>
           <td style=" font-weight: bold; background-color:  #0dcaf0;">Keyword</td>
      
           <td style=" font-weight: bold; background-color:  #0dcaf0;">Re-encryption Status</td>
           <td style=" font-weight: bold; background-color:  #0dcaf0;">Upload file</td>
            </tr>
       
      
       <%
       String s=request.getParameter("x");
       String user=session.getAttribute("user").toString();
      String id=session.getAttribute("id").toString();
            String email=session.getAttribute("email").toString();

       Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proxy","root","root");
            PreparedStatement ps=con.prepareStatement("select * from porequest   ");
            System.out.println(ps);            
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
        %>
       <tr>
           <td style=" color: black; font-weight:  400;"><%=rs.getString("id")%></td>
            <td style=" color: black; font-weight:  400;"><%=rs.getString("user")%></td>
            <td style=" color: black; font-weight: 400;"> <%=rs.getString("file")%></td>
        
            
            <td style=" color: black; font-weight:  400;"><%=rs.getString("keyword")%></td>
            <td style=" color: #6600cc; font-weight:  bold;"><%=rs.getString("status")%></td>
            <td style=" color: #00cae3; font-weight:  bolder"><a href="proupload.jsp?keyword=<%=rs.getString("keyword")%>" >Proxy Re-Encryption</a></td>
       </tr><%}%>
                </table> 
      <br>     
<br><br>
<br>
<br>
<br>
<br>
<br>     
<br><br>
<br>
<br>
<br>
<br></div>
      </div>
    </div>



  </section><!-- End Hero -->                                              

  <main id="main">
<br>     
<br><br>
<br>
<br>
<br>
<br>
    <!-- ======= Clients Section ======= -->
    <section id="clients" class="clients clients">
      <div class="container">

        <div class="row">

         

        </div>

      </div>
    </section><!-- End Clients Section -->

    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container">

        
      </div>
    </section><!-- End About Us Section -->

   

    

    
   

   



<!--     ======= Contact Section ======= 
    <section id="contact" class="contact">
      

          <div class="col-lg-5 col-md-12" data-aos="fade-up" data-aos-delay="300">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="form-group">
                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
              </div>
              <div class="form-group">
                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>
          </div>

      -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="row d-flex align-items-center">
        <div class="col-lg-6 text-lg-left text-center">
          <div class="copyright">
            &copy; Copyright <strong></strong>. All Rights Reserved
          </div>
          <div class="credits">
             Designed by Cloud Computing
          </div>
        </div>
     
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>

