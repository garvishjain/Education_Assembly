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
    <title>College, University and campus</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- BASE CSS -->
    <link href="css/base.css" rel="stylesheet">
    <link href="css/customize.css" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
		
		table, th, td
						 {
							  border: 1px solid black;
							  border-collapse: collapse;
						}
		tr,th			{
								text-align: center;
						}
			.h			{
						font-size:18px;margin:10px 0;
						font-weight: bold;
							}
			p			{
						
  line-height:1.2;

						}
						
						.btn-group button {
  background-color: #1cafec; /* Green background */
  border: 1px  #1cafec; /* Green border */
  color: white; /* White text */
  padding: 10px 24px; /* Some padding */
  cursor: pointer; /* Pointer/hand icon */
  float: left; /* Float the buttons side by side */
    margin: 0px 0px 0px 1px;
}
.college_but{margin: 0px 0px 0px 0px;}
.btn-group button:hover {
  background-color: black;
}
.bbb{margin: 0px 0px 0px -23px;
    padding: -3px 0px -4px -4px;
    float: right;}
  .field_detailed{font-size: 10px;font-size: 14px;}
.field_info{font-size: 15px;
    font-weight: bold;
    margin: 0px 0px 0px 0px;}
	</style>
	
	
	<script type="text/javascript">
	function first() {
		  document.getElementById("about").style.visibility = "visible";
		  document.getElementById("colleges").style.visibility = "hidden";
		}

		function second() {
			document.getElementById("about").style.visibility = "hidden";
			  document.getElementById("colleges").style.visibility = "visible";
				}
	
	
	
	</script>
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
     
     
       <%
			try{
				String sql=  "Select  * from course_details\n"+  
								    " INNER JOIN course_highlights ON course_highlights.pk_id=course_details.fk_course_highlights\n"+
								     "INNER JOIN course_name ON course_name.pk_id=course_highlights.fk_duration\n" ; 
     ResultSet rs=stmt.executeQuery(sql);
				while (rs.next()) {
		%>

        <div class="sub_header bg_1">
        	<div id="intro_txt">
			<h1> <strong>Course Detail</strong> </h1>
            <p></p>
            </div>
		</div> <!--End sub_header -->
 
 
 
 		<div class="container_gray_bg">
  
 
        <div class="container margin_60">
      
 		<div class="row">
           <div class="col-md-9">
           <div class="btn-group" >
  			<a href="#about"  onclick="first()"><button>Summary</button></a>
  			 <a href="#Colleges" onclick="second()"><button>Colleges</button></a>

		</div>
                	<div class="box_style_1" id="about" style="visibility:visible;">
                	
                   	<div class="indent_title_in">
                   	
                    <i class="pe-7s-news-paper"></i>
                      <%String diploma="Diploma Course";
                      			String course=null;%>
                      <%
                      if(diploma.equals(rs.getString("degree_name")))
                      {
                      	course=rs.getString("course");
		                    
                        %>
                     <%
                     }
                      else
                      {
                    	  String str=rs.getString("course");
		                    int b=(str.lastIndexOf(' '));
		                    course=str.substring(0,b); 
                      }
                      %>
				<h4 class="h">About <%=course %></h4>
				<p></p>
			</div>
            	<div class="wrapper_indent">
                    <p><%=rs.getString("about_course")/* .substring(0,464) */ %></p>
                  <%-- <p><%=rs.getString("about_for").substring(464) %></p> --%>
                  <div class="row">
                    	<div class="col-md-6">
                        	<p><img src="img/mca/m1.jpg" alt="" class="img-responsive"></p>
							  </div>
                        <div class="col-md-6">
                        	<p><img src="img/mca/m2.png" alt="" class="img-responsive"></p>
                             </div>
                    </div>
                    </div>
                    <hr class="styled_2">
                    <div class="indent_title_in">
                    <i class="pe-7s-user"></i>
				<h4  class="h"><%=course %> Course Highlights</h4>
				<p style="color: black; ">Some of the major highlights of  <%=course %> course are given below:</p>
			</div>
            	<div class="wrapper_indent">
                    <div class="row">
                    	<table>
		<tbody>
			<tr>
				<td>
					<p class="field_info">Degree</p>
				</td>
				<td>
					<p class="field_detailed" ><%=rs.getString("degree_name") %></p>
				</td>
			</tr>
			<tr>
				<td>
					<p class="field_info">Full Form</p>
				</td>
				<td>
					<p class="field_detailed"><%=course %></p>
				</td>
			</tr>
			<tr>
				<td>
					<p class="field_info"  > Duration</p>
				</td>
				<td>
					<p class="field_detailed">Course Duration of <%=course %> is <%=rs.getString("duration") %></p>
				</td>
			</tr>
			<tr>
				<td>
					<p class="field_info">Minimum Percentage</p>
				</td>
				<td>
					<p  class="field_detailed"><%=rs.getString("min_perc") %></p>
				</td>
			</tr>
			
			<tr>
				<td>
					<p class="field_info" >Subject Required</p>
				</td>
				<td>
					<p class="field_detailed"><%=rs.getString("sub_required") %></p>
				</td>
			</tr>
			<tr>
				<td>
					<p class="field_info" >Average Fees Incurred</p>
				</td>
				<td>
					<p class="field_detailed"><%=rs.getString("average_fees") %></p>
				</td>
			</tr>
			<tr>
				<td>
					<p class="field_info" >Similar Options of Study</p>
				</td>
				<td>
					<p class="field_detailed"><%=rs.getString("similar_option") %></p>
				</td>
			</tr>
			<tr>
				<td>
					<p class="field_info" >Average Salary</p>
				</td>
				<td>
					<p class="field_detailed"><%=rs.getString("average_salary") %></p>
				</td>
			</tr>
			<tr>
				<td>
					<p class="field_info">Employment Roles</p>
				</td>
				<td>
					<p class="field_detailed"><%=rs.getString("employment_roles") %></p>
				</td>
			</tr>
			<tr>
				<td>
					<p class="field_info" >Placement Opportunities</p>
				</td>
				<td>
					<p  class="field_detailed"><%=rs.getString("placement_opportunity") %></p>
				</td>
			</tr>
		</tbody>
	</table>
	
                   </div>
                    </div>
                    <hr class="styled_2">
                        
            	<div class="wrapper_indent">
                    <div class="row">
                    	<div><h4 class="h"><%=course %> Eligibility Criteria</h4>
						<p style="  line-height:1.2;">
							In order to pursue the <%=course %> course, the candidates will have to fulfil the given below eligibility criteria:</p>
						<ul>
									<li >
										<p style="  line-height:1.2;"><%=rs.getString("eligible_criteria")/* .substring(0,87) */ %></p>
									</li>
									<%-- <li >
										<p style="  line-height:1.2;"><%=rs.getString("eligible_criteria").substring(87,185) %></p>
									</li>
									<li >
										<p style="  line-height:1.2;"><%=rs.getString("eligible_criteria").substring(185) %></p>
									</li> --%>
						</ul>
						<%-- <h4 class="h"><%=course %> Admission Process</h4>
						<p  style="  line-height:1;">The admission to <%=course %> course is done in diffrent ways:</p>
						<p  style="  line-height:1;"><%=rs.getString("addmission_process").substring(0,240)%></p>
						<p  style="  line-height:1;"></p><%=rs.getString("addmission_process").substring(240)%>
					
					</p> --%>
</div>
                    	
                    </div>
                    </div>
                    
                     
                    
                    </div>
                    
                    
                    
                    
                    <div class="box_style_1" id="colleges"  style="visibility:hidden;">
                	
                   	<div class="indent_title_in">
                   	
                    <i class="pe-7s-news-paper"></i>
                      
				<h4 class="h">college list</h4>
				<p></p>
			</div>
            	<div class="wrapper_indent">
                        
                    </div>
                    <hr class="styled_2">
                    
                    
                        h3>Madhav Institute of Technology & Science, Gwalior Overview</h3>
								<img  src="img/changes/mits_2.jpg">
								
								<span  class="paragraph">
								
												<p class="p1">
														Madhav Institute of Technology & Science (MITS), Gwalior was founded in 1957 by His &nbsp; &nbsp;&nbsp; &nbsp;Highness Sir Jiwaji Rao Scindia, Maharaja, of the former state of Gwalior under the &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Government open door policy of India. The institute is affiliated with RGPV, Bhopal, but &nbsp; &nbsp;&nbsp; &nbsp;since 2002 it has academic autonomy  for running courses of its choice. The institute has &nbsp; &nbsp;&nbsp; recently approved by the UGC Delhi. The institute is also accredited by the NAAC &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;(National Assessment and Accreditation Council) & NBA (National Board of &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;  Accreditation).  The institute is located in the Race Course Road, Gwalior with the vision of creating world-class  &nbsp; &nbsp;&nbsp; &nbsp;quality Engineers and Technocrats capable of providing the leadership in all spheres of life and society.
												</p>								<br><br>
											
												<p>
														The Institute also has an established IQAC (Internal Quality Assurance Cell) which helps to develop mechanisms and procedures to measure, monitor and evaluate the quality of the institution's various academic and administrative activities. The MITS Institute offers courses in various undergraduate and postgraduate programmes in various specializations such as B.E., M.E., M.Tech, and Ph.D. The programmes aim to develop the abilities of the student and confront them with contemporary issues of the corporate world. Interested candidates can apply for the Madhav Institute of Technology & Science programmes by completing the application form online or visiting the campus.
												</p>									<br><br>
												
												<p>
														MITS Gwalior's has a fabulous state-of-the-art infrastructure which includes an enabled landscaped garden, modern architecture with the best campus facilities. The Madhav Institute of Technology & Science has one of the most beautiful and modern campuses among the nearby colleges in Gwalior. The institute has a lush green environment-conscious campus of about 44.6 acres which also includes ' Madhav-Van ' a small teak wood forest where it is possible to see a large variety of birds. In the midst of complex beauty and greenery, students at MITS are free to study. The campus also offers excellent facilities for students, including classrooms, seminar rooms, library and reading rooms, hostels, food & mess, ATM, etc.
												</p>     							 <br><br>
												
												<p>
															To harness the students ' immense potential and vibrant energy the institute provides the students with various club activities for their overall development of personality and building confidence. In many sporting events such as table tennis, badminton, Kho-Kho, chess, etc the institute has won many awards & prizes.													
												</p>
							</span>	
            	
                    
                     
                    
                    </div>
                    
                    
                    
                    
                    
                    
           </div>
           <br><br><br>
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
                 <!--    <div class="box_side"><h4>Plan a visit</h4> <i class="icon_pencil-edit"></i>
                    <p>By filling out this form, you agree to allow your information to be shared with a consortium of colleges and universities  to contact you with more information. </p>
                    <a href="#0" class="button small">Plan a visit</a>
</div> --><div class="box_side">
                    <h5>Apply Online</h5> <i class="icon_desktop"></i>
                    <p>By filling out this form, you agree to allow your information to be shared with a consortium of colleges and universities  to contact you with more information. </p>  
                    <p><a href="register.jsp" class="button small">Apply online</a> </p>
                    </div>     
                    </div>
             
                    
                    </aside>
            </div><!--End row -->
        </div><!--End container -->
        <%
				}
				}
		catch (Exception e) {
			e.printStackTrace();
					}
					%>
        </div><!--End container_gray_bg -->
  
  

	
	<%@ include file="itc/footer.jsp" %>
    
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