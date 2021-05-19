<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="college, campus, university, courses, school, educational">
<meta name="description"
	content="ATENA - College, University and campus template">
<meta name="author" content="Ansonika">
<title>College, University and campus</title>


<!-- Favicons-->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" type="image/x-icon"
	href="img/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
	href="img/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
	href="img/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
	href="img/apple-touch-icon-144x144-precomposed.png">

<!-- BASE CSS -->
<link href="css/base.css" rel="stylesheet">

<!-- SPECIFIC CSS -->
<link href="css/skins/square/blue.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->

<!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp"%>

<%
	GetConnection getConObj = new GetConnection();
	Connection con = getConObj.getCon();
	Statement stmt = con.createStatement();
%>
<style type="text/css">
p {
	display: inline;
	size: 120px;
	text-align: center;
	font-size: 16px;
	padding: 1px 2px;
}

label {
	font-size: 18px;
}
.box_style_1, a.box_style_1 {
    background-color: white;
     width: 1200px; 
    margin: auto;
    margin-left: -30px;
    margin-top: 6px;
    /* margin-left: -120px; */ 
    -webkit-box-shadow: 0px 3px 0px 0px #f0f2f4;
    -moz-box-shadow: 0px 3px 0px 0px #f0f2f4;
    box-shadow: 0px 3px 0px 0px #f0f2f4;
    margin-bottom: 30px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    display: block;
    padding: 30px 30px 10px 30px;
    color: #444;
    transition: all 500ms ease-in-out;
    -webkit-transition: all 500ms ease-in-out;
    -moz-transition: all 500ms ease-in-out;
    -o-transition: all 500ms ease-in-out;
}
</style>


<script type="text/javascript">
	function myFunction() {
		var x = document.getElementById("pass");
		if (x.type === "password") {
			x.type = "text";
		} else {
			x.type = "password";
		}                             
// 		</>
	}
</script>
<script type="text/javascript">
	function validate() {

		var pass = document.getElementById("pass").value;
		var courses = document.getElementById("course").value;
		var cpass = document.getElementById("cpass").value;
		
		if (pass == "") {
			document.getElementById("passerr").innerHTML = "";
			return false;
		} else {
			document.getElementById("passerr").innerHTML = "";
		}
		if (courses == "null") {
			document.getElementById("courseerr").innerHTML = "Please Select Course";
			return false;
		} else {
			document.getElementById("courseerr").innerHTML = "";
		}
		if (cpass == "") {
			document.getElementById("cpasserr").innerHTML = "";
		} else {
			document.getElementById("cpasserr").innerHTML = "";
		}
		if (cpass != pass) {
			document.getElementById("cpasserr").innerHTML = "Password does not match";
			return false;
		} else {
			document.getElementById("cpaserr").innerHTML = "Password Match";
		}
		return true;
	}

	$(document).ready(function() {
		$("#send").on("click", function() {
			var sts = $("#email").val();
			var name = $("#fname").val();
			if (sts === "") {
				$("#error").html("required");
				return false;
			} else {
				$("#error").html("");
				$.ajax({
					url : "../UserVerify",
					data : {
						sts : sts,
						fname : fname
					},
					method : "POST",
					success : function(data) {
						$("#send").html(data);
					}
				});
			}
		});
	});

	$(document).ready(function() {
		$("#verify").on("click", function() {
			var sts = $("#authcode").val();

			if (sts === "") {
				$("#error").html("required");
				return false;
			} else {
				$("#error").html("");
				$.ajax({
					url : "../VerifyCode",
					data : {
						sts : sts
					},
					method : "POST",
					success : function(data) {
						$("#verify").html(data);
					}
				});
			}
		});
	});
	
	function verified() {
		  document.getElementById("verify").style.visibility = "visible";
		  document.getElementById("authcode").style.visibility = "visible";
		}

		function regist() {
		  document.getElementById("register").style.visibility = "visible";
		}
	
	
		function getddl()
		{
		document.getElementById('lblmess').innerHTML=(formid.course[formid.course.selectedIndex].text+'<b>')
		}
</script>
<script type="text/javascript">

</script>

</head>

