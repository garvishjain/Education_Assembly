<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>College Affilition</title>
<!-- Import package -->
<%@page import="in.common.GetConnection"%>
<%@ include file="INC/stdimport.jsp"%>

<%
	GetConnection getConObj = new GetConnection();
	Connection con = getConObj.getCon();
	Statement stmt = con.createStatement();
%>


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
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->






<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>



<script type="text/javascript">
	function nextpage() {
		document.getElementById('first').style.display = "none";
		document.getElementById('second').style.display = "block";
	}
	function prev() {
		document.getElementById('second').style.display = "none";
		document.getElementById('first').style.display = "block";
	}
	function antnext() {
		document.getElementById('second').style.display = "none";
		document.getElementById('third').style.display = "block";
	}
	function fprev() {
		document.getElementById('third').style.display = "none";
		document.getElementById('second').style.display = "block";
	}
</script>


</style>

</head>



<body>

	<!--[if lte IE 8]>
    <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
<![endif]-->



	<div class="pulse"></div>
	</div>
	<!-- Pulse Preloader -->

	<%@ include file="itc/header.jsp"%>


	<!-- 	<div class="container_gray_bg"> -->
	<!-- 		<div id="position"> -->
	<!-- 			<div class="container"></div> -->
	<!-- 		</div> -->
	<!-- 		<!-- Position -->
	-->


	<div class="container margin_60">
		<div class="row">
			<br> <br> <br>
			<div class="col-md-14">
				<div class="box_style_1">


					<form action="../collegeaffilation" id="form" method="POST"
						enctype="multipart/form-data">

						<fieldset>

							<div class="indent_title_in">
								<span style="color: red" id="error"></span>
								<legend>
									<h2 class="reg">Affiliation Form</h2>
								</legend>
								<i class="pe-7s-user"></i>

							</div>
<<<<<<< HEAD
<fieldset id="first">
=======
							<fieldset id="first" Style="display: block;">


