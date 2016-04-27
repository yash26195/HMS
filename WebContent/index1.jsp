
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html>
<head>
<title>Hostriot</title>
<meta  charset='utf-8' />
 <meta content="width=device-width, initial-scale=1" name="viewport"> 
<meta name="description" content="Hostriot " /> 
 <meta name="keywords" content="Hospital Mangagement System, Hostriot" /> 
 <meta name="robots" content="INDEX,FOLLOW" />
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

 <!-- Javscript refs-->
 <script type="text/javascript" src="//use.typekit.net/fjm5voe.js"></script> 
 <script type="text/javascript">try{Typekit.load();}catch(e){}</script> 
<script type="text/javascript" src="/js/jquery/jquery-1.8.2.min.js"></script>

<!-- Font style-->
 <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
	 <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
   
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
 <link href="css/freelancer.css" rel="stylesheet">
 <!-- title logo-->
 <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
 <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
 
<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<link href="css/confooter.css" rel="stylesheet">
	

 </head>
 <body data-spy="scroll" data-target="height: 100px" data-offset="220" style="background-color: white"  >
	<div class="container-fluid-full-width "  >
			 <nav class="navbar navbar-default navbar-fixed-top" style="opacity:0.7">
			 
        <div class="container">
		
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
				
				<a href="index.html"><img src="img/logo1.jpg" class="img-circle"></a> 
			
                <!--<a class="navbar-brand" href="#page-top">Hostriot</a>-->
          
			
			</div>
			
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    
					<li class="page-scroll">
                        <a href="#about">About</a>
                    </li>
					<li class="page-scroll">
                        <a href="#services">Services</a>
                    </li>
                    <li class="">
                        <a data-toggle="modal"  href="#reg">Register</a>
                    </li>

					<li >
                        <a data-toggle="modal"  href="#login">Login</a>
                    </li>
                    
               
                    
                    <li class="page-scroll">
                        <a href="#contact">Contact</a>
                    </li>
					 </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    	<div id="reg" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Register</h4>
      </div>
      <div class="modal-body">
     <form role="form">
      <div class="form-group">
   <label for="name"> Name:</label>
   <input type="text" class="form-control" id="name">
   </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
    </div>
    <div class="form-group">
      <label for="pwd">Retype Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
    </div>
  
       <div class="form-group">
   <label for="pn"> Phone number:</label>
   <input type="text" class="form-control" id="pn">
   </div>
     
    
   <center> <button type="submit" style="background-color: skyblue" class="btn btn-default">Submit</button></center>

    </form>

      </div>
      <p> <br></p>

  </div>
</div>
</div>
<div id="login" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Login</h4>
      </div>
      <div class="modal-body">
     <form role="form" method="post" action="<%=request.getContextPath() %>/Controller?action=login">
    
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
    </div>
    
  
      
     
    
   <center> <button type="submit" style="background-color: skyblue" class="btn btn-default">Submit</button></center>

    </form>

      </div>
      <p> <br></p>

  </div>