<body>

	<div id="preloader">
		<div class="pulse"></div>
	</div>
	<!-- Pulse Preloader -->

	<!--Header File-->
	<%@ include file="itc/header.jsp"%>
	<!--Header File-->




	<div class="sub_header bg_1">
		<div id="intro_txt">
			<h1>Admission Form </h1>
		</div>
	</div>
	<!--End sub_header -->

	<div class="container_gray_bg">
		<div id="position"></div>
		<!-- Position -->
		<div class="container margin_60">
			<div class="row">

				<div class="col-md-9">
					<div class="box_style_1">
						<form action="../St_Register" id="apply_online" method="post"
							enctype="multipart/form-data" ><!-- onsubmit="return validate()" -->



							<!-- <fieldset id="first" Style="display: block;"> -->


							<div class="indent_title_in">
								<i class="pe-7s-user"></i>
								<h3 style="text-decoration: underline;">Personal details</h3>
							</div>
							<hr style="width: 105.3%; margin-left: -30px;">

							<div class="wrapper_indent">
								<div class="row">

									<div class="col-md-6">
										<div class="form-group">
											<label>First name</label> <input type="text"
												class="form-control styled required" id="fname" name="fname"
												placeholder="Enter First Name">
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<label>Last name</label> <input type="text"
												class="form-control styled required" id="lname" name="lname"
												placeholder="Enter Last Name">
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<label>Email</label> <input type="email"
												class="form-control styled required" id="email" name="email"
												placeholder="youremail@gmail.com">
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<label>Mobile Number</label> <input type="text"
												class="form-control styled required" id="num" name="num"
												placeholder="Enter Your Number" minlength="10"
												maxlength="10"
												oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1')">
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
												placeholder="Enter 12 digit Aadhar Number"
												oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1')">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Gender</label><br>
											<div class="radio_inline">
												<input type="radio" name="gender" value="Male"
													class="required"> <label> Male</label> <input
													type="radio" name="gender" id="female" value="Female"
													class="required"> <label>Female</label>
											</div>
										</div>
									</div>




									<div class="col-md-6">
										<div class="form-group">
											<label>Father's Name</label> <input type="text"
												class="form-control styled required" id="f_name"
												name="f_name" placeholder="Enter Father Name">

										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<label>Mother's Name</label> <input type="text"
												class="form-control styled required" id="mname" name="mname"
												placeholder="Enter Mother Name">
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
												id="religion" required="required">
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
												class="form-control styled required" required="required"
												name="cast" required="required" id="cast"
												class="form-control styled required">
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
												name="image" id="image" class="form-control styled required">
										</div>
									</div>

									<hr>


								</div>
							</div>
							<!-- 	<input type="button" name="password" class="button"
									onclick="firstnext()" value="Next" /> -->
							<!-- 	</fieldset>


							Second Session Start
							<fieldset id="second" Style="display: none;"> -->
							<hr style="width: 107%; margin-left: -30px;">
							<div class="indent_title_in">
								<i class="pe-7s-map-marker"></i>
								<h3 style="text-decoration: underline;">Address</h3>
							</div>


							<div class="wrapper_indent">
								<div class="row">

									<div class="col-md-6">
										<div class="form-group">
											<label>Address</label>
											<textarea class="form-control styled required" id="adrs"
												placeholder="Enter Student Address" name="adrs"></textarea>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>State</label> <select name="state" id="state"
												class="form-control styled required" required="required">
												<option>---please Select---</option>
												<%-- <%
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



									<div class="col-md-6">
										<div class="form-group">
											<label>City</label> <select name="city" id="city"
												class="form-control styled required" required="required">
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
									</div> --%>
									<%
															try {
																String query = "select * from  state";
																//get Table data
																ResultSet rs = stmt.executeQuery(query);
																while (rs.next()) {
														%>
														<option value="<%=rs.getInt("pk_id")%>"><%=rs.getString("state_name")%></option>
														<%
															}
															} catch (Exception e) {

															}
							  %>
														</select>
				                <span style="color:red" id="stserr"></span>									
                            </div>
                            </div>
                             <div class="col-md-6">
                            	<div class="form-group">
                                <label>City</label>
                               <select id="state" name="city" class="form-control" >
                                 <option value="">Select city</option>
                               </select>
                               <span style="color:red" id="cityerr"></span>
                            </div>
                            </div>
									<div class="col-md-6">
										<div class="form-group">
											<label>Pin Code</label> <input type="text"
												class="form-control styled required" id="pincode"
												name="pincode" maxlength="6" minlength="6"
												placeholder="123456"
												oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1')">
										</div>
									</div>

									<!-- <div class="col-md-6">
											<div class="form-group">
												<input type="button" name="previous" class="button"
													onclick="secondprev()" value="Previous" /> <input
													type="button" name="next" onclick="secondnext()"
													class="button" value="Next" />
											</div>
										</div> -->
								</div>
							</div>
							<!-- 	</fieldset>




							Third session start
							<fieldset id="third" Style="display: none;"> -->
							<hr style="width: 105.3%; margin-left: -30px;">
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
												placeholder="Enter 10 Percentage"
												oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1')">



										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<label>12th (%)</label> <input type="text"
												class="form-control styled required" id="higher"
												name="higher" placeholder="Enter 12 Percentage"
												oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1')">
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<label>Graduation(%)</label> <input type="text"
												class="form-control styled required" id="grad"
												name="graduation" placeholder="Enter Graduation Percentage"
												oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1')">
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
											<label>Last School/College Name</label> <input type="text"
												class="form-control styled required" id="school"
												name="school" placeholder="Enter School/CollegeName">
										</div>
									</div>
								</div>
								<!-- End row -->
							</div>
							<!-- End row -->


							<hr style="width: 105.3%; margin-left: -30px;">
							<div class="indent_title_in">
								<i class="pe-7s-user"></i>
								<h3 style="text-decoration: underline;">College/Course</h3>
							</div>
							<div class="wrapper_indent">
								<div class="row">

								<div class="col-md-6">
										<div class="form-group">
											<label>Select Course</label> <select name="course"
												id="course"  onchange="getddl()" class="form-control styled required"
												required="required">
												<option value="null" >---Please Select---</option>
												<!-- For Master courses -->	
												<optgroup label="Master Courses"></optgroup>
												<%
													try {
														String query = "select  * from course_name where degree_name='"+"Master Degree"+"'  Limit 8";
														//get Table data
														ResultSet rs = stmt.executeQuery(query);
														while (rs.next()) {
												%>
												<option value="<%=rs.getInt("pk_id")%>"><%=rs.getString("course")%></option>
												<%
												  }
													} catch (Exception e) {

													}
												%>
												<!-- For Bachelor courses -->	
												<optgroup label="Bachelor Courses"></optgroup>
												<%
													try {
														String query = "select  * from course_name where degree_name='"+"Bachelor Degree"+"'  Limit 8";
														//get Table data
														ResultSet rs = stmt.executeQuery(query);
														while (rs.next()) {
												%>
												<option value="<%=rs.getInt("pk_id")%>"><%=rs.getString("course")%></option>
												<%
													}
													} catch (Exception e) {

													}
												%>
									<!-- For Diploma courses -->			
												<optgroup label="Diploma Courses"></optgroup>
												<%
													try {
														String query = "select  * from course_name where degree_name='"+"Diploma Course"+"'  Limit 8";
														//get Table data
														ResultSet rs = stmt.executeQuery(query);
														while (rs.next()) {
												%>
												<option value="<%=rs.getInt("pk_id")%>"><%=rs.getString("course")%></option>
												<%
													}
													} catch (Exception e) {

													}
												%>
											</select>
											<span style="color: red" id="courseerr"></span>
										</div>
									</div>

	
									<div class="col-md-6">
										<div class="form-group">
											<label>Select College/University</label> <select
												name="college" id="college"
												class="form-control styled required" required="required">
												<option value="null">---Please Select---</option>
												
											</select>
										</div>
									</div>

									




								</div>
								<!-- End row -->
							</div>



							<!-- 		</fieldset>
							<fieldset id="four" Style="display: none;">
 -->
							<hr style="width: 105.3%; margin-left: -30px;">
							<div class="indent_title_in">

								<i class="pe-7s-users"></i>
								<h3 style="text-decoration: underline;">Log-In Credential</h3>
							</div>


							<div class="wrapper_indent">
								<div class="row">

									<div class="col-md-4">
										<div class="form-group">
											<label>User name</label> <input type="text"
												class="form-control styled required" id="user" name="uname"
												placeholder="Enter UserName"> <span id="available">
												<!--- data show this span tag --->
											</span>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label>Password</label> <input type="password"
												class="form-control styled required" id="pass" name="pass"
												placeholder="Enter Password" minlength="8" maxlength="20">&nbsp;&nbsp;
											<br> <input type="checkbox" onclick="myFunction()">&nbsp;Show
											Password <span style="color: red" id="passerr"></span>


										</div>
									</div>

									<div class="col-md-4">
										<div class="form-group">
											<label>Confirm Password</label> <input type="password"
												class="form-control styled required" id="cpass" name="cpass"
												placeholder="Enter Confirm Password" minlength="8"
												maxlength="20"> <span style="color: green"
												id="cpaserr"></span> <span style="color: red" id="cpasserr"></span>
										</div>
									</div>
								</div>
							</div>
							<div class="wrapper_indent">
								<div class="row">

									<!-- <div class="col-md-4">
										<div class="form-group">
											<input type="text" style="visibility:hidden;" class="form-control styled required"
												id="authcode" name="authcode" placeholder="Enter otp">
											<span id="available"> - data show this span tag -
											</span>
										</div>
									</div> -->





									<!-- <input type="button" name="previous" class="button"
											onclick="fourprev()" value="Previous" /> -->
									<p>

										<button type="Button" name="verify" style="visibility:hidden;" onclick="regist()" id="verify" class="button" >verify
											otp</button>
									</p>
									<span id="showMsg"></span>





								</div>
								<!-- End row -->
							</div>
							<div class="wrapper_indent">
								<div class="row">
									<hr style="width: 110%; margin-left: -95px;">
									<div class="form-group">
										<input type="checkbox" name="policy_terms" id="policy_terms"
											class="form-control styled required" value="Yes"><label>I
											accept <a href="#0">terms and conditions</a> and general
											policy.
										</label>
									</div>

									<!-- <input type="button" name="previous" class="button"
											onclick="fourprev()" value="Previous" /> -->
									<p>
										<!-- <button type="submit" onclick="jquery()" class="button" style="visibility:hidden;" name="register" id="register" disabled>Register</button> -->
									    <button type="submit"name="register" id="register"  class="button" >Register</button>
										<button type="reset"  class="button">Clear</button><!-- onclick="jquery()" --><!-- onclick="jquery()" -->
										
										<button type="Button"  name="send" id="send" class="button">Send OTP</button><!-- onclick="verified()" -->
									</p>
									<span id="showMsg"></span>





								</div>
								<!-- End row -->
							</div>
							<!-- End row -->
							</fieldset>
						</form>
						<!-- </form> -->
					</div>
				</div>
				<br>
				<!-- <div class="col-md-3">

					<h4>
						<strong>How to apply</strong>
					</h4>
					<p>
						Step : College Selection<br> Step : Filling the Application
						Form<br> Step : Appearing for Entrance Exam<br> Step :
						Taking Part in Counselling<br> Step : Final Allocation of
						Seats<br> Step : Final Admission
					</p>

					<div class="box_side">
						<h5>By Phone</h5>
						<i class="icon-phone"></i>
						<p>
							+ 000-1234567<br>
							<small>Monday to Friday 9.00am - 5.00pm</small>
						</p>
					</div>

					<div class="box_side">
						<h5>By Postal Mail</h5>
						<i class="icon_pencil-edit"></i>
						<p>
							<a href="#0"><strong>Download the application form</strong></a>,<br>
							and send it to this address:<br>
							<br>
							<em>Ground Floor, Pragati Maidan Metro Station, Pragati
								Maidan, New Delhi-110001<br>
							</em>
						</p>
					</div>
					<hr class="styled">
					   <div class="box_side"><h4>Plan a visit</h4> <i class="icon_pencil-edit"></i>
                    <p>By filling out this form, you agree to allow your information to be shared with a consortium of colleges and universities  to contact you with more information. </p>
                    <a href="#0" class="button small">Plan a visit</a>
