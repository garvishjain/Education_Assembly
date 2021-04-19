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
    
    <!-- SPECIFIC CSS -->
    <link href="css/skins/square/blue.css" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
     <%@page import="in.common.GetConnection"%>
		 <%@ include file="inc/stdimport.jsp" %> 
		<%
		GetConnection getConObj=new GetConnection();
		Connection con=getConObj.getCon();
		Statement stmt=con.createStatement();
		
		%> 
		<style type="text/css">
			p			{
						display: inline;
						size: 120px;
						text-align: center;
						font-size: 16px;
				  		
				 		 padding: 1px  2px;
						}
			label{font-size: 18px;}
</style>

</head>

<body>

<!--[if lte IE 8]>
    <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
<![endif]-->

<div id="preloader">
	<div class="pulse"></div>
</div><!-- Pulse Preloader -->

    <!-- Header================================================== -->
    <header>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3 col-sm-3 col-xs-3">
                <div id="logo">
                    <a ><img src="img/logo.png" width="125" height="40" alt="Atena" data-retina="true"></a>
                </div>
            </div>
            <nav class="col-md-9 col-sm-9 col-xs-9">
            <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
            <div class="main-menu">
                <div id="header_menu">
                    <img src="img/logo_mobile.png" width="125" height="40" alt="Atena" data-retina="true">
                </div>
                <a href="#" class="open_close" id="close_in"><i class="icon_close"></i></a>
               <ul>
                    <li class="submenu">
                    <a href="home.jsp" >Home <i></i></a>
                    
                    </li>
                    <li class="submenu">
                    <a href="javascript:void(0);" class="show-submenu">Academic <i class="icon-down-open-mini"></i></a>
                    <ul>
                        <li><a href="diploma.jsp">Diploma courses</a></li>
                        <li><a href="graduate.jsp">Graduate courses</a></li>
                        <li><a href="master.jsp">Master courses</a></li>
                        <li><a href="register.jsp">Apply online</a></li>
                        
                    </ul>
                    </li>
                    <li class="submenu">
                    <a href="javascript:void(0);" class="show-submenu">About <i class="icon-down-open-mini"></i></a>
                    <ul>
                        <li><a href="about.jsp">About us</a></li>
                        <li><a href="contacts.jsp">Plan a visit</a></li>
                        <li><a href="gallery.jsp">Gallery</a></li>
                    </ul>
                    </li>
                    <li class="megamenu submenu">
                    <a href="javascript:void(0);" class="show-submenu-mega">Pages &amp; elements<i class="icon-down-open-mini"></i></a>
                    <div class="menu-wrapper">
                        <div class="col-md-4">
                            <h3>Pages</h3>
                            <ul>
                                <li><a href="blog.jsp">Blog</a></li>
                                <li><a href="contacts.jsp">Contacts</a></li>
                                <li><a href="agenda_calendar.jsp">Agenda calendar</a></li>
                                <li><a href="gallery.jsp">Gallery</a></li>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <h3>Pages</h3>
                            <ul>
                                <li><a href="#" data-toggle="modal" data-target="#login">Login</a></li>
                                <li><a href="register.jsp" >Register</a></li>
                                <li><a href="tour.jsp">Tour</a></li>
                               
                            </ul>
                        </div>
                    </div><!-- End menu-wrapper -->
                    </li>
                    <li><a href="tour.jsp">Tour</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#login">Login</a></li>
                    <li><a href="#search" id="search_bt"><i class=" icon-search"></i><span>Search</span></a></li>
                </ul>
            </div><!-- End main-menu -->
            </nav>
        </div>
    </div><!-- container -->
    </header><!-- End Header -->

       
        <div class="sub_header bg_1">
        	<div id="intro_txt">
			<h1>Online <strong>Admission</strong>Form</h1>
            </div>
		</div> <!--End sub_header -->
 
 		<div class="container_gray_bg">
        <div id="position">
    	
    </div><!-- Position -->
        <div class="container margin_60">
 		<div class="row">
  
           <div class="col-md-9">
                	<div class="box_style_1">
                      <form action="../St_Register" id="apply_online" method="post" enctype="multipart/form-data">
                   	<div class="indent_title_in">
                    <i class="pe-7s-user"></i>
				<h3 style="text-decoration: underline;">Personal details</h3>
			</div>
			
			
         <div class="wrapper_indent">
                        <div class="row">
		                        	
		                        	<div class="col-md-6">
		                            	<div class="form-group"  >
		                                <label>First name</label>
		                                <input type="text" class="form-control styled required" id="name_apply" name="fname"  placeholder="Enter First Name">
		                            	</div>
		                            </div>
		                            
		                            <div class="col-md-6">
		                            	<div class="form-group">
		                                <label>Last name</label> 
		                                <input type="text" class="form-control styled required" id="lastname_apply" name="lname" placeholder="Enter Last Name">
		                           		 </div>
		                            </div>
                            
                   </div><!-- End row -->
       </div><!-- End row -->
       
       
        <div class="wrapper_indent">
                        <div class="row">
        					
						                        	<div class="col-md-6">
						                            	<div class="form-group">
						                                <label>Email</label>
						                                <input type="email" class="form-control styled required" id="email_apply" name="email" placeholder="youremail@gmail.com">
						                               </div>
						                            </div>
						                            
						                             <div class="col-md-6">
		                            	<div class="form-group">
		                                <label>Mobile Number</label>
		                                <input type="text" class="form-control styled required" id="phone_apply" name="num" placeholder="Enter Your Number">
		                               </div>
		                            </div>
						                           
						                            
		   </div><!-- End row -->
       </div><!-- End row -->
       
       
        <div class="wrapper_indent">
                        <div class="row">
       
	                                    
		                            
		                            <div class="col-md-6">
		                            	<div class="form-group">
		                                <label>Date of birth</label>
		                                <input type="date" class="form-control styled required" id="birth_apply" name="dob"  placeholder="Enter Your DOB">
		                              </div>
		                            </div>
		                             <div class="col-md-6">
		                            	<div class="form-group">
		                                <label>Aadhar Number</label>
		                                <input type="text" class="form-control styled required" id="birth_apply" name="adhar"  maxlength="12" minlength="12" placeholder="Enter 12 digit Aadhar Number">
		                              </div>
		                            </div>
		                             <div class="col-md-6">
                            	<div class="form-group">
                                <label>Gender</label><br>
                                    <div class="radio_inline">
                                    <input type="radio" name="gender" id="gender_apply_male" class="required" value="Male"><label style="margin-right:20px;">Male</label>
                                    <input type="radio" name="gender" id="gender_apply_female" class="required" value="Female"><label>Female</label>
                                    </div>
                            </div>
                            </div>
                            
                            
                            
                            
		   </div><!-- End row -->
       </div><!-- End row -->
       
       
       <div class="wrapper_indent">
                        <div class="row">
       
	                                   <div class="col-md-6">
		                            	<div class="form-group">
		                                <label>Father's Name</label>
		                                <input type="text" class="form-control styled required" id="email_apply" name="f_name" placeholder="Enter Father Name">
		                               </div>
		                            </div>
		                            
		                            <div class="col-md-6">
		                            	<div class="form-group">
		                                <label>Mother's Name</label>
		                                <input type="text" class="form-control styled required" id="phone_apply" name="mname" placeholder="Enter Mother Name">
		                               </div>
		                            </div>
		   </div><!-- End row -->
       </div>
       
       
        <div class="wrapper_indent">
                        <div class="row">
       
	                                   <div class="col-md-6">
		                            	<div class="form-group">
		                                <label>Father's Mobile</label>
		                                <input type="text" class="form-control styled required" id="birth_apply" name="fnum"  placeholder="Enter Father's Number">
		                              </div>
		                            </div>
                  
                        
		                        	<div class="col-md-6">
		                            	<div class="form-group">
		                                <label>Religion</label>
		                                <select class="form-control styled required" name="religion">
		                                			<option value="null">-- select one --</option>
												  <option value="Buddhism">Buddhism</option>
												  <option value="Hindu">Hindu</option>
												  <option value="Muslim">Muslim</option>
												  <option value="Sikh">Sikh</option>
		                                			 <option value="Christian">Christian</option>
		                                			  <option value="Jainism">Jainism</option>
		                                	</select>
		                               </div>
		                            </div>
		   </div>
       </div>
		                            
		         <div class="wrapper_indent">
                        <div class="row">
		                            <div class="col-md-6">
		                            	<div class="form-group">
		                                <label>Category</label>
		                                <select class="form-control styled required" name="cast">
		                                			<option value="null">-- select one --</option>
												  <option value="sc">SC</option>
												  <option value="st">ST</option>
												  <option value="obc">OBC</option>
												  <option value="general">GENERAL</option>
		                                			 
		                                	</select>
		                              </div>
		                            </div>
		                            
		                            
                     <div class="col-md-6">
		                            	<div class="form-group">
		                                <label  >Select Student Image</label>
		                                <input type="file" name="image"  class="form-control styled required">
		                              </div>
		                            </div>
		                            
		                         
		     </div>
       </div>  	
       
         	
                   
                     
                      <hr class="styled_2">
                      <div class="indent_title_in">
                    <i class="pe-7s-map-marker"></i>
				<h3 style="text-decoration: underline;">Address</h3>
			</div>
            	<div class="wrapper_indent">
                    <div class="row">
                        	
                        	<div class="col-md-6">
                            	<div class="form-group">
                                <label>Address line</label>
                            	<textarea class="form-control styled required" placeholder="Enter Student Address" name="adrs"></textarea>
                            </div>
                            </div>
                            <div class="col-md-6">
                            	<div class="form-group">
                                <label>State</label>
                                <select name="state" class="form-control styled required">
                                			<option>---please Select---</option>
														<%
														try {
															String query = "select * from state";
															//get Table data
															ResultSet rs = stmt.executeQuery(query);
															while (rs.next()) {
														%>
														<option><%=rs.getString("state_name")%></option>
														<%
															}
															} catch (Exception e) {
	
															}
														%>
                                </select>
                            </div>
                            </div>
                        </div><!-- End row -->
                        
                         <div class="row">
                   	<div class="col-md-6">
                                <label>City</label>
                                <div class="styled-select">
								<select  name="city" id="country_apply" >
									<option>---Please Select---</option>
														<%
														try {
															String query = "select * from city";
															//get Table data
															ResultSet rs = stmt.executeQuery(query);
															while (rs.next()) {
														%>
														<option><%=rs.getString("city_name")%></option>
														<%
															}
														} catch (Exception e) {

														}
														%>
								</select>
							</div>
                            </div>
                            <div class="col-md-6">
                            <div class="form-group">
                                <label>Pin Code</label>
                                <input type="text" class="form-control styled required" id="postal_code_apply" name="pincode" maxlength="6" minlength="6" placeholder="123456">
                            </div>
                           </div>
                   </div>
                        
                        
                      </div>
                      <hr class="styled_2">
                      
                      
                     
           
                       
                        <div class="indent_title_in">
                        <i class="pe-7s-study"></i>
								<h3 style="text-decoration: underline;">Education Detail</h3>
						</div>
                      <div class="wrapper_indent">
                        <div class="row">
		                        	
		                            <div class="col-md-6">
		                            	<div class="form-group">
		                                <label>10th(%)</label> 
		                                
		                                <input type="text" class="form-control styled required" id="lastname_apply" name="high" placeholder="Enter 10 Percentage">
		                           		 
		                                   	
		                           	 
		                           	 </div>
		                            </div>
		                            
		                           <div class="col-md-6">
		                            	<div class="form-group">
		                                <label>12th (%)</label> 
		                                <input type="text" class="form-control styled required" id="lastname_apply" name="higher" placeholder="Enter 12 Percentage">
		                           		 </div>
		                            </div>
		                            
		                            <div class="col-md-6">
		                            	<div class="form-group">
		                                <label>Graduation(%)</label> 
		                                <input type="text" class="form-control styled required" id="lastname_apply" name="graduation" placeholder="Enter Graduation Percentage">
		                           		 </div>
		                            </div>
		                            <div class="col-md-6">
		                            	<div class="form-group"  >
		                                <label>Roll No. Of Last Exam</label>
		                                <input type="text" class="form-control styled required" id="name_apply" name="roll"  placeholder="Enter Roll Number">
		                            	</div>
		                            </div>
		                           <div class="col-md-6">
		                            	<div class="form-group">
		                                <label>School / College Name</label> 
		                                <input type="text" class="form-control styled required" id="lastname_apply" name="school" placeholder="Enter School/CollegeName">
		                           		 </div>
		                            </div>
                            
                             
                   </div><!-- End row -->
       </div><!-- End row -->
                      
                      <hr class="styled_2">
                      
                       <div class="indent_title_in">
                       
                          <i class="pe-7s-users"></i>
				<h3 style="text-decoration: underline;">Log-In Credential</h3>
			</div>
            	<div class="wrapper_indent">
                    <div class="row">
                    
                     <div class="col-md-4">
	                            			<div class="form-group">
	                                			<label>User name</label> 
	                                			<input type="text" class="form-control styled required" id="lastname_apply" name="uname" placeholder="Enter UserName">
	                            			</div>
	                           		 </div>
                     					<div class="col-md-4">
		                            	<div class="form-group">
		                                <label>Password</label>
		                                <input type="password" class="form-control styled required" id="birth_apply" name="pass"  placeholder="Enter Password">
		                              </div>
		                            </div>
		                            
		                            <div class="col-md-4">
		                            	<div class="form-group">
		                                <label>Confirm Password</label>
		                                <input type="password" class="form-control styled required" id="birth_apply" name="cpass"  placeholder="Enter Confirm Password">
		                              </div>
		                            </div>
                    </div>
         </div>
                      
                      <hr class="styled_2">
                      
                      <!-- <div class="wrapper_indent" >
				                      <div class="form-group">
									<input type="checkbox" name="policy_terms" id="policy_terms" class="required" value="Yes"><label>I accept <a href="#0">terms and conditions</a> and general policy.</label>
								</div>
						<div  style="display: ">
						<p><button type="button"  style="display:inline; "  href="home.jsp" class="button"><a  href="home.jsp" >Exit</a></button><p>
					 <p><button type="reset"   style="display:inline; " class="button">Clear</button></p>
                     <p><button type="submit"  style="display:inline; " class="button">Save&Next</button></p>
                     </div>
                      		</div> -->
                      		
                      		
              	<div class="wrapper_indent">
                      <div class="row">
       
	                                   <div class="form-group">
										<input type="checkbox" name="policy_terms" id="policy_terms" class="required" value="Yes"><label>I accept <a href="#0">terms and conditions</a> and general policy.</label>
									</div>
		                            
		                            <a  href="home.jsp" ><p ><button type="button"  style="display:inline; "  href="home.jsp" class="button">Exit</button><p></a>
									 <p><button type="reset"   style="display:inline; " class="button">Clear</button></p>
				                     <p><button type="submit"  style="display:inline; " class="button">Save&Next</button></p>
		   </div><!-- End row -->
       </div><!-- End row -->
                      </form>
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
                 <!--    <div class="box_side"><h4>Plan a visit</h4> <i class="icon_pencil-edit"></i>
                    <p>By filling out this form, you agree to allow your information to be shared with a consortium of colleges and universities  to contact you with more information. </p>
                    <a href="#0" class="button small">Plan a visit</a>
