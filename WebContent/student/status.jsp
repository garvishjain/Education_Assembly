<%
String uname="";
uname=session.getAttribute("nameUser") != null ? (String)session.getAttribute("nameUser") : "";
%>
<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<%@page import="in.Student.User"%>
<%@page import="in.Student.St_Login"%>
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp"%>
<%@page import="java.util.ArrayList"%>

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

<!-- Bootstrap Core and vandor -->
<link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="../assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css">
<link rel="stylesheet" href="../assets/plugins/dropify/css/dropify.min.css">
<link rel="stylesheet" href="../assets/plugins/summernote/dist/summernote.css"/>
<link rel="stylesheet" href="../assets/plugins/sweetalert/sweetalert.css">


<!-- Core css -->
<link rel="stylesheet" href="../assets/css/style.min.css"/>

<!-- BASE CSS -->
<link href="css/base.css" rel="stylesheet">

<!-- SPECIFIC CSS -->
<link href="css/date_time_picker.css" rel="stylesheet">

<%
	GetConnection getcon=new GetConnection();
	Connection con=getcon.getCon();
	Statement stmt=con.createStatement();
%>


<style type="text/css">
.stu_name {
	border: 2px solid gray;
	margin-top: 8px;
	width: 50%;
	height: 50px;
}

.stu_name {
	border: 2px solid gray;
	margin-top: 8px;
	width: 50%;
	height: 50px;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 87%;
    border: 1px solid #223038;
    margin: 20px 0px 41px 69px;
       border-radius: 12px;
} 

 td, tr {
	
	height: 45px;
} 

tr:nth-child(even) {
	background-color: #dddddd;
}

label {
	margin-left: 20px;
}

.name_frame {
    border: 1px solid #223038;
    border-radius: 12px;
    margin: auto;
    margin-top: 125px;
    margin-bottom: 20px;
    padding: inherit;
    width: 80%;
    height: 170px;
}
.name_frame_1 {
        margin: 23px 0px 0px 222px;
    font-size: 20px;
    font-family: 'fontello';
   
}
.detail_frame {
    border: 1px solid #223038;
    border-radius: 12px;
    margin: auto;
    margin-top: 25px;
    margin-bottom: 20px;
    padding: inherit;
    width: 80%;
   /*  height: 800px; */
}
.img_frame {
    margin: -94px 80px 0px 40px;
    width: 147px;
}
.aboutme{ font-size: 18px;
    font-weight: bold;
    margin: 25px 0px 0px 71px;
    font-family: 'fontello';}		
    
    .st_detail{margin: 0px 0px 0px 150px;font-size: 16px;}
    .st_field{margin: 0px 0px 0px 135px;font-size: 16px;}
    .colon{margin: 0px 0px 0px 0px;}
    .dash{margin: 0px 0px 0px 140px;font-size: 16px;}
</style>
</head>

<body>

<!-- <div class="page-loader-wrapper">
    <div class="loader">
    </div>