</div>
					<div class="box_side">
						<h5>Apply Online</h5>
						<i class="icon_desktop"></i>
						<p>By filling out this form, you agree to allow your
							information to be shared with a consortium of colleges and
							universities to contact you with more information.</p>
						<p>
							<a href="register.jsp" class="button small">Apply online</a>
						</p>
					</div>

				</ div>-->
			</div>
			<!--End row -->
		</div>
		<!--End container -->
	</div>
	<!--End container_gray_bg -->


	<!--Footer File-->
	<%@ include file="itc/footer.jsp"%>
	<!--Footer File-->

	<!-- Login modal -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog"
		aria-labelledby="myLogin" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<form action="../St_Login" method="post" class="popup-form"
					id="myLogin">
					<input type="text" name="uname" class="form-control form-white"
						placeholder="Enter Username"> <input type="password"
						name="pass" class="form-control form-white"
						placeholder="Enter Password">
					<div class="checkbox-holder text-left">
						<div class="checkbox">
							<input type="checkbox" value="accept_1" id="check_1"
								name="check_1" /> <label for="check_1"><span>I
									Agree to the <strong>Terms &amp; Conditions</strong>
							</span></label>
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
			<input type="search" value="" placeholder="type keyword(s) here">
			<button type="submit" class="button">Search</button>
		</form>
	</div>





	<!--    <script type="text/javascript" src="js/lib/jquery-1.11.0.min.js"></script>
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
 -->


	<script type="text/javascript">
		$(document).ready(function() {

			$("#user").blur(function() {

				var username = $("#user").val();

				if (username.length >= 3) {
					$.ajax({
						url : "username-check.jsp",
						type : "post",
						data : "uname=" + username,
						dataType : "text",
						success : function(data) {
							$("#available").html(data)
						}
					});
				} else {
					$("#available").html(" ");
				}

			});

		});
	</script>



	<!-- Common scripts -->
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/common_scripts_min.js"></script>
	<script src="js/functions.js"></script>
	<script src="assets/validate.js"></script>
<<<<<<< HEAD
	<script src="js/validate.js"></script>
=======
    <script src="js/validate.js"></script>
>>>>>>> origin/main
	<!-- Specific scripts -->
	<script src="js/icheck.js"></script>
	<script>
		$('input').iCheck({
			checkboxClass : 'icheckbox_square-blue',
			radioClass : 'iradio_square-blue'
		});
	</script>
	<script src="js/jquery.validate.js"></script>
	<script>
		$("#apply_online").validate();
	</script>
</body>
</html>