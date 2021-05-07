<!doctype html>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<title>:: Educucation Assembly :: Registration</title>

<!-- Import package -->
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp" %> 

<%
GetConnection getConObj=new GetConnection();
Connection con=getConObj.getCon();
Statement stmt=con.createStatement();

%> 

<!-- Bootstrap Core and vandor -->
<link rel="stylesheet"
	href="../assets/plugins/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="../assets/plugins/dropify/css/dropify.min.css">

<!-- Core css -->
<link rel="stylesheet" href="../assets/css/style.min.css" />
<script type="text/javascript">
	
</script>
</head>

<body class="font-muli theme-cyan gradient">

	<!-- Page Loader -->
	<div class="page-loader-wrapper">
		<div class="loader"></div>
	</div>

	<div id="main_content">
		<!-- Start Main top header -->
		<!-- Start Rightbar setting panel -->
		<!-- Start Theme panel do not add in project -->
		<!-- Start Quick menu with more functio -->
		
		<!-- Start Main leftbar navigation -->
		<!-- Start project content area -->
		<div class="page">
			<!-- Start Page header -->
			<!-- Start Page title and tab -->
			<div class="section-body">
				<div class="container-fluid">
					<div class="d-flex justify-content-between align-items-center ">
					 	<ul class="nav nav-tabs page-header-tab">
                 <li  style="font-size:40px;text-align:center;"><a href="#"><i class="fa fa-graduation-cap brand-logo" ></i><span style="font-size:40px;">Education Assembly</span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<form action="../Registration" method="post">
			<div class="section-body mt-4">
				<div class="container-fluid">
					<div class="tab-content">
						<div class="tab-pane active show" id="Company_Settings">
							<div class="card">
								<div class="card-body">
										<div class="left">
											<ul class="nav nav-tabs page-header-tab">
												<li style="font-size: 20px; text-align: center;"><a
													href="#"><i
														class="fa fa-graduation-cap brand-logo"></i><span
														style="font-size: 20px; text-align: center;">University
															Registration</span></a></li>
											</ul>
										</div>
										<hr
											style="height: 1px; border-width: 0; color: gray; background-color: gray">
										<div class="row">
											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>University Registration <span
														class="text-danger">*</span></label> <input class="form-control"
														type="text" placeholder="Enter Registration Number"
														required="required" name="ureg">
												</div>
											</div>
											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>University Name <span class="text-danger">*</span></label>
													<input class="form-control" type="text" name="uname"
														placeholder="Enter University Name" required="required">
												</div>
											</div>

											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>University Address</label>
													<textarea class="form-control" name="uadrs"
														placeholder="Enter Address"
														aria-label="With textarea" required="required"></textarea>
												</div>
											</div>
											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>Country</label> <select class="form-control"
														name="cntry" >
														<option>---Please Select---</option>
														<%
														try {
															String query = "select * from country";
															//get Table data
															ResultSet rs = stmt.executeQuery(query);
															while (rs.next()) {
														%>
														<option><%=rs.getString("country_name") %>
														<%
															}
														} catch (Exception e) {

														}
														%>
													</select>
												</div>
											</div>
											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>State</label>
													<select class="form-control" name="state" id="sts" class="form-control" required>
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
											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>City</label> <select id="state" name="city"
														class="form-control" >
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
											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>University Category</label> <select
														class="form-control" name="uctgry" required="required">
														<option value="">---Please Select---</option>
														<%
															try {
																String query = "select * from category";
																//get Table data
																ResultSet rs = stmt.executeQuery(query);
																while (rs.next()) {
														%>
														<option><%=rs.getString("details")%></option>
														<%
															}
															} catch (Exception e) {

															}
														%>
													</select>
												</div>
											</div>
											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>University type</label> <select class="form-control"
														name="utype" required="required">
														<option value="">---Please Select---</option>
														<%
															try {
																String query = "select * from type";
																//get Table data
																ResultSet rs = stmt.executeQuery(query);
																while (rs.next()) {
														%>
														<option><%=rs.getString("details")%></option>
														<%
															}
															} catch (Exception e) {

															}
														%>
													</select>
												</div>
											</div>
											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>Email <span class="text-danger">*</span></label>
													<div class="input-group">
														<div class="input-group-prepend">
															<span class="input-group-text"><i
																class="icon-envelope"></i></span>
														</div>
														<input type="email" name="uemail" class="form-control"
															placeholder="abc@example.com">
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>Establish Year</label> <select id="year" name="year"
														class="form-control" required>
														<option>---Select Year---</option>
														<%
															try {
																String query = "select * from Establish_years";
																//get Table data
																ResultSet rs = stmt.executeQuery(query);
																while (rs.next()) {
														%>
														<option><%=rs.getString("years")%></option>
														<%
															}
															} catch (Exception e) {

															}
														%>
													</select>
												</div>
											</div>
											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>Contact Number </label> <input class="form-control"
														type="text" minlength="10" maxlength="11"
														required="required" name="contact_num"
														placeholder="Enter Number"
														oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
												</div>
											</div>
											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>Quota</label> <select class="form-control"
														name="quota" required="required">
														<option value="">---Please Select---</option>
														<%
															try {
																String query = "select * from quota";
																//get Table data
																ResultSet rs = stmt.executeQuery(query);
																while (rs.next()) {
														%>
														<option><%=rs.getString("details")%></option>
														<%
															}
															} catch (Exception e) {

															}
														%>
													</select>
												</div>
											</div>
										</div>
										 <hr	style="height: 1px; border-width: 0; color: gray; background-color: gray">
										<div class="left">
											<ul class="nav nav-tabs page-header-tab">
												<li style="font-size: 20px; text-align: center;"><a
													href="university.jsp"><i class="fa fa-phone"></i><span
														style="font-size: 20px; text-align: center;">&nbsp;Contact
															Information</span></a></li>
											</ul>
										</div>
										<br>
										<div class="row">
											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>Registrar Name <span class="text-danger">*</span></label>
													<div class="input-group">
														<div class="input-group-prepend">
															<span class="input-group-text"><i
																class="icon-envelope"></i></span>
														</div>
														<input type="text" name="regname" class="form-control"
															placeholder="Enter Registrar Name" required="required"
															maxlength="20">
													</div>
												</div>
											</div>
											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>Contact Name <span class="text-danger">*</span></label>
													<input class="form-control" type="text"
														placeholder="Enter Contact Name" minlength="7"
														maxlength="20" name="contact_name" required="required">
												</div>
											</div>
											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>Contact Number </label> <input class="form-control"
														type="text" minlength="10" maxlength="11"
														required="required" name="contact_num"
														placeholder="Enter Number"
														oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
												</div>
											</div>
											<div class="col-md-6 col-sm-12">
												<div class="form-group">
													<label>Designation</label> <input type="text"
														class="form-control" name="designation"
														placeholder="Enter Designation" aria-label="With textarea"
														required="required">
												</div>
											</div>
										</div> 
										<div class="row">
											<div class="col-sm-12 text-right m-t-20">
												<button type="submit" class="btn btn-primary">SAVE</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</form>
			<!-- Start main footer -->
         <%@ include file="inc/footer.jsp" %> 
         <%@ include file="inc/incjs.jsp" %>
		</div>
	</div>

	<!-- Start Main project js, jQuery, Bootstrap -->
	<script src="../assets/bundles/lib.vendor.bundle.js"></script>

	<!-- Start Plugin Js -->
	<script src="../assets/plugins/dropify/js/dropify.min.js"></script>

	<!-- Start project main js  and page js -->
	<script src="../assets/js/core.js"></script>
	<script src="assets/js/form/dropify.js"></script>
</body>
</html>
