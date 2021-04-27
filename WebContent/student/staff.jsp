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
    <title>College, University and campus</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- BASE CSS -->
    <link href="css/base.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
<style type="text/css">
.staff_Page {
	border: 3px solid #dde6e8;
	background-color:#dde6e8;
	width: 70%;
	height: 700px;
	margin: auto;
	margin-bottom: 50px;
}
.tag_line{font-size: 20px;margin: auto;}
.form-group{margin-top: 30px;}
	table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  border: 3px solid black;
  
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
 
}
</style>
   

</head>

<body>
 <%@page import="in.common.GetConnection"%>
		 <%@ include file="inc/stdimport.jsp" %> 
		 
		<%
		GetConnection getConObj=new GetConnection();
		Connection con=getConObj.getCon();
		Statement stmt=con.createStatement();
		
		%> 

<div id="preloader">
	<div class="pulse"></div>
</div><!-- Pulse Preloader -->

 <!--Header File-->	
	 <%@ include file="itc/header.jsp" %>
		<!--Header File-->

	 

        <div class="sub_header bg_3">
        	<div id="intro_txt">
			<h1><strong></strong>Check College Professor</h1>
            <p></p>
            </div>
		</div> <!--End sub_header -->
        
        
 		
          <div class="main_title">
            <h2>Teachers</h2>
            </div>


	
	<div class="staff_Page">		
			<div class="col-md-6">
				<div class="form-group">
					<label class="tag_line">Select College/University</label> <br><select name="college"
						id="college" class="form-control styled required"
						required="required">
						<option value="null">---Please Select---</option>
						<%
							try {
								String query = "select * from college_registration";
								//get Table data
								ResultSet rs = stmt.executeQuery(query);
								while (rs.next()) {
						%>
						<option><%=rs.getString("college_name")%></option>
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
					<label class="tag_line">Select Course</label><br> 
					<select name="course" id="course"
						class="form-control styled required" required="required">
						<option value="null">---Please Select---</option>
						<%
							try {
								String query = "select * from course";
								//get Table data
								ResultSet rs = stmt.executeQuery(query);
								while (rs.next()) {
						%>
						<option><%=rs.getString("course_name")%></option>
						<%
							}
							} catch (Exception e) {

							}
						%>
					</select>
				</div>
			</div>
			<table>
			<tr>
						<th>Name</th>
						<th>E-Mail</th>
						<th>D.O.B.</th>
						<th>College/University</th>
						<th>Branch</th>
						<th>Study</th>
						<th>Position</th>
			
			</tr>
			
			<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
			
			</tr>
			
			</table>
			
			
			
		</div>



<div>
	<!--Footer File-->	 
	<%@ include file="itc/footer.jsp" %>
		<!--Footer File-->
</div>
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

</body>
</html>