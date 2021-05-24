 <%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp"%>
<%
		GetConnection getConObj=new GetConnection();
		Connection con=getConObj.getCon();
		Statement stmt=con.createStatement();
		%>
<!DOCTYPE html>
<%@page import="in.common.hashed"%>
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
<!-- bhaibhai -->
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
<style type="text/css">
.sub_heade {
	margin-top: 70px;
}
</style>

<script type="text/javascript">
function visit() {
	var name = document.getElementById("name").value;
	var email = document.getElementById("email").value;
	var num = document.getElementById("phone").value;
	var college = document.getElementById("college").value;
	var date = document.getElementById("date").value;
	var time = document.getElementById("time").value;
	if (name=="") 
				{
					document.getElementById("nameerr").innerHTML = "Please Enter Your Name";
					return false;
				} 
				else 
				{
					document.getElementById("nameerr").innerHTML = "";
				}
	if (num=="")
	{
		document.getElementById("numerr").innerHTML = "Please Enter Your Number";
		if(num>=10&&num<=10)
		{
				document.getElementById("nummerr").innerHTML = "Please Enter 10 Digit Number";
				return false;
				}
			else
			{
				document.getElementById("nummerr").innerHTML = "";
			}
		return false;
	} 
	else
	{
		document.getElementById("numerr").innerHTML = "";
	}
	
	if (email=="") 
				{
					document.getElementById("emailerr").innerHTML = "Please Enter E-Mail Id";
					return false;
				} 
				else
				{
					document.getElementById("emailerr").innerHTML = "";
				}

	if (college=="null") 
				{
					document.getElementById("collegeerr").innerHTML = "Please Select College";
					return false;
				}
				else 
				{
					document.getElementById("collegeerr").innerHTML = "";
				}
	if (date=="") 
				{
					document.getElementById("dateerr").innerHTML = "Please Enter Visit Date";
					return false;
				} 
				else 
				{
					document.getElementById("dateerr").innerHTML = "";
				}
	if (time=="")
	{
		document.getElementById("timeerr").innerHTML = "Please Enter Visit Time";
		return false;
	} 
	else
	{
		document.getElementById("timeerr").innerHTML = "";
	}
	return true;
}
</script>
</head>
<body>

	<div id="preloader">
		<div class="pulse"></div>
	</div>
	
	<div>
	<%@ include file="itc/header.jsp"%>
	</div>

	<div class="sub_heade"></div>

	<div class="container_gray_bg">
		<div class="container margin_60">
			<div class="row">
				<div class="col-md-9">
					<div class="box_style_1">

						<div class="indent_title_in">
							<i class="pe-7s-mail-open-file"></i>
							<h3>Visit us</h3>
				<%
						hashed gethash = new hashed();
						if(request.getParameter("status") != null && request.getParameter("status").equals("ec3e272230019503389a1ffd1bbac8c4e80ba171f067356f3ef4b7323903dceb"))
							{
				%>
						<center>
									<h4>
										<span id="showMsg" class="text-success">Data Registered</span>
									</h4>
								</center>
				<% 
							} 
					else if(request.getParameter("status") != null && !(request.getParameter("status").equals("ec3e272230019503389a1ffd1bbac8c4e80ba171f067356f3ef4b7323903dceb")))
								{
				%>
						<center>
								<h4>
									<span id="showMsg" class="text-danger"><h4>Something Went Wrong!!!</span>
								</h4>
						</center>
				<% } %>
						</div>
			
						<div class="wrapper_indent">
							<div id="message-contact"></div>
							<form action="../Visit_Us" method="post" onsubmit="return visit()">
								<div class="row">
									<div class="col-md-6 col-sm-6">

										<div class="form-group">
											<label>Enter name</label> <input type="text"
												class="form-control styled required" id="name"
												name="name" placeholder="Enter name">
												<span style="color: red" id="nameerr"></span>
										</div>

										<div class="form-group">
											<label>Enter Email</label> <input type="email"
												id="email" name="email" class="form-control styled"
												placeholder="Enter Email">
												<span style="color: red" id="emailerr"></span>
										</div>

									</div>

									<div class="col-md-6 col-sm-6">
										<div class="form-group">
											<label>Enter Phone number</label> <input type="text"
												id="phone" name="num" class="form-control styled"
												placeholder="Enter number"
												oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1')">
												<span style="color: red" id="numerr"></span>
												<span style="color: red" id="nummerr"></span>
										</div>
									</div>

									<div class="col-md-6 col-sm-6">
										<div class="form-group">
											<label>Select College/University</label> <select
												name="college" id="college"
												class="form-control styled required" required="required">
												<option value="null">---Please Select---</option>
												<%
														try {
															String query = "select * from university";
															//get Table data
															ResultSet rs = stmt.executeQuery(query);
															while (rs.next()) {
													%>
												<option><%=rs.getString("u_name")%></option>
												<%
														}
														} catch (Exception e) {

														}
													%>
											</select>
											<span style="color: red" id="collegeerr"></span>
										</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-md-6 col-sm-6">
												<div class="form-group">
													<label>Preferred visit date</label> <input type="date"
														name="date" id="date" class="form-control styled"
														placeholder="Select date">
										<span style="color: red" id="dateerr"></span>
												</div>
											</div>
											
											<div class="col-md-6 col-sm-6">
												<div class="form-group">
													<label>Preferred visit time</label> <input
														class="time-pick form-control styled" type="time"
														name="time" id="time">
												<span style="color: red" id="timeerr"></span>
												</div>
											</div>
								</div>
								
								<div class="row">
									<div class="col-md-6">
										<input type="submit" value="Submit"
											class="button add_bottom_30" id="submit-contact" />
									</div>
								</div>
							</form>
						</div>
						<!-- End wrapper_indent -->
					</div>
					<!-- End box style 1-->
				</div>
				<!-- End col-md-9 -->
				<br>
				
				<aside class="col-md-3">
					<h3>Contacts info</h3>
					<p>
						Gwalior<br> + 000-1234567 <br> + 000- 7654321<br> <a
							href="#">info@educationassembly.com</a>
					</p>
					<h5>Get directions</h5>
					<form action="http://maps.google.com/maps" method="get"
						target="_blank">
						<div class="form-group">
							<input type="text" name="saddr" placeholder="Enter your location"
								class="form-control styled"> <input type="hidden"
								name="daddr" value="Emotech Software Solutions pvt ltd">
							<!-- Write here your end point -->
						</div>
						<input type="submit" value="Get directions"
							class="button small nomargin">
					</form>
					<hr class="styled">
					<h3>Departments</h3>
					<ul class="contacts_info">
						<li><strong>Admission</strong><br> <a>admission@educationassembly.com</a><br>
							<small>Monday to Friday 9am - 7pm</small></li>
						<li><strong>General questions</strong><br> <a>questions@educationassembly.com</a><br>
							<small>Monday to Friday 9am - 7pm</small></li>
					</ul>
				</aside>

			</div>
			<!--End row -->
		</div>
		<!--End container -->
	</div>
	<!--End container_gray_bg -->
	<div>
		<%@ include file="itc/footer.jsp"%>
	</div>

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

	<!-- Common scripts -->
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/common_scripts_min.js"></script>
	<script src="js/functions.js"></script>
	<script src="assets/validate.js"></script>
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