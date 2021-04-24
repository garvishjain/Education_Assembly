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
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    

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




<script type="text/javascript">
document.getElementById('first').style.display = "block";
document.getElementById('second').style.display = "none";
document.getElementById('third').style.display = "none";
document.getElementById('four').style.display = "none";

	function firstnext() 
				{
					document.getElementById('first').style.display = "none";
					document.getElementById('second').style.display = "block";
				
				}
	function secondprev()
				{
					document.getElementById('second').style.display = "none";
					document.getElementById('first').style.display = "block";
				}
	function secondnext() 
				{
					document.getElementById('second').style.display = "none";
					document.getElementById('third').style.display = "block";
				}
	function thirdprev() 
				{
					document.getElementById('third').style.display = "none";
					document.getElementById('second').style.display = "block";
				}

	function thirdnext() 
				{
					document.getElementById('third').style.display = "none";
					document.getElementById('four').style.display = "block";
				}
	function fourprev() 
				{
					document.getElementById('four').style.display = "none";
					document.getElementById('third').style.display = "block";
				}
</script>


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
    	
    </div><!-- Position -->
        <div class="container margin_60">
 		<div class="row">

				<div class="col-md-9">
					<div class="box_style_1">
						<form action="../St_Register" id="apply_online" method="post"
							enctype="multipart/form-data">



							<fieldset id="first"  Style="display:block;">
							
							
								<div class="indent_title_in">
									<i class="pe-7s-user"></i>
									<h3 style="text-decoration: underline;">Personal details</h3>
								</div>


								<div class="wrapper_indent">
									<div class="row">

										<div class="col-md-6">
											<div class="form-group">
												<label>First name</label> <input type="text"
													class="form-control styled required" id="fname"
													name="fname" placeholder="Enter First Name">
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Last name</label> <input type="text"
													class="form-control styled required" id="lname"
													name="lname" placeholder="Enter Last Name">
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Email</label> <input type="email"
													class="form-control styled required" id="email"
													name="email" placeholder="youremail@gmail.com">
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Mobile Number</label> <input type="text"
													class="form-control styled required" id="num" name="num"
													placeholder="Enter Your Number">
											</div>
										</div>





										<div class="col-md-6">
											<div class="form-group">
												<label>Date of birth</label> <input type="date"
													class="form-control styled required" id="dob" name="dob"
													placeholder="Enter Your DOB">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Aadhar Number</label> <input type="text"
													class="form-control styled required" id="aadhar"
													name="adhar" maxlength="12" minlength="12"
													placeholder="Enter 12 digit Aadhar Number">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Gender</label><br>
												<div class="radio_inline">
													<input type="radio" name="gender" id="gender"
														class="required" value="Male"><label
														style="margin-right: 20px;">Male</label> <input
														type="radio" name="gender" id="gender" class="required"
														value="Female"><label>Female</label>
												</div>
											</div>
										</div>



										<div class="col-md-6">
											<div class="form-group">
												<label>Father's Name</label> <input type="text"
													class="form-control styled required" id="fname"
													name="f_name" placeholder="Enter Father Name">
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Mother's Name</label> <input type="text"
													class="form-control styled required" id="mname"
													name="mname" placeholder="Enter Mother Name">
											</div>
										</div>


										<div class="col-md-6">
											<div class="form-group">
												<label>Father's Mobile</label> <input type="text"
													class="form-control styled required" id="fnum" name="fnum"
													placeholder="Enter Father's Number">
											</div>
										</div>


										<div class="col-md-6">
											<div class="form-group">
												<label>Religion</label> <select
													class="form-control styled required" name="religion"
													id="religion">
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

										<div class="col-md-6">
											<div class="form-group">
												<label>Category</label> <select
													class="form-control styled required" name="cast" id="cast">
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
												<label>Select Student Image</label> <input type="file"
													name="image" id="image"
													class="form-control styled required">
											</div>
										</div>

											<hr>
										<input type="button" name="password" class="next btn btn-info"
										onclick="firstnext()" value="Next"  />

									</div>
								</div>
							</fieldset>


							<!-- Second Session Start -->
							<fieldset id="second" Style="display:none;">
								<div class="indent_title_in">
									<i class="pe-7s-map-marker"></i>
									<h3 style="text-decoration: underline;">Address</h3>
								</div>
								<div class="wrapper_indent">
									<div class="row">

										<div class="col-md-6">
											<div class="form-group">
												<label>Address line</label>
												<textarea class="form-control styled required" id="adrs"
													placeholder="Enter Student Address" name="adrs"></textarea>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>State</label> <select name="state" id="state"
													class="form-control styled required">
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


										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>City</label> <select name="city" id="city" class="form-control styled required">
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
													<label>Pin Code</label> <input type="text"
														class="form-control styled required" id="pincode"
														name="pincode" maxlength="6" minlength="6"
														placeholder="123456">
												</div>
											</div>

										<div class="col-md-6">
										<div class="form-group">
											<input type="button" name="previous"
												class="previous btn btn-default" onclick="secondprev()" value="Previous" /> 
												<input
												type="button" name="next" onclick="secondnext()"  class="next btn btn-info"
												value="Next"  />
										</div>
									</div>
										</div>
									</div>
							</fieldset>




		<!-- Third session start -->
							<fieldset id="third" Style="display:none;">
								<div class="indent_title_in">
									<i class="pe-7s-study"></i>
									<h3 style="text-decoration: underline;">Education Detail</h3>
								</div>
								<div class="wrapper_indent">
									<div class="row">

										<div class="col-md-6">
											<div class="form-group">
												<label>10th(%)</label> <input type="text"
													class="form-control styled required" id="high" name="high"
													placeholder="Enter 10 Percentage">



											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>12th (%)</label> <input type="text"
													class="form-control styled required" id="higher"
													name="higher" placeholder="Enter 12 Percentage">
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Graduation(%)</label> <input type="text"
													class="form-control styled required" id="grad"
													name="graduation" placeholder="Enter Graduation Percentage">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Roll No. Of Last Exam</label> <input type="text"
													class="form-control styled required" id="roll" name="roll"
													placeholder="Enter Roll Number">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>School / College Name</label> <input type="text"
													class="form-control styled required" id="school"
													name="school" placeholder="Enter School/CollegeName">
											</div>
										</div>
										 
										 <div class="col-md-6">
										<div class="form-group">
											<input type="button" name="previous"
												class="previous btn btn-default" onclick="thirdprev()" value="Previous" /> 
												<input
												type="button" name="next" onclick="thirdnext()"  class="next btn btn-info"
												value="Next"  />
										</div>
									</div>
									
							
					</div>
					<!-- End row -->
				</div>
				<!-- End row -->
