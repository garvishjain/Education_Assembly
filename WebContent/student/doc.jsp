<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="college, campus, university, courses, school, educational">
    <meta name="description" content="ATENA - College, University and campus template">
    <meta name="author" content="Ansonika">
    <title>College, University and campus template</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- BASE CSS -->
    <link href="css/base.css" rel="stylesheet">
    <link href="itc/document.css" rel="stylesheet">
    
    <!-- SPECIFIC CSS -->
    <link href="css/skins/square/blue.css" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
 

</head>

<body>

<!--[if lte IE 8]>
    <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
<![endif]-->

<div id="preloader">
	<div class="pulse"></div>
</div><!-- Pulse Preloader -->

   <!--Header File-->	
	 <%@ include file="itc/header.jsp" %>
		<!--Header File-->

	 

       
        <div class="sub_header bg_1">
        	<div id="intro_txt">
			<h1>Online <strong>Admission</strong>Form</h1>
            </div>
		</div> <!--End sub_header -->
 
 		<div class="container_gray_bg">
        <div id="position">
    <marquee direction = "left"><h2 class="tex"><strong>Please Upload Your Documents!!!</strong></h2></marquee>
				
    </div><!-- Position -->
        <div class="container margin_60">
       
 		<div class="row">
  			
				   
           <div class="col-md-9">
                	<div class="box_style_1">
                     		<div class="indent_title_in">
                    <i class="pe-7s-user"></i>
				<h3 style="text-decoration: underline;">Documents</h3>
			</div>
             	
      <div style="width: 93%;" >
				<div class="tab">
				  <button class="tablinks" onclick="openCity(event, 'Domicile')" id="defaultOpen" ><p style="text-align: center;"><strong>Upload Digital <br>Caste/Income/Domicile <br>Certificate</strong></p></button>
				  <button class="tablinks" onclick="openCity(event, 'Aadhar')"><p style="text-align: center;"><strong>Upload  Aadhar Card</strong></p></button>
				  <button class="tablinks" onclick="openCity(event, 'High')"><p style="text-align: center;"><strong>Upload High School Marksheet</strong></p></button>
				   <button class="tablinks" onclick="openCity(event, 'Higher')"><p style="text-align: center;"><strong>Upload Higher Secondary Marksheet</strong></p></button>
				</div>
				
				
				<div id="Domicile" class="tabcontent">
				  <h3 class="doc">Uplaod Cast/Income/Domicile</h3>
				  			
				  			<div class="b">
				  					<div class="a">
				  								<h4 class="c">Upload Cast Certificate &nbsp;:&nbsp;</h4>
				  								<input type="file" name="cast" class="fil">
				  					</div>
				  					<div class="a">
				  								<h4 class="c">Upload Income Certificate &nbsp;:&nbsp;</h4>
				  								<input type="file" name="income" class="fil">
				  					</div>
				  					<div class="a">
				  								<h4 class="c">Upload Domicile Certificate &nbsp;:&nbsp;</h4>
				  								<input type="file" name="domicile" class="fil">
				  					</div>
				  			</div>
				</div>

				<div id="Aadhar" class="tabcontent">
				  <h3 class="doc">Upload Aadhar Card</h3>
				
				  					<div class="d">
				  								<h4 class="c">Upload Aadhar Card &nbsp;:&nbsp;</h4>
				  								<input type="file" name="aadhar" class="fil">
				  					</div>
				  
				</div>

				<div id="High" class="tabcontent">
				 <h3 class="doc">Upload High School Marksheet</h3>
				 <div class="d">
				  								<h4 class="c">Upload  High Class Marksheet&nbsp;:&nbsp;</h4>
				  								<input type="file" name="high" class="fil">
				  					</div>
				</div>
				
				<div id="Higher" class="tabcontent">
				   <h3 class="doc">Upload Higher Secondary Marksheet</h3>
				  				 <div class="d">
				  								<h4 class="c">Upload  Higher Secondary Marksheet&nbsp;:&nbsp;</h4>
				  								<input type="file" name="Higher" class="fil">
				  					</div>
				</div>
				</div>
                     	
                     	
                     	
                     	
                     	
                     	
                     	
                     	
                     	
                    </div>
           </div>
           <div class="col-md-3">
           		
                    <h4><strong>How to apply</strong></h4>
                    <p>Step : College Selection<br>
							Step : Filling the Application Form<br>
							Step : Appearing for Entrance Exam<br>
							Step : Taking Part in Counselling<br>
							Step : Final Allocation of Seats<br>
							Step : Final Admission</p>
                   
                    <div class="box_side"><h5>By Phone</h5> <i class="icon-phone"></i>
                    <p> + 000-1234567<br><small>Monday to Friday 9.00am - 5.00pm</small></p>
                    </div>
             
                    <div class="box_side"><h5>By Postal Mail</h5> <i class="icon_pencil-edit"></i>
                    <p><a href="#0"><strong>Download the application form</strong></a>,<br> and send it to this address:<br><br><em>Ground Floor,
										Pragati Maidan Metro Station,
										Pragati Maidan,
										New Delhi-110001<br>
										</em></p>
										</div>
										 <hr class="styled">
                 <div class="box_side">
                    <h5>Apply Online</h5> <i class="icon_desktop"></i>
                    <p>By filling out this form, you agree to allow your information to be shared with a consortium of colleges and universities  to contact you with more information. </p>  
                    <p><a href="register.jsp" class="button small">Apply online</a> </p>
					</div>

           </div>
            </div><!--End row -->
        </div><!--End container -->
        </div><!--End container_gray_bg -->
  
  		
	
	

	 
		<!--Footer File-->	 
	<%@ include file="itc/footer.jsp" %>
		<!--Footer File-->
    
<!-- Login modal -->   
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myLogin" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<form action="../St_Login" method="post" class="popup-form" id="myLogin">
					<input type="text" name="uname" class="form-control form-white" placeholder="Enter Username">
					<input type="password" name="pass" class="form-control form-white" placeholder="Enter Password">
					<div class="checkbox-holder text-left">
						<div class="checkbox">
							<input type="checkbox" value="accept_1" id="check_1" name="check_1" />
							<label for="check_1"><span>I Agree to the <strong>Terms &amp; Conditions</strong></span></label>
						</div>
					</div>
					<button type="submit" class="btn btn-submit">Submit</button>
				</form>
			</div>
		</div>
	</div>  
    

    
<!-- Search modal -->   
<div id="search">
    <button type="button" class="close">×</button>
    <form>
        <input type="search" value="" placeholder="type keyword(s) here" >
        <button type="submit" class="button">Search</button>
    </form>
</div>

<!-- Common scripts -->
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/common_scripts_min.js"></script>
<script src="js/functions.js"></script>
<script src="assets/validate.js"></script>

<script type="text/javascript" src="itc/document.js"></script>
<!-- Specific scripts -->
<script src="js/icheck.js"></script>
<script>  
$('input').iCheck({
   checkboxClass: 'icheckbox_square-blue',
   radioClass: 'iradio_square-blue'
 });
 </script>
 <script src="js/jquery.validate.js"></script>
 <script>
  $("#apply_online").validate();
</script>
</body>
</html>