<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="icon" href="favicon.ico" type="image/x-icon"/>
<title>:: Education Assembly :: Students</title>

<!-- Import Package  -->
<%@ include file="inc/stdimport.jsp" %> 
<%@page import="in.common.GetConnection"%>

<%
GetConnection getConObj=new GetConnection();
Connection con=getConObj.getCon();
Statement stmt=con.createStatement();
%>


<!-- Bootstrap Core and vandor -->
<link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css" />
<!-- <link rel="stylesheet" href="../assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css">
<link rel="stylesheet" href="../assets/plugins/dropify/css/dropify.min.css">
<link rel="stylesheet" href="../assets/plugins/summernote/dist/summernote.css"/>
<link rel="stylesheet" href="../assets/plugins/sweetalert/sweetalert.css"> -->

<!-- Core css -->
<link rel="stylesheet" href="../assets/css/style.min.css"/>
</head>

<body class="font-muli theme-cyan gradient">

<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
    </div>
</div>

<div id="main_content">
    <!-- Start Main top header -->
     <div id="header_top" class="header_top">
        <div class="container">
            <div class="hleft">
                <a class="header-brand" href="index.html"><i class="fa fa-graduation-cap brand-logo"></i></a>
                <div class="dropdown">
                    <a href="javascript:void(0)" class="nav-link icon menu_toggle"><i class="fe fe-align-center"></i></a>
                    <a href="page-search.html" class="nav-link icon"><i class="fe fe-search" data-toggle="tooltip" data-placement="right" title="Search..."></i></a>
                    <a href="app-email.html"  class="nav-link icon app_inbox"><i class="fe fe-inbox" data-toggle="tooltip" data-placement="right" title="Inbox"></i></a>
                    <a href="app-filemanager.html"  class="nav-link icon app_file xs-hide"><i class="fe fe-folder" data-toggle="tooltip" data-placement="right" title="File Manager"></i></a>
                    <a href="app-social.html"  class="nav-link icon xs-hide"><i class="fe fe-share-2" data-toggle="tooltip" data-placement="right" title="Social Media"></i></a>
                    <a href="javascript:void(0)" class="nav-link icon theme_btn"><i class="fe fe-feather"></i></a>
                    <a href="javascript:void(0)" class="nav-link icon settingbar"><i class="fe fe-settings"></i></a>
                </div>
            </div>
            <div class="hright">
                <a href="javascript:void(0)" class="nav-link icon right_tab"><i class="fe fe-align-right"></i></a>
                <a href="login.html" class="nav-link icon settingbar"><i class="fe fe-power"></i></a>                
            </div>
        </div>
    </div> 
    <!-- Start Rightbar setting panel -->
   
    <!-- Start Theme panel do not add in project -->
   
    <!-- Start Quick menu with more functio -->
    <!-- Start Main leftbar navigation -->
    <div id="left-sidebar" class="sidebar">
        <h5 class="brand-name">Ericsson<a href="javascript:void(0)" class="menu_option float-right"><i class="icon-grid font-16" data-toggle="tooltip" data-placement="left" title="Grid & List Toggle"></i></a></h5>
        <ul class="nav nav-tabs">
            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#menu-uni">University</a></li>
            <!-- <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu-admin">Admin</a></li> -->
        </ul>
        <div class="tab-content mt-3">
            <div class="tab-pane fade show active" id="menu-uni" role="tabpanel">
                <nav class="sidebar-nav">
                    <ul class="metismenu">
                        <li><a href="university-manager.jsp"><i class="fa fa-dashboard"></i><span>Dashboard</span></a></li>
                        <li><a href="professors.jsp"><i class="fa fa-black-tie"></i><span>Professors</span></a></li>
                        <li><a href="staff.html"><i class="fa fa-user-circle-o"></i><span>Staff</span></a></li>
                        <li class="active"><a href="students.jsp"><i class="fa fa-users"></i><span>Students</span></a></li>
                        <li><a href="department.jsp"><i class="fa fa-users"></i><span>Departments</span></a></li>
                        <li><a href="courses.jsp"><i class="fa fa-graduation-cap"></i><span>Courses</span></a></li>                        
                        <li><a href="library.html"><i class="fa fa-book"></i><span>Library</span></a></li>
                        <li><a href="affilated-college.jsp"><i class="fa fa-bullhorn"></i><span>Affilated College</span></a></li>
                        <li class="g_heading">Extra</li>
                        <li><a href="events.html"><i class="fa fa-calendar"></i><span>Calender</span></a></li>
                        <li><a href="app-chat.html"><i class="fa fa-comments-o"></i><span>Chat App</span></a></li>
                        <li><a href="app-contact.html"><i class="fa fa-address-book"></i><span>Contact</span></a></li>
                        <li><a href="app-filemanager.html"><i class="fa fa-folder"></i><span>FileManager</span></a></li>
                        <li><a href="our-centres.html"><i class="fa fa-map"></i><span>OurCentres</span></a></li>
                        <li><a href="gallery.html"><i class="fa fa-camera-retro"></i><span>Gallery</span></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <!-- Start project content area -->
    <div class="page">
        <!-- Start Page header -->
        <div class="section-body" id="page_top" >
            <div class="container-fluid">
                <div class="page-header">
                   <div class="input-group">
                       <input type="text" class="form-control" placeholder="What you want to find">
                       <div class="input-group-append">
                           <button class="btn btn-outline-secondary" type="button">Search</button>
                       </div>
                   </div>
                </div>
            </div>
        </div>
        <!-- Start Page title and tab -->
        <div class="section-body">
            <div class="container-fluid">
                <div class="d-flex justify-content-between align-items-center ">
                    <div class="header-action">
                        <h1 class="page-title">Student Profile</h1>
                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Ericsson</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Student Profile</li>
                        </ol>
                    </div>
                    <ul class="nav nav-tabs page-header-tab">
                        <li class="nav-item" href="#Student-profile">Profile</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="section-body mt-4">
            <div class="container-fluid">
                <div class="tab-content">
                    <div  id="Student-profile">
                        <div class="row">
                            <div class="col-md-12 col-lg-12">
                            <%
                            try {
								String query = "select * from university_student";
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
                                    <div class="card-header">
                                        <h3 class="card-title">About Me</h3>
                                        <div class="card-options ">
                                            <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                                            <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                                        </div>
                                    </div>
									<div class="card-body">
										<p>Hello I am Celena Anderson a Clerk in Xyz College USA. I love to work with all my college staff and seniour professors.</p>
										<ul class="list-group">
											<li class="list-group-item">
                                                <strong>Father Name </strong>
                                                <div class="pull-right"><%=rs.getString("father_name") %></div>
                                            </li>
                                            <li class="list-group-item">
                                                <strong>Mother Name </strong>
                                                <div class="pull-right"><%=rs.getString("mother_name") %></div>
                                            </li>
                                            <li class="list-group-item">
                                                <strong>Gender </strong>
                                                <div class="pull-right"><%=rs.getString("gender") %></div>
                                            </li>
                                            <li class="list-group-item">
                                                <strong>Email </strong>
                                                <div class="pull-right"><%=rs.getString("email") %></div>
                                            </li>
                                            <li class="list-group-item">
                                                <strong>Phone</strong>
                                                <div class="pull-right"><%=rs.getString("phone") %></div>
                                            </li>
                                            <li class="list-group-item">
                                                <strong>10th Percentage </strong>
                                                <div class="pull-right"><%=rs.getString("10_perc") %></div>
                                            </li>
                                            <li class="list-group-item">
                                                <strong>12th Percentage </strong>
                                                <div class="pull-right"><%=rs.getString("12_perc") %></div>
                                            </li>
                                            <li class="list-group-item">
                                                <strong>Department</strong>
                                                <div class="pull-right"><%=rs.getString("department") %></div>
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
                </div>
            </div>
        </div>
        <!-- Start main footer -->
         <%@ include file="inc/footer.jsp" %> 
         <%@ include file="inc/incjs.jsp" %>
    </div>    
</div>

<!-- Start Main project js, jQuery, Bootstrap -->
<script src="../assets/bundles/lib.vendor.bundle.js"></script>

<!-- Start Plugin Js -->
<script src="../assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="../assets/plugins/dropify/js/dropify.min.js"></script>
<script src="../assets/bundles/summernote.bundle.js"></script>
<script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>

<!-- Start project main js  and page js -->
<script src="../assets/js/core.js"></script>
<script src="assets/js/form/dropify.js"></script>
<script src="assets/js/page/summernote.js"></script>
<script src="assets/js/page/dialogs.js"></script>
</body>
</html>
