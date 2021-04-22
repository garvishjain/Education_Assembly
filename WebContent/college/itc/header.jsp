<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
		<!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- BASE CSS -->
    <link href="css/base.css" rel="stylesheet">
      <!-- SPECIFIC CSS -->
	
    
</head>
<body>

		<!-- Header================================================== -->
    <header id="contacts">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3 col-sm-3 col-xs-3">
                <div id="logo">
                    <a href="index.html"><img src="img/logo.png" width="125" height="40" alt="Atena" data-retina="true"></a>
                </div>
            </div>
            <nav class="col-md-9 col-sm-9 col-xs-9">
            <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
            <div class="main-menu">
                <div id="header_menu">
                    <img src="img/logo_mobile.png" width="125" height="40" alt="Atena" data-retina="true">
                </div>
                <a href="#" class="open_close" id="close_in"><i class="icon_close"></i></a>
               <ul>
                    <li class="submenu">
                    <a href="home.jsp" >Home <i></i></a>
                    
                    </li>
                    <li class="submenu">
                    <a href="javascript:void(0);" class="show-submenu">Academic <i class="icon-down-open-mini"></i></a>
                    <ul>
                        <li><a href="diploma.jsp">Diploma courses</a></li>
                        <li><a href="graduate.jsp">Graduate courses</a></li>
                        <li><a href="master.jsp">Master courses</a></li>
                        <li><a href="register.jsp">Apply online</a></li>
                        
                    </ul>
                    </li>
                    <li class="submenu">
                    <a href="javascript:void(0);" class="show-submenu">About <i class="icon-down-open-mini"></i></a>
                    <ul>
                        <li><a href="about.jsp">About us</a></li>
                        <li><a href="contacts.jsp">Plan a visit</a></li>
                        <li><a href="gallery.jsp">Gallery</a></li>
                    </ul>
                    </li>
                    <li class="megamenu submenu">
                    <a href="javascript:void(0);" class="show-submenu-mega">Pages &amp; elements<i class="icon-down-open-mini"></i></a>
                    <div class="menu-wrapper">
                        <div class="col-md-4">
                            <h3>Pages</h3>
                            <ul>
                                <li><a href="blog.jsp">Blog</a></li>
                                <li><a href="contacts.jsp">Contacts</a></li>
                                <li><a href="agenda_calendar.jsp">Agenda calendar</a></li>
                                <li><a href="gallery.jsp">Gallery</a></li>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <h3>Pages</h3>
                            <ul>
                                <li><a href="#" data-toggle="modal" data-target="#login">Login</a></li>
                                <li><a href="register.jsp" >Register</a></li>
                                <li><a href="tour.jsp">Tour</a></li>
                               
                            </ul>
                        </div>
                    </div><!-- End menu-wrapper -->
                    </li>
                    <li><a href="tour.jsp">Tour</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#login">Login</a></li>
                    <li><a href="#search" id="search_bt"><i class=" icon-search"></i><span>Search</span></a></li>
                </ul>
            </div><!-- End main-menu -->
            </nav>
        </div>
    </div><!-- container -->
    </header><!-- End Header -->

		
</body>
</html>