</div>
</div>




	<header style="padding-top: 12%">
        <div class="container"  >
            <div class="intro-text">
                
   
                <div class="intro-heading"  style="color:Silver"><img src="img/logo1.jpg" style="opacity:0.3" class="img-circle"></div>
   
   
                 
   
   <div>
				<div class="intro-lead-in" style="color:Silver"> online healthcare solutions</div>
               <button type="button" onclick="location.href='#ba'" class="btn btn-success">Book an appointment</button>
            </div>
        </div>
    </header>
	
		  <!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Services</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/diag.jpg" class="img-responsive" alt="diagnostics">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/ambul.jpg" class="img-responsive"   alt="emergency services">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/surg.jpg" class="img-responsive"   alt="Surgeries">
                    </a>
                </div>
                
               
            </div>
        </div>
    </section>



    			 <!-- Portfolio Modals -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container" id="services">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Diagnostics</h2>
                            <hr class="star-primary">
                            <img src="img/portfolio/diag.jpg" class="img-responsive img-centered" alt="">
                            <p>Suraksha is a name people readily associate with diagnostic quality and convenience. The largest diagnostic chain in eastern India, it today ranks among the top 5 nationally with nearly 25 centres across West Bengal, Bihar and Delhi NCR. All diagnostic centres are owned and operated by the company to maintain strict quality protocols. Suraksha also operates a centre in NRS Medical College & Hospital in Kolkata on PPP (Public Private Partnership) basis with the State Government.
                            	</p><p>
							Suraksha diagnostic services span Pathology, Histopathology, Molecular Diagnostics and Radiology and include the latest tests. It is the first in India to receive the coveted CAP (College of American Pathologists) certification and is also NABH accredited. Apart from diagnostic services, Suraksha has a number of polyclinics with senior consultants from disciplines such as Cardiology, Gastroenterology and Neurology. It also runs Super Specialty Clinics for diabetes, hypertension, back pain, etc. </p>
                           
                            <button type="button" class="btn btn-default" style="background-color: cadetblue; color:white" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Emergency Services</h2>
                            <hr class="star-primary">
                            <img src="img/portfolio/ambul.jpg" class="img-responsive img-centered" alt="">
                            <p>Suraksha is a name people readily associate with diagnostic quality and convenience. The largest diagnostic chain in eastern India, it today ranks among the top 5 nationally with nearly 25 centres across West Bengal, Bihar and Delhi NCR. All diagnostic centres are owned and operated by the company to maintain strict quality protocols. Suraksha also operates a centre in NRS Medical College & Hospital in Kolkata on PPP (Public Private Partnership) basis with the State Government.
                            	</p><p>
							Suraksha diagnostic services span Pathology, Histopathology, Molecular Diagnostics and Radiology and include the latest tests. It is the first in India to receive the coveted CAP (College of American Pathologists) certification and is also NABH accredited. Apart from diagnostic services, Suraksha has a number of polyclinics with senior consultants from disciplines such as Cardiology, Gastroenterology and Neurology. It also runs Super Specialty Clinics for diabetes, hypertension, back pain, etc. </p>
                           
                            <button type="button" style="background-color: cadetblue; color:white" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Operations/Surgeries</h2>
                            <hr class="star-primary">
                            <img src="img/portfolio/surg.jpg" class="img-responsive img-centered" alt="">
                            <p>Suraksha is a name people readily associate with diagnostic quality and convenience. The largest diagnostic chain in eastern India, it today ranks among the top 5 nationally with nearly 25 centres across West Bengal, Bihar and Delhi NCR. All diagnostic centres are owned and operated by the company to maintain strict quality protocols. Suraksha also operates a centre in NRS Medical College & Hospital in Kolkata on PPP (Public Private Partnership) basis with the State Government.
                            	</p><p>
							Suraksha diagnostic services span Pathology, Histopathology, Molecular Diagnostics and Radiology and include the latest tests. It is the first in India to receive the coveted CAP (College of American Pathologists) certification and is also NABH accredited. Apart from diagnostic services, Suraksha has a number of polyclinics with senior consultants from disciplines such as Cardiology, Gastroenterology and Neurology. It also runs Super Specialty Clinics for diabetes, hypertension, back pain, etc. </p>
                           
                            <button type="button" class="btn btn-default" style="background-color: cadetblue; color:white" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    


	
	
       <section id="contact" style="background-color:">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center" >
                    <h2 class="section-heading" style="color:cadetblue">Book an appointment</h2>
                   
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Your Name *" id="name" required data-validation-required-message="Please enter your name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Your Email *" id="email" required data-validation-required-message="Please enter your email address.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" placeholder="Your Phone *" id="phone" required data-validation-required-message="Please enter your phone number.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Your Concern*" id="message" required data-validation-required-message="Please enter a concern."></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button style="background-color: cadetblue; color: white" type="submit" class="btn btn-xl">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; Your Website 2014</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

	</div>
	</body>
	</html>