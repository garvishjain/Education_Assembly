<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp" %> 
		 <%
			GetConnection getcon=new GetConnection();
		 Connection con=getcon.getCon();
		Statement stmt= con.createStatement();
		%> 
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

    <!-- Header================================================== -->
   	 <%@ include file="itc/header.jsp" %>
   	 
   	 <!-- End Header -->
    
        <div class="sub_header bg_1">
            <div id="intro_txt">
                <h1><!-- Atena  --><strong>Master</strong> courses</h1>
                <!-- <p>
                    Ex saepe accusata duo, vel ne summo option delenit.
                </p> -->
            </div>
        </div><!--End sub_header -->
        
        <!-- <div id="position">
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
                    <%
			try{
				String sql="Select * from course_name where degree_name='"+"Master Degree"+"' Limit 7 ";
				ResultSet rs=stmt.executeQuery(sql);
				while (rs.next()) {
					%>
                    <br>
                        <div class="strip_all_courses_list wow fadeIn" data-wow-delay="0.1s">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="img_list">
                                        <a ><img src="img/course/m1.jpg" alt="">
                                        <div class="short_info">
                                        		<%String myStr = rs.getString("course");
		                                        	    int a=(myStr.lastIndexOf(' '));
		                                        	    String s=myStr.substring(a++); %>
                                            <h3><%=s%></h3>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="clearfix visible-xs-block">
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-3">
                                    <div class="course_list_desc">
                                    <%String str=rs.getString("course");
		                                    int b=(str.lastIndexOf(' '));
		                            	    String course=str.substring(0,b); 
                                    %>

                                        <h3><strong><%=course%></strong></h3>
                                        <h4><%=rs.getString("degree_name") %></h4>
                                        <h4>Course Duration - <%=rs.getString("duration") %></h4>
                                        <h4>Eligibility - <%=rs.getString("eligibility") %></h4>
                                        
                                          
                                       <form action="college_detail.jsp" method="post" id='university_info'>
					                         <input type="hidden" name="uid"   value="<%=rs.getString("course")%>">
										     <button type="submit"class="button_outline">Details</button>
								       </form>
										
                                       
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                      
                    
                    <%
				}
				}
		catch (Exception e) {
			e.printStackTrace();
					}
					%>
				</div><!--End col-md-9 -->
				<br>
                     
                 
                    <br>
                    <aside class="col-md-3">
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
								 <hr class="styled">
			                    <div class="box_side">
			                    <h5>Apply Online</h5> <i class="icon_desktop"></i>
			                    <p>By filling out this form, you agree to allow your information to be shared with a consortium of colleges and universities  to contact you with more information. </p>  
			                    <p><a href="register.jsp" class="button small">Apply online</a> </p>
			                    </div>     
			                    </div>
                    </aside>
                </div><!--End row -->
            </div><!--End container -->
        </div><!--End container_gray_bg -->
    
			 
	

	 
		<!--Footer File-->	 
	<%@ include file="itc/footer.jsp" %>
		<!--Footer File-->

<!-- Common scripts -->
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/common_scripts_min.js"></script>
<script src="js/functions.js"></script>
<script src="assets/validate.js"></script>

</body>
</html>