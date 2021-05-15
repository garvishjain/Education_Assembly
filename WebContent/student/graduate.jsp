<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp" %> 
		 <%
			GetConnection getcon=new GetConnection();
		 Connection con=getcon.getCon();
		Statement stmt= con.createStatement();
		%>
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
    <title> College, University and campus</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- BASE CSS -->
    <link href="css/base.css" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!--[if lte IE 8]>
    <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
<![endif]-->

<div id="preloader">
	<div class="pulse"></div>
</div><!-- Pulse Preloader -->

  <!--Header File-->	
	 <%@ include file="itc/header.jsp" %>
		<!--Header File-->

	 
    
        <div class="sub_header bg_1">
            <div id="intro_txt">
                <h1><!-- Atena  --><strong>Graduate</strong> courses</h1>
               <!--  <p>
                    Ex saepe accusata duo, vel ne summo option delenit.
                </p> -->
            </div>
        </div><!--End sub_header -->
        
      <!--   <div id="position">
            <div class="container">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Category</a></li>
                    <li>Page active</li>
                </ul>
            </div>
        </div>Position -->
        
        <div class="container_gray_bg">
            <div class="container margin_60">
                <div class="row">
                    <div class="col-md-9">
                    <br>
                       <%
			try{
				String sql="Select * from course_name where degree_name='"+"Bachelor Degree"+"' Limit 8";
				ResultSet rs=stmt.executeQuery(sql);                                      
				while (rs.next()) {
					%>
                        <div class="strip_all_courses_list wow fadeIn" data-wow-delay="0.1s">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="img_list">
                                        <a ><img src="img/course/b1.jpg" alt="">
                                        <div class="short_info">
                                        	<%String myStr = rs.getString("course");
		                                        	    int a=(myStr.lastIndexOf(' '));
		                                        	    String s=myStr.substring(a++); %>
                                            <h3><%=s %></h3>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="clearfix visible-xs-block">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="course_list_desc">
                                    <%String str=rs.getString("course");
		                                    int b=(myStr.lastIndexOf(' '));
		                            	    String course=myStr.substring(0,b); 
                                    %>
                                        <h3><strong><%=course%></strong></h3>
                                        <h4><%=rs.getString("degree_name") %></h4>
                                        <h4>Course Duration - <%=rs.getString("duration") %></h4>
                                        <h4>Eligibility - <%=rs.getString("eligibility").toUpperCase() %></h4>
                                        
                                        <!-- <p>
                                        Engineering is the use of science and math to design or make things. People who do engineering are called engineers. They learn engineering at a college or university. Engineers usually design or build things. Some engineers also use their skills to solve technical problems.
                                        </p> -->
                                        <ul class="add_info">
                                            <!-- <li>
                                            <div class="tooltip_styled tooltip-effect-4">
                                                <span class="tooltip-item"><i class="pe-7s-compass"></i></span>
                                                <div class="tooltip-content">
                                                    Dedicated Study Plan
                                                </div>
                                            </div>
                                            </li> -->
                                        <!--     <li>
                                            <div class="tooltip_styled tooltip-effect-4">
                                                <span class="tooltip-item"><i class="pe-7s-hourglass"></i></span>
                                                <div class="tooltip-content">
                                                   Admission Date 10/05/2021 To 10/07/2021
                                                </div>
                                            </div>
                                            </li> -->
                                            <!-- <li>
                                            <div class="tooltip_styled tooltip-effect-4">
                                                <span class="tooltip-item"><i class="pe-7s-medal"></i></span>
                                                <div class="tooltip-content">
                                                    Most Requested Course
                                                </div>
                                            </div>
                                            </li> -->
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2">
                                    <div class="details_list_col">
                                        <div>
                                            <a href="be.jsp" class="button_outline">Details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!--End strip -->
                        
                      <!--   <div class="strip_all_courses_list wow fadeIn" data-wow-delay="0.1s">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="img_list">
                                        <a ><img src="img/course/b2.jpg" alt="">
                                        <div class="short_info">
                                            <h3>Computer Application</h3>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="clearfix visible-xs-block">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="course_list_desc">
                                        <h3><strong>Bachelor of Computer Applications </strong></h3>
                                        <p>
                                        The Bachelor of Science (B. Sc.) is a type undergraduate degree that focuses on combining theoretical knowledge with research practice. The Bachelor of Science is mainly awarded to students of Natural Sciences, Engineering& Technology, Mathematics, Computer Science& IT. 
                                        </p>
                                        <ul class="add_info">
                                            <li>
                                            <div class="tooltip_styled tooltip-effect-4">
                                                <span class="tooltip-item"><i class="pe-7s-compass"></i></span>
                                                <div class="tooltip-content">
                                                    Dedicated Study Plan
                                                </div>
                                            </div>
                                            </li>
                                            <li>
                                            <div class="tooltip_styled tooltip-effect-4">
                                                <span class="tooltip-item"><i class="pe-7s-hourglass"></i></span>
                                                <div class="tooltip-content">
                                                   Admission Date 10/05/2021 To 10/07/2021
                                                </div>
                                            </div>
                                            </li>
                                            <li>
                                            <div class="tooltip_styled tooltip-effect-4">
                                                <span class="tooltip-item"><i class="pe-7s-medal"></i></span>
                                                <div class="tooltip-content">
                                                    Most Requested Course
                                                </div>
                                            </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2">
                                    <div class="details_list_col">
                                        <div>
                                            <a href="bca.jsp" class="button_outline">Details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>End strip
                        
                        <div class="strip_all_courses_list wow fadeIn" data-wow-delay="0.1s">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="img_list">
                                        <a ><img src="img/course/b3.jpg" alt="">
                                        <div class="short_info">
                                            <h3>science</h3>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="clearfix visible-xs-block">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="course_list_desc">
                                        <h3><strong>Bachelor of Science</strong></h3>
                                        <p>
                                        The Bachelor of Science (B. Sc.) is a type undergraduate degree that focuses on combining theoretical knowledge with research practice. The Bachelor of Science is mainly awarded to students of Natural Sciences, Engineering& Technology, Mathematics, Computer Science& IT.
                                        </p>
                                        <ul class="add_info">
                                            <li>
                                            <div class="tooltip_styled tooltip-effect-4">
                                                <span class="tooltip-item"><i class="pe-7s-compass"></i></span>
                                                <div class="tooltip-content">
                                                    Dedicated Study Plan
                                                </div>
                                            </div>
                                            </li>
                                            <li>
                                            <div class="tooltip_styled tooltip-effect-4">
                                                <span class="tooltip-item"><i class="pe-7s-hourglass"></i></span>
                                                <div class="tooltip-content">
                                                  Admission Date 10/05/2021 To 10/07/2021
                                                </div>
                                            </div>
                                            </li>
                                            <li>
                                            <div class="tooltip_styled tooltip-effect-4">
                                                <span class="tooltip-item"><i class="pe-7s-medal"></i></span>
                                                <div class="tooltip-content">
                                                    Most Requested Course
                                                </div>
                                            </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2">
                                    <div class="details_list_col">
                                        <div>
                                            <a href="bsc.jsp" class="button_outline">Details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>End strip
                        
                        <div class="strip_all_courses_list wow fadeIn" data-wow-delay="0.1s">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="img_list">
                                        <a ><img src="img/course/b4.jpg" alt="">
                                        <div class="short_info">
                                            <h3>Business</h3>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="clearfix visible-xs-block">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="course_list_desc">
                                        <h3><strong>Bachelor of Business Administration</strong></h3>
                                        <p>
												Bachelor of Business Administration, is a 3-year undergraduate course that teaches students to understand, manage and deal with management of business.  
                                        </p>
                                        <ul class="add_info">
                                            <li>
                                            <div class="tooltip_styled tooltip-effect-4">
                                                <span class="tooltip-item"><i class="pe-7s-compass"></i></span>
                                                <div class="tooltip-content">
                                                    Dedicated Study Plan
                                                </div>
                                            </div>
                                            </li>
                                            <li>
                                            <div class="tooltip_styled tooltip-effect-4">
                                                <span class="tooltip-item"><i class="pe-7s-hourglass"></i></span>
                                                <div class="tooltip-content">
                                                   Admission Date 10/05/2021 To 10/07/2021
                                                </div>
                                            </div>
                                            </li>
                                            <li>
                                            <div class="tooltip_styled tooltip-effect-4">
                                                <span class="tooltip-item"><i class="pe-7s-medal"></i></span>
                                                <div class="tooltip-content">
                                                    Most Requested Course
                                                </div>
                                            </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2">
                                    <div class="details_list_col">
                                        <div>
                                            <a href="bba.jsp" class="button_outline">Details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>End strip
                        
                        <div class="strip_all_courses_list wow fadeIn" data-wow-delay="0.1s">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="img_list">
                                        <a ><img src="img/course/b5.jpg" alt="">
                                        <div class="short_info">
                                            <h3>art</h3>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="clearfix visible-xs-block">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="course_list_desc">
                                        <h3><strong>Bachelor of Art</strong> </h3>
                                        <p>
                                        The Bachelor of Arts (B.A.) is the most common among undergraduate degrees and usually takes three to four years to complete. It is mainly awarded to students following a programme in the Liberal Arts or in study fields that are covered in Humanities and Social Sciences, such as:
                                        </p>
                                        <ul class="add_info">
                                            <li>
                                            <div class="tooltip_styled tooltip-effect-4">
                                                <span class="tooltip-item"><i class="pe-7s-compass"></i></span>
                                                <div class="tooltip-content">
                                                    Dedicated Study Plan
                                                </div>
                                            </div>
                                            </li>
                                            <li>
                                            <div class="tooltip_styled tooltip-effect-4">
                                                <span class="tooltip-item"><i class="pe-7s-hourglass"></i></span>
                                                <div class="tooltip-content">
                                                   Admission Date 10/05/2021 To 10/07/2021
                                                </div>
                                            </div>
                                            </li>
                                            <li>
                                            <div class="tooltip_styled tooltip-effect-4">
                                                <span class="tooltip-item"><i class="pe-7s-medal"></i></span>
                                                <div class="tooltip-content">
                                                    Most Requested Course
                                                </div>
                                            </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2">
                                    <div class="details_list_col">
                                        <div>
                                            <a href="ba.jsp" class="button_outline">Details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>End strip -->
                        <%
				}
				}
		catch (Exception e) {
			e.printStackTrace();
					}
					%>
                    </div><!--End col-md-9 -->
                    <br>
                    <aside class="col-md-3">
                  <!--   <div class="banner">
                        <i class=" iconcustom-school"></i>
                        <h3>Take a campus tour</h3>
                        <p>
                            Zril causae ancillae sit ea. Dicam veritus mediocritatem sea ex, nec id agam eius.
                        </p>
                        <a href="tour.html" class="banner_bt">Start tour</a>
                    </div> -->
                    <h4><strong>How to apply</strong></h4>
                    <p>Step : College Selection<br>
							Step : Filling the Application Form<br>
							Step : Appearing for Entrance Exam<br>
							Step : Taking Part in Counselling<br>
							Step : Final Allocation of Seats<br>
							Step : Final Admission</p>
                   
                    <div class="box_side"><h5>By Phone</h5> <i class="icon-phone"></i>
                    <p> + 000-1234567<br><small>Monday to Friday 9.00am - 5.00pm</small></p>
                    </div>
             
                    <div class="box_side"><h5>By Postal Mail</h5> <i class="icon_pencil-edit"></i>
                    <p><a href="#0"><strong>Download the application form</strong></a>,<br> and send it to this address:<br><br><em>Ground Floor,
													Pragati Maidan Metro Station,
													Pragati Maidan,
													New Delhi-110001<br>
													</em></p>
													</div>
													 <hr class="styled">
               <div class="box_side">
                        <h5>Apply Online</h5>
                        <i class="icon_desktop"></i>
                        <p>
                            Eam admodum pertinacia an, essent nostro audiam ad qui, pro ex habeo aeterno maluisset. Aeque apeirian duo et, ad ludus denique tincidunt usu.
                        </p>
                        <p>
                            <a href="register.jsp" class="button small">Apply online</a>
                        </p>
                    </div>
                    </div>
                  
                    
                    </aside>
                    
                </div><!--End row -->
            </div><!--End container -->
        </div><!--End container_gray_bg -->
        
        

	 
		<!--Footer File-->	 
	<%@ include file="itc/footer.jsp" %>
		<!--Footer File-->
    
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