<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<%@page import="in.Student.St_Login"%>
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="in.College.User"%>
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
	/* User st = new User();
	String s = st.getUsername();
	System.out.print(s); */
	
	

	GetConnection getConObj = new GetConnection();
	Connection con = getConObj.getCon();
	Statement stmt = con.createStatement();
	
	St_Login st = new St_Login();
	String u=(String)st.getUsername();
	System.out.println("status = "+u);
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
	<div>
		<%-- <p><%=request.getParameter("n")%></p>
		<p><%=request.getParameter("s")%></p> --%>
	</div>

	
		<%-- <p><%=request.getParameter("n")%></p>
		 <label>User name</label> --%> 
                               <div class="status">
                               <%
															try {
																String query = "select * from student_information where username='"+"shadab11"+"' ";
																
																ResultSet rs = stmt.executeQuery(query);
																while (rs.next()) {
														%>
                               				<div class="imf">
                               				
                               				<img src="G:\i\<%=rs.getString("image") %>" width="167px" height="198px"/>
                               							
                               				</div>
                               				<hr>
                               				

		<table>
		<tr>
				<td><h3>
						<label>REGISTRATION NUMBER&nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("first_name")%></h3>
				</td>
				<td>
				<h3 style="color: red;">
						<label>Status&nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("first_name")%></h3>
				</td>
				
			</tr>
			<tr>
				<td><h3>
						<label>NAME <label class="m">&nbsp;&nbsp;:&nbsp;&nbsp;</label></label>
						<%=rs.getString("first_name").toUpperCase() + " " + rs.getString("last_name").toUpperCase()%></h3>
				</td>
				<td><h3>
						<label>USER NAME &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("username").toUpperCase()%>
					</h3></td>
			</tr>
			
			<tr>
				<td><h3>
						<label>E-MAIL &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("email") %></h3>
				</td>
				<td><h3>
						<label>Gender &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("gender").toUpperCase()%>
					</h3></td>
			</tr>
			<tr>
				<td><h3>
						<label>DATE OF BIRTH &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("dob") %></h3>
				</td>
				<td><h3>
						<label>RELIGION &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("religIon").toUpperCase()%>
					</h3></td>
			</tr>
			<tr>
				<td><h3>
						<label>CAST &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("category").toUpperCase() %></h3>
				</td>
				<td><h3>
						<label>AADHAR NUMBER &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("aadhar_number")%>
					</h3></td>
			</tr>
			<tr>
				<td><h3>
						<label>CONTACT NUMBER &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("s_contact") %></h3>
				</td>
				<td><h3>
						<label>FATHER NAME &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("f_name")%>
					</h3></td>
			</tr>
			
			<tr>
				<td><h3>
						<label>MOTHER NAME &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("m_name") %></h3>
				</td>
				<td><h3>
						<label>FATHER NAME &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("f_name")%>
					</h3></td>
			</tr>
			
			<tr>
				<td><h3>
						<label>STATE &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("m_name") %></h3>
				</td>
				<td><h3>
						<label>CITY &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("f_name")%>
					</h3></td>
			</tr>
			<tr>
				
				<td><h3>
						<label>PINCODE &nbsp;&nbsp;:&nbsp;&nbsp;</label>
						<%=rs.getString("f_name")%>
					</h3></td>
			</tr>
		</table>






		<%-- 	<div class="stu_name">
														<h3>
														<label>Name &nbsp;&nbsp;:&nbsp;&nbsp;</label>
																				<%=rs.getString("first_name")+" "+rs.getString("last_name")%>
														</h3>
														</div>
														<div class="stu_name">
																
														
														</div>
														
														<div class="stu_name">
														<p ><%=rs.getString("first_name")%></p>
														</div> --%>
														<%
														
															}
																
															} catch (Exception e) {

															}
														%>
                               </div>
                                                	
                                                		
														<br><br>
                                                	
	
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