</div> --><div class="box_side">
                    <h5>Apply Online</h5> <i class="icon_desktop"></i>
                    <p>By filling out this form, you agree to allow your information to be shared with a consortium of colleges and universities  to contact you with more information. </p>  
                    <p><a href="register.jsp" class="button small">Apply online</a> </p>
</div>

           </div>
            </div><!--End row -->
        </div><!--End container -->
        </div><!--End container_gray_bg -->
  
  		
	
	<footer>
        <div class="container">
            <div class="row ">
                <div class="col-md-3 col-sm-3">
                    <p id="logo_footer">
                        <img src="img/logo.png" width="125" height="40" alt="Atena" data-retina="true">
                    </p>
                </div>
                <div class="col-md-3 col-sm-3">
                    <h4>About</h4>
                    <ul>
                        <li><a href="#">About us</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Login</a></li>
                        <li><a href="#">Register</a></li>
                        <li><a href="#">Terms and condition</a></li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-3">
                    <h4>Academic</h4>
                    <ul>
                        <li><a href="#">Plans of study</a></li>
                        <li><a href="#">Courses</a></li>
                        <li><a href="#">Admissions</a></li>
                        <li><a href="#">Staff</a></li>
                        <li><a href="#">Students</a></li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-3">
                    <h4>Contact us</h4>
                    <ul>
                        <li><a href="#">Contacts</a></li>
                        <li><a href="#">Plan a visit</a></li>
                    </ul>
                    <ul id="contacts_footer">
                        <li>Info line - <a href="tel://033284322">+000-1234567</a></li>
                        <li>Email - <a href="#">info@educationassembly.com</a> / <a href="#">office@educationassembly.com</a></li>
                    </ul>
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
        </footer><!-- End footer -->
        <div id="copy">
            <div class="container">
                 © Education-Assembly 2021 .
            </div>
        </div><!-- End copy -->    
    
<!-- Login modal -->   
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myLogin" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<form action="St_Login" method="post" class="popup-form" id="myLogin">
					<input type="text" name="uname" class="form-control form-white" placeholder="Username">
					<input type="text" name="pass" class="form-control form-white" placeholder="Password">
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
    
<!-- Register modal -->   
<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myRegister" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<form action="#" class="popup-form" id="myRegister">
					<input type="text" class="form-control form-white" placeholder="Name">
					<input type="text" class="form-control form-white" placeholder="Last Name">
                    <input type="email" class="form-control form-white" placeholder="Email">
                    <input type="text" class="form-control form-white" placeholder="Password">
					<div class="checkbox-holder text-left">
						<div class="checkbox">
							<input type="checkbox" value="accept_2" id="check_2" name="check_2" />
							<label for="check_2"><span>I Agree to the <strong>Terms &amp; Conditions</strong></span></label>
						</div>
					</div>
					<button type="submit" class="btn btn-submit">Register</button>
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