>>>>>>> origin/main
								<div class="row">
									<div class="col-md-8">
										<div class="form-group">
											<p class="form-control styled " id="cname" name="cname">

												<b><i>Applying for college affiliation from the
														university. You have to first download this pdf form and
														fill out completely. and make a pdf of filled form </i></b>
											</p>
										</div>
									</div>
								</div>
								<br> <br>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<embed src="imp/affiliationform.pdf" type="application/pdf"
												height="200px" width="100%" class="responsive">
											<br> <br> <br>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="form-group">


										<input type="checkbox" name="policy_terms" id="policy_terms"
											required="required"><label>I accept <a
											href="#0">terms and conditions</a> and general policy.
										</label>
									</div>
								</div>
								<div class="row">
									<div class="form-group">
										<a href="imp/affiliationform.pdf"><input type="button"
											class="next btn btn-info" value="download"></a> <input
											type="button" name="next" onclick="nextpage()"
											class="next btn btn-info" value="Next" />
									</div>
								</div>
							</fieldset>

							<fieldset id="second" Style="display: none;">


								<div class="wrapper_indent">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>College Name</label> <input type="text"
													class="form-control styled " id="cname" name="cname"
													placeholder="Enter college name"> <span
													style="color: red" id="cnameerr"></span>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>University name</label> <select class="form-control"
													id="uniname" name="uniname" required="required">
													<option value="">---Please Select---</option>

													<%
														try {
															String query = "select * from university";
															//get Table data
															ResultSet rs = stmt.executeQuery(query);
															while (rs.next()) {
													%>
													<option ><%=rs.getString("u_name")%></option>
													<%
														}
														} catch (Exception e) {

														}
													%>
												</select> <span style="color: red" id="uninameerr"></span>
											</div>
										</div>
									</div>
									<!-- End row -->
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Dean Name</label> <input type="text"
													class="form-control styled " id="dname" name="dname"
													placeholder="Enter Dean name"> <span
													style="color: red" id="dnameerr"></span>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>College Type</label> <select class="form-control"
													name="ctype" required="required">
													<option value="">---Please Select---</option>

													<%
														try {
															String query = "select * from type";
															//get Table data
															ResultSet rs = stmt.executeQuery(query);
															while (rs.next()) {
													%>
													<option ><%=rs.getString("details")%></option>
													<%
														}
														} catch (Exception e) {

														}
													%>
												</select> <span style="color: red" id="ctypeerr"></span>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Fax Number</label> <input type="text"
													class="form-control styled " id="fax" name="fax"
													placeholder="Enter Number" required=""> <span
													style="color: red" id="cfaxerr"></span>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>College category</label> <select class="form-control"
													name="ccategory" id="ccategory" required="required">
													<option value="" disabled selected>---Please
														Select---</option>
													<%
														try {
															String query = "select * from category";
															//get Table data
															ResultSet rs = stmt.executeQuery(query);
															while (rs.next()) {
													%>
													<option value="<%=rs.getString("details")%>">
														<%=collegeCategory[i++]%></option>
													<%
														}
														} catch (Exception e) {

														}
													%>
												</select> <span style="color: red" id="ccategoryerr"></span>
											</div>
										</div>
									</div>
									<br>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>UserName</label> <input type="text"
													class="form-control styled " id="uname" name="uname"
													placeholder="Enter UserName"> <span
													style="color: red" id="unameerr"></span>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Email</label> <input type="email"
													class="form-control styled required" id="email"
													name="email" placeholder="youremail@domain.com"> <span
													style="color: red" id="emailerr"></span>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Phone number</label> <input type="text"
													class="form-control styled required" id="num" name="num"
													placeholder="9876543210" maxlength="10" minlength="10">
												<span style="color: red" id="numerr"></span>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Establish year</label> <input type="number"
													class="form-control styled required valid" id="year"
													name="year" min="1890" max="2035"> <span
													style="color: red" id="yearerr"></span>
											</div>
										</div>
									</div>
									<!-- End row -->
									<!-- End row -->
								</div>
								<hr class="styled_2">
								<div class="indent_title_in">
									<i class="pe-7s-map-marker"></i>
									<h3>Address</h3>

								</div>
								<div class="wrapper_indent">


									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Address </label> <input type="text"
													class="form-control styled required" id="address"
													name="address" placeholder="Your full address"> <span
													style="color: red" id="addresserr"></span>
											</div>
										</div>
										<div class="col-md-6">
											<label>Country</label>

											<div class="styled-select">
												<select class="form-control required" name="cntry"
													disabled="">
													<option value="india">India</option>
												</select>&gt;


											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>State</label> <select class="form-control"
													name="state" id="sts" required="">
													<option value="">Select State</option>
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
												</select> <span style="color: red" id="stserr"></span>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>City</label> <select id="state" name="city"
													class="form-control">
													<option value="">Select city</option>
												</select> <span style="color: red" id="cityerr"></span>
											</div>
										</div>
									</div>
									<!-- End row -->

									<div class="row">

										<div class="col-md-10">
											<div class="form-group">
												<label>Postal Code</label> <input type="text"
													class="form-control styled required" id="pincode"
													name="pincode" placeholder="Enter Area Code" maxlength="6"
													minlength="6"> <span style="color: red" id="pinerr"></span>

											</div>
										</div>
									</div>


								</div>



								<hr class="styled_2">

								<div class="wrapper_indent">



									<div class="row">




										<div class="col-md-10">
											<div class="form-group">
												<label>College image</label> <input type="file"
													accept="image/gif, image/jpeg, image/png" id="pic"
													class="form-control" name="pic">
											</div>
											<span style="color: red" id="picerr"></span>
										</div>

									</div>
									<!-- End row -->




								</div>
								<hr class="styled_2">


								<div class="wrapper_indent">
									<div class="form-group">

										<div class="col-md-6">
											<div class="form-group">

												<label class="form-label">Password</label> <input
													type="password" class="form-control styled required"
													id="pass" name="pass" placeholder="Enter Password"
													minlength="8" maxlength="20">&nbsp; <br> <br>
												<input type="checkbox" onclick="myFunction()">&nbsp;Show
												Password <span style="color: red" id="passerr"></span>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Confirm Password</label> <input type="password"
													class="form-control styled required" id="cpass"
													name="cpass" placeholder="Enter Confirm Password">
												<span style="color: red" id="cpasserr"></span> <span
													style="color: green" id="cpaserr"></span>
											</div>
										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<input type="button" name="previous"
														class="previous btn btn-default" onclick="prev()"
														value="Previous" /> <input type="button" name="next"
														class="next btn btn-info" onclick="antnext()" value="Next" />
												</div>
											</div>
										</div>
							</fieldset>



							<fieldset id="third" Style="display: none;">
								<div class="row">

									<div class="col-md-10">
										<div class="form-group">
											<label> upload Affiliation form </label> <input type="file"
												accept="application/pdf" id="pdf"
												class="form-control" name="pdf">
										</div>
										<span style="color: red" id="picerr"></span>
									</div>

								</div>
								<div class="row">
								<div class="form-group">
									<input type="checkbox" name="policy_terms" id="policy_terms"
										class="required" value="Yes"><label>I accept <a
										href="#0">terms and conditions</a> and general policy.
									</label>
								</div>
								<p>
									<input type="button" name="previous"
										class="previous btn btn-default" onclick="fprev()"
										value="Previous" />

									<button type="submit" class="button">Submit</button>
								</p>
                             </div>
							</fieldset>
					</form>
				</div>
			</div>


			<div class="box_side">
				<p>By filling out this form, you agree to allow your information
					to be shared with a consortium of colleges and universities to
					contact you with more information.</p>


			</div>
		</div>
		<!--End row -->
	</div>
	<!--End container -->
	</div>
	<!--End container_gray_bg -->





	<%@ include file="itc/footer.jsp"%>
</body>
</html>