
<%
	String name = session.getAttribute("nameUser") != null ? (String) session.getAttribute("nameUser") : "";
	String Email = session.getAttribute("EmailUser") != null ? (String) session.getAttribute("EmailUser") : "";
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- BASE CSS -->
<link href="css/base.css" rel="stylesheet">
<!-- SPECIFIC CSS -->

<style type="text/css">
.log {
	font-size: 35px;
	color: #f5aa0f;
	margin-top: 10px;
	font-family: Georgia;
}

.logg {
	font-size: 35px;
	color: white;
	margin-top: 10px;
	font-family: Georgia;
}

.log, .logg {
	display: inline;
}
/*  overflow: hidden;  
  border-right: .15em solid orange; 
  white-space: nowrap; 
  margin: 0 auto; 
  letter-spacing: .15em; 
  animation: 
    typing 3.5s steps(40, end),
    blink-caret .75s step-end infinite;
 }
 @keyframes typing {
  from { width: 0 }
  to { width: 100% }
}

/* The typewriter cursor effect */
@
keyframes blink-caret {from , to { border-color:transparent
	
}
50%
{
border-color


:

 

orange

 

}
}
*
/
</style>
</head>
<body>

	<!-- Header================================================== -->
	<header id="contacts">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 col-sm-3 col-xs-3">
				<div id="logo">
					<!--                     <a><img src="img/changes/logo (2).png" width="150" height="70"   alt="Atena" data-retina="true" style=""  ></a> -->
					<p class="log">Education
					<p class="logg">
						<b><i>Assembly</i></b>
					</p>
					</p>
				</div>
			</div>
			<nav class="col-md-9 col-sm-9 col-xs-9"> <a
				class="cmn-toggle-switch cmn-toggle-switch__htx open_close"
				href="javascript:void(0);"><span>Menu mobile</span></a>
			<div class="main-menu">
				<div id="header_menu">
					<img src="img/logo_mobile.png" width="125" height="40" alt="Atena"
						data-retina="true">
				</div>
				<a href="#" class="open_close" id="close_in"><i
					class="icon_close"></i></a>
				<ul>
					<li class="submenu"><a href="home.jsp">Home <i></i></a></li>
					<li class="submenu"><a href="javascript:void(0);"
						class="show-submenu">Academic <i class="icon-down-open-mini"></i></a>
						<ul>
							<li><a href="diploma.jsp">Diploma courses</a></li>
							<li><a href="graduate.jsp">Graduate courses</a></li>
							<li><a href="master.jsp">Master courses</a></li>
							<li><a href="college.jsp">College</a></li>
						</ul></li>

						<!-- <ul>
							<li><a href="gallery.jsp">Gallery</a></li>
=======
					<li class="submenu"><a href="javascript:void(0);"
						class="show-submenu">About <i class="icon-down-open-mini"></i></a>
						<ul>

							<!-- <li><a href="gallery.jsp">Gallery</a></li> -->

							<!-- <li><a href="visit-us.jsp">Plan a visit</a></li>
							<li><a href="contacts.jsp">Conatct us</a></li>
							<li><a href="about.jsp">About us</a></li>
						</ul></li> -->
						
							<li class="submenu"><a href="javascript:void(0);"
						class="show-submenu">Register <i class="icon-down-open-mini"></i></a>
						<ul>
							<!-- <li><a href="gallery.jsp">Gallery</a></li> -->
							<li><a href="register.jsp">Student</a></li>
							<li><a href="collegeregister.jsp">College</a></li>
							<li><a href="../university/university-register.jsp">University</a></li>
						</ul></li>
					<li>
						
					
<li class="submenu"><a href="contacts.jsp">Conatct us</a></li>
					<li class="submenu"><a href="visit-us.jsp">Plan a visit</a></li>
					<li><a href="about.jsp">About us</a></li>
					<li> 
						<%
							if (name.equals("")) {
						%>
					
					<li><a href="#" data-toggle="modal" data-target="#login">Login</a></li>
					
					<%
						} else {
					%>

					<%-- <li><a>Welcome,&nbsp;<%=name %><i class="fa fa-angle-down"></i></a></li> --%>
					<li class="submenu"><a href="javascript:void(0);"
						class="show-submenu">Welcome,&nbsp;<%=name%><i
							class="icon-down-open-mini"></i></a>
						<ul>
						    <li><a href="javascript:void(0);"><%=Email%></a></li>
							<li><a href="document.jsp">Upload Documents</a></li>
							<li><a href="status.jsp">Check Status</a></li>

						</ul></li>
						    
					       <li><a href="logout.jsp">Logout</a></li>
					<%
						}
					%></li>

					
					<!-- <li><a href="#search" id="search_bt"><i
							class=" icon-search"></i><span>Search</span></a></li>
				</ul> -->

					
				</ul>

			</div>
			<!-- End main-menu --> </nav>
		</div>
	</div>
	<!-- container --> </header>
	<!-- End Header -->


</body>
</html>