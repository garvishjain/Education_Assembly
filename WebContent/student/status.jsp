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
.stu_name{
					border: 2px solid gray;
					margin-top: 8px;
					width: 50%;
					height: 50px;
					
					}
					.stu_nae{
					border: 2px solid gray;
					margin-top: 8px;
					width: 50%;
					height: 50px;
					
					}
					
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

tr:nth-child(even) {
  background-color: #dddddd;
}
label {
	margin-left: 20px;
}


</style>
</head>

<body>

	<div>
		<!--Header File-->
		<%@ include file="itc/header.jsp"%>
		<!--Header File-->
	</div>
	
 												
	<div class="status">
										<%
								try {
										String query = "Select * from student_information where username='"+uname+"' ";
										ResultSet rs = stmt.executeQuery(query);
										while (rs.next()) {
								%>
                              						
                               		<%-- <div class="imf">
                               				<img src="G:\i\<%=rs.getString("image") %>" width="167px" height="198px"/>
                               		</div> --%>

                               				

		<table>
		<tr>
				<td>
						<label>REGISTRATION NUMBER&nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("first_name")%>
				</td>
				<td>
				
						<label>Status&nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("first_name")%>
				</td>
				
			</tr>
			<tr>
				<td>
						<label>NAME <label class="m">&nbsp;&nbsp;:&nbsp;&nbsp;</label></label>
						<%=rs.getString("first_name").toUpperCase() + " " + rs.getString("last_name").toUpperCase()%>
				</td>
				<td>
						<label>USER NAME &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("username").toUpperCase()%>
					</td>
			</tr>
			
			<tr>
				<td>
						<label>E-MAIL &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("email") %>
				</td>
				<td>
						<label>Gender &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("gender").toUpperCase()%>
					</td>
			</tr>
			<tr>
				<td>
						<label>DATE OF BIRTH &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("dob") %>
				</td>
				<td>
						<label>RELIGION &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("religIon").toUpperCase()%>
					</td>
			</tr>
			<tr>
				<td>
						<label>CAST &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("category").toUpperCase() %>
				</td>
				<td>
						<label>AADHAR NUMBER &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("aadhar_number")%>
					</td>
			</tr>
			<tr>
				<td>
						<label>CONTACT NUMBER &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("s_contact") %>
				</td>
				<td>
						<label>FATHER NAME &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("f_name")%>
					</td>
			</tr>
			
			<tr>
				<td>
						<label>MOTHER NAME &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("m_name") %>
				</td>
				<td>
						<label>FATHER NAME &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("f_name")%>
					</td>
			</tr>
			
			<tr>
				<td>
						<label>STATE &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("m_name") %>
				</td>
				<td>
						<label>CITY &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("f_name")%>
					</td>
			</tr>
			<tr>
				
				<td>
						<label>PINCODE &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("f_name")%>
					</td>
			</tr>
		</table>

														<%
															}
																
															} catch (Exception e) {

															}
														%>
                               </div>
                                             	
<div>
			<%@include file="itc/footer.jsp" %>
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


</body>
</html>