</fieldset>
				<fieldset id="four" Style="display:none;">
                      
                       <div class="indent_title_in">
                       
                          <i class="pe-7s-users"></i>
				<h3 style="text-decoration: underline;">Log-In Credential</h3>
			</div>
            	<div class="wrapper_indent">
                    <div class="row">
                    
                     <div class="col-md-4">
	                            			<div class="form-group">
	                                			<label>User name</label> 
	                                			<input type="text" class="form-control styled required" id="user" name="uname" placeholder="Enter UserName">
	                            			</div>
	                           		 </div>
                     					<div class="col-md-4">
		                            	<div class="form-group">
		                                <label>Password</label>
		                                <input type="password" class="form-control styled required" id="pass" name="pass"  placeholder="Enter Password">
		                              </div>
		                            </div>
		                            
		                            <div class="col-md-4">
		                            	<div class="form-group">
		                                <label>Confirm Password</label>
		                                <input type="password" class="form-control styled required" id="birth_apply" name="cpass"  placeholder="Enter Confirm Password">
		                              </div>
		                            </div>
                    
       
	                                   <div class="form-group">
										<input type="checkbox" name="policy_terms" id="policy_terms" class="required" value="Yes"><label>I accept <a href="#0">terms and conditions</a> and general policy.</label>
									</div>
		                            
		                            <a  href="home.jsp" ><p ><button type="button"  style="display:inline; "  href="home.jsp" class="button">Exit</button><p></a>
									 <p><button type="reset"   style="display:inline; " class="button">Clear</button></p>
				                     <p>  <button  type="submit" onclick="jquery()">Register</button></p>
                            				<span id="showMsg"></span>
                            			
                            				<input type="button" name="previous"
												class="previous btn btn-default" onclick="fourprev()" value="Previous" /> 
											
									<button type="submit" class="button">Submit</button>
                            				
                            				
		   </div><!-- End row -->
       </div><!-- End row -->
       </fieldset>
         </form>             <!-- </form> -->
                    </div>
           </div>
           <br>
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





    <script type="text/javascript" src="js/lib/jquery-1.11.0.min.js"></script>
     <script type="text/javascript">
    
   function jquery()
    {
	   /* Student Info */
    	var FirstName =$('#fname').val();
    	var LastName =$('#lname').val();
    	var E_Mail =$('#email').val();
    	var Number =$('#num').val();
    	var Dob =$('#dob').val();
    	var Aadhar =$('#aadhar').val();
    	var Gender =$('#gender').val();
    	var Fname =$('#fname').val();
    	var Mname =$('#mname').val();
    	var Fnum =$('#fnum').val();
    	var Religion =$('#religion').val();
    	var Cast =$('#cast').val();
    	
    	
    	/* Student Address */
    	var Adrs =$('#adrs').val();
    	var State =$('#state').val();
    	var City =$('#city').val();
    	var Pincode =$('#pincode').val();
    	
    	/* Student Education */
    	var High =$('#high').val();
    	var Higher =$('#Higher').val();
    	var Grad =$('#grad').val();
    	var Roll =$('#roll').val();
    	var School =$('#school').val();
    	var User =$('#user').val();
    	var Pass =$('#pass').val();
    	$.ajax({
    		type:'POST',
    		url:'Regis',
    		data:{fname:FirstName,lname:LastName,email:E_Mail,num:Number,dob:Dob,aadhar:Aadhar,gender:Gender,
    				fname:Fname,mname:Mname,fnum:Fnum,religion:Religion,cast:Cast,image:Image,adrs:Adrs,state:State,
    				city:City,pincode:Pincode,high:High,higher:Higher,grad:Grad,roll:Roll,school:School,user:User,pass:Pass},
    		success:function(result)
    		{
    			$('#showMsg').html(result);
    			$('#fname').val("");
    			$('#lname').val("");
    			$('#email').val("");
    			$('#num').val("");
    			$('#dob').val("");
    			$('#aadhar').val("");
    			$('#gender').val("");
    			$('#fname').val("");
    			$('#mname').val("");
    			$('#fnum').val("");
    			$('#religion').val("");
    			$('#cast').val("");
    			$('#image').val("");
    			$('#adrs').val("");
    			$('#state').val("");
    			$('#city').val("");
    			$('#pincode').val("");
    			$('#high').val("");
    			$('#higher').val("");
    			$('#grad').val("");
    			$('#roll').val("");
    			$('#school').val("");
    			$('#user').val("");
    			$('#pass').val("");
    			
    		}
    	});
    	
    }
    </script>







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