</div>
 -->
	<div>
		<!--Header File-->
		<%@ include file="itc/header.jsp"%>
		<!--Header File-->
	</div>
	 <%String s=uname; %>
	 <% String nb="null"; %>
	<%
			try {
				/* Select * from student_information INNER JOIN student_education ON student_education.pk_id=student_information.fk_education
INNER JOIN student_address ON student_address.pk_id=student_information.fk_address */
				String sql="Select * from student_information INNER JOIN student_address ON student_information.fk_address=student_address.pk_id WHERE username= '" + uname + "'    ";
				ResultSet rs = stmt.executeQuery(sql);
				if (rs.next()) {
		%>

				<div class="name_frame">
							<div class="name_frame_1">
														<P><%=rs.getString("first_name").toUpperCase() + " " + rs.getString("last_name").toUpperCase()%></P>
														<P>REG. NO.-<p>
							</div>
							
							<div class="img_frame">
								<img src="img/teacher_1_small.jpg" alt="" class="img-circle styled">
							</div>
		
				</div>
				
				<div class="detail_frame">
						<h2 class="aboutme">ABOUT ME</h2>
						<div>
			<table>
				<%-- <tr>
					<td><label class="st_field">REGISTRATION NUMBER</label> 
					<label class="dash">&mdash;</label>
					<label	class="st_detail"><%=rs.getString("first_name")%></label>
					
				</td>
				</tr> --%>
				
				<tr>
					<td><label class="st_field">STATUS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					 <label class="dash">&mdash;</label>
					 <label class="st_detail"><p hidden> String name=rs.getString("username") ;</p>
					 											<p hidden> <%String prefix=(String)name.substring(0,2); %></p>
					
				<%
					try {
								if(prefix.equals("st"))
								{
									
					%>
					<p style="color: green;">
									<%=rs.getString("username")%>
					</p>
				<%
								 }
								else
								{
									%>
					<p style="color: red;">
						<%= rs.getString("username")%>
					</p>
						<%
								}
					}
				catch (Exception e) {
					e.printStackTrace();
				}
				%>
					  
					 
					 
					 </label>
					 
					 </td>
				</tr>
				
				
						
			<%-- <tr>
					<td>
						<label class="st_field">NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
						<label class="dash">&mdash;</label>
						<label class="st_detail"><%=rs.getString("first_name").toUpperCase() + " " + rs.getString("last_name").toUpperCase()%></label>
		     	   </td>
			</tr> --%>

			<tr>
					<td>
						<label class="st_field">E-MAIL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
						<label class="dash">&mdash;</label>
						<label class="st_detail"><%=rs.getString("email")%></label>
		     	   </td>
			</tr>
			
			<tr>
					<td>
						<label class="st_field">GENDER&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
						<label class="dash">&mdash;</label>
						<label class="st_detail"><%=rs.getString("gender").toUpperCase()%></label>
		     	   </td>
			</tr>
			
			<tr>
					<td>
						<label class="st_field">DATE OF BIRTH&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
						<label class="dash">&mdash;</label>
						<label class="st_detail"> <%=rs.getString("dob")%></label>
		     	   </td>
			</tr>
			
			<tr>
					<td>
						<label class="st_field">RELIGION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
						<label class="dash">&mdash;</label>
						<label class="st_detail"><%=rs.getString("religIon").toUpperCase()%></label>
		     	   </td>
			</tr>
			
			<tr>
					<td>
						<label class="st_field">CAST&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
						<label class="dash">&mdash;</label>
						<label class="st_detail"><%=rs.getString("category").toUpperCase()%></label>
		     	   </td>
			</tr>
			
			<tr>
					<td>
						<label class="st_field">AADHAR NUMBER&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
						<label class="dash">&mdash;</label>
						<label class="st_detail"><%=rs.getString("aadhar_number")%></label>
		     	   </td>
			</tr>
			
			<tr>
					<td>
						<label class="st_field">CONTACT NUMBER&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<label class="dash">&mdash;</label>
						<label class="st_detail"><%=rs.getString("s_contact")%></label>
		     	   </td>
			</tr>
			
			<tr>
					<td>
						<label class="st_field">FATHER NAME&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
						<label class="dash">&mdash;</label>
						<label class="st_detail"><%=rs.getString("f_name")%></label>
		     	   </td>
			</tr>
			
			<tr>
					<td>
						<label class="st_field">MOTHER NAME&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<label class="dash">&mdash;</label>
						<label class="st_detail"><%=rs.getString("m_name")%></label>
		     	   </td>
			</tr>
			
			 <tr>
					<td>
						<label class="st_field"> STATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
						<label class="dash">&mdash;</label>
						<label class="st_detail"><%=rs.getString("state")%></label>
		     	   </td>
			</tr> 
			
			<tr>
					<td>
						<label class="st_field">CITY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
						<label class="dash">&mdash;</label>
						<label class="st_detail"><%=rs.getString("city")%></label>
		     	   </td>
			</tr>
			<tr>
					<td>
						<label class="st_field">PINCODE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
						<label class="dash">&mdash;</label>
						<label class="st_detail"><%=rs.getString("pincode")%></label>
		     	   </td>
			</tr>
			

			</table>

		</div>

	
				</div>
<%
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>



	<%-- <div class="status">
		<%
			try {
				String query = "Select * from student_information where username='" + uname + "' ";
				ResultSet rs = stmt.executeQuery(query);
				while (rs.next()) {
		%>

		<div class="imf">
               				<img src="G:\i\<%=rs.getString("image") %>" width="167px" height="198px"/>
               		</div>
		<table> 
			<tr>
				<td><label>REGISTRATION NUMBER&nbsp;&nbsp;:&nbsp;&nbsp;</label>
					<%=rs.getString("first_name")%></td>
			</tr>
			<tr>
				<td><label>Status&nbsp;&nbsp;:&nbsp;&nbsp;</label> <%=rs.getString("first_name")%>
				</td>
				</tr>
			<tr>
				<td><label>NAME <label class="m">&nbsp;&nbsp;:&nbsp;&nbsp;</label></label>
					<%=rs.getString("first_name").toUpperCase() + " " + rs.getString("last_name").toUpperCase()%>
				</td>
				<td><label>USER NAME &nbsp;&nbsp;:&nbsp;&nbsp;</label> <%=rs.getString("username").toUpperCase()%>
				</td>
			</tr>

			<tr>
				<td><label>E-MAIL &nbsp;&nbsp;:&nbsp;&nbsp;</label> <%=rs.getString("email")%>
				</td>
				<td><label>Gender &nbsp;&nbsp;:&nbsp;&nbsp;</label> <%=rs.getString("gender").toUpperCase()%>
				</td>
			</tr>
			<tr>
				<td><label>DATE OF BIRTH &nbsp;&nbsp;:&nbsp;&nbsp;</label> <%=rs.getString("dob")%>
				</td>
				<td><label>RELIGION &nbsp;&nbsp;:&nbsp;&nbsp;</label> <%=rs.getString("religIon").toUpperCase()%>
				</td>
			</tr>
			<tr>
				<td><label>CAST &nbsp;&nbsp;:&nbsp;&nbsp;</label> <%=rs.getString("category").toUpperCase()%>
				</td>
				<td><label>AADHAR NUMBER &nbsp;&nbsp;:&nbsp;&nbsp;</label> <%=rs.getString("aadhar_number")%>
				</td>
			</tr>
			<tr>
				<td><label>CONTACT NUMBER &nbsp;&nbsp;:&nbsp;&nbsp;</label> <%=rs.getString("s_contact")%>
				</td>
				<td><label>FATHER NAME &nbsp;&nbsp;:&nbsp;&nbsp;</label> <%=rs.getString("f_name")%>
				</td>
			</tr>

			<tr>
				<td><label>MOTHER NAME &nbsp;&nbsp;:&nbsp;&nbsp;</label> <%=rs.getString("m_name")%>
				</td>
				<td><label>FATHER NAME &nbsp;&nbsp;:&nbsp;&nbsp;</label> <%=rs.getString("f_name")%>
				</td>
			</tr>

			<tr>
				<td><label>STATE &nbsp;&nbsp;:&nbsp;&nbsp;</label> <%=rs.getString("m_name")%>
				</td>
				<td><label>CITY &nbsp;&nbsp;:&nbsp;&nbsp;</label> <%=rs.getString("f_name")%>
				</td>
			</tr>
			<tr>

				<td><label>PINCODE &nbsp;&nbsp;:&nbsp;&nbsp;</label> <%=rs.getString("f_name")%>
				</td>
			</tr>
		</table>

		<%
			}

			} catch (Exception e) {

			}
		%>
	</div>  --%>
<!-- new one -->
 <%-- <div class="section-body mt-4">
		<div class="row">
			 <div class="col-md-10 col-lg-10">
				<%
					try {
						String query = "Select * from student_information where username='" + uname + "'";
						//get Table data
						ResultSet rs = stmt.executeQuery(query);
						while (rs.next()) {
				%>
				<div class="card">
					<div class="card-body w_user">
						<div class="user_avtar">
							<img class="rounded-circle" src="../assets/images/sm/avatar2.jpg" alt="">
						</div>
						<div class="wid-u-info">
							<h5><%=rs.getString("student_name") %></h5>
							<p class="text-muted m-b-0"><%=rs.getString("pk_id") %></p>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-body w_user">
						<div class="user_avtar">
							<img class="rounded-circle"
								src="../assets/images/sm/avatar2.jpg" alt="">
						</div>
						<div class="wid-u-info">
							<h5><%=rs.getString("first_name").toUpperCase() + " " + rs.getString("last_name").toUpperCase()%></h5>
							<p class="text-muted m-b-0">Registration Number <%=rs.getString("pk_id") %></p>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">About Me</h3>
						<div class="card-options ">
							<a href="#" class="card-options-collapse"
								data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
						</div>
					</div>
					<div class="card-body">
						<ul class="list-group">
							<li class="list-group-item"><strong>User Name</strong>
								<div class="pull-right"><%=rs.getString("username").toUpperCase()%></div></li>	
							<li class="list-group-item"><strong>Father Name </strong>
								<div class="pull-right"><%=rs.getString("f_name")%></div></li>
							<li class="list-group-item"><strong>Mother Name </strong>
								<div class="pull-right"><%=rs.getString("m_name") %></div></li>
							<li class="list-group-item"><strong>Gender </strong>
								<div class="pull-right"><%=rs.getString("gender")%></div></li>
							<li class="list-group-item"><strong>Date Of Birth</strong>
								<div class="pull-right"><%=rs.getString("dob")%></div></li>
							<li class="list-group-item"><strong>Email </strong>
								<div class="pull-right"><%=rs.getString("email")%></div></li>
							<li class="list-group-item"><strong>Phone</strong>
								<div class="pull-right"><%=rs.getString("s_contact")%></div></li>
							<li class="list-group-item"><strong>Aadhaar Number</strong>
								<div class="pull-right"><%=rs.getString("s_contact")%></div></li>
							<li class="list-group-item"><strong>Cast </strong>
								<div class="pull-right"><%=rs.getString("category").toUpperCase()%></div></li>
							<li class="list-group-item"><strong>Religion</strong>
								<div class="pull-right"><%=rs.getString("religIon").toUpperCase()%></div></li>
							<li class="list-group-item"><strong>State</strong>
								<div class="pull-right"><%=rs.getString("religIon").toUpperCase()%></div></li>
							<li class="list-group-item"><strong>City</strong>
								<div class="pull-right"><%=rs.getString("religIon").toUpperCase()%></div></li>
							<li class="list-group-item"><strong>Pin Code</strong>
								<div class="pull-right"><%=rs.getString("religIon").toUpperCase()%></div></li>
							<li class="list-group-item"><strong>10th Percentage </strong>
								<div class="pull-right"><%=rs.getString("10_perc")%></div></li>
							<li class="list-group-item"><strong>12th Percentage </strong>
								<div class="pull-right"><%=rs.getString("12_perc")%></div></li>
							<li class="list-group-item"><strong>Department</strong>
								<div class="pull-right"><%=rs.getString("department")%></div>
							</li>

						</ul>
					</div>
				</div>
				<%
                   	}
                   	} catch (Exception e) {
                   		e.printStackTrace();
                   	}
                %>
		</div>
	</div>
</div>
 --%>

	<div>
<%@include file="itc/footer.jsp"%>
	</div>

	<!--  
<div id="search">
    <button type="button" class="close">×</button>
    <form>
        <input type="search" value="" placeholder="type keyword(s) here" >
        <button type="submit" class="button">Search</button>
    </form>
</div>
  -->
	<!-- Common scripts -->
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/common_scripts_min.js"></script>
	<script src="js/functions.js"></script>
	<script src="assets/validate.js"></script>
	
	<!-- Start Plugin Js -->
<script src="../assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="../assets/plugins/dropify/js/dropify.min.js"></script>
<script src="../assets/bundles/summernote.bundle.js"></script>
<script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>


</body>
</html>