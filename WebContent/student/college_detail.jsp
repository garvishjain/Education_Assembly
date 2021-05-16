<%-- <%=
	"<h2>"+request.getParameter("uid")+"</h2>"

%> --%>
<%   
  
String coursename=request.getParameter("uid");  
  
  
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
    <!-- <link href="css/custom/college_detail.css" rel="stylesheet"> -->
    <script type="text/javascript" src="css/custom/college_Detail.js"></script>
    
    <!-- SPECIFIC CSS -->
    <link href="css/skins/square/blue.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
<script	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>



<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"> -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    .bs-example{
        border: 1.5px solid #121111;
    width: 1000px;
    margin: 19px 0px 0px 86px;
    padding: 28px 27px 45px 33px;
    }
    .accordion .fa{
        margin-right: 0.5rem;
}  
        .sub_header.bg_g {
	background-image: url(img/changes/mits1.jpg);
	margin-top: 70px;
}

    .staff .box_style{
    text-align: center;
    cursor: auto;
    width: 100%;
      margin: 23px 0px 0px 53px;
    /* padding: 0px 0px 0px 0; */
    
}
#topheader .navbar-nav li>a {
    text-transform: capitalize;
    color: #161515;
    font-size: 15px;
    font-weight: bold;
    background-color: #c2c2c2;
    -webkit-transition: background-color .2s, color .2s;
    transition: background-color .2s, color .2s;
    width: 160px;
    height: 37px;
    text-align: center;
    margin: 0px 0px 0px -15px;
    padding: 9px 15px 20px 0px;
    text-align: center;
}
#topheader .navbar-nav li.active>a {
	background-color: black;
	color: white;
	font-size: 15px;
	text-align: center;
}
.navbar-default .navbar-collapse, .navbar-default .navbar-form {
	border-color: #5f2424;
	background-color:#c2c2c2;
	/* background-color: #223038; */
}
#position {
    padding: 10px 0;
    font-size: 12px;
    border-bottom: 1px solid #e4e4e4;
    background-color: #f3f5f8;
    margin: -42px 0px 0px 0px;
}
.first_head {
    border: 2px solid gray;
    width: 80%;
    height: 714px;
    margin: 35px 0px 65px 125px;
    padding: 30px 20px 20px 30px;
}
@media (min-width: 768px)
.navbar {
    border-radius: 4px;
    margin: 38px 0px 0px 0px;
    height: -29px;
    min-height: 39px;
}
.commonBlock {
    border: 1.5px solid #121111;
    width: 1000px;
    height: 225px;
    margin: 35px 0px 0px 86px;
    padding: 28px 27px 45px 33px;
}
.sub_header.bg_g h1  
{
font-size: 20px;
    color: #212122;
    margin: 185px 245px -172px -355px;
    padding: 0px 0px 0px 0px;
    width: 662px;}
.heading{
    font-size: 20px;
    color: #212122;
    margin: 185px 245px -172px -330px;
    padding: 0px 0px 0px 0px;
    width: 662px;
}
img {
    margin: auto;
    margin: 330px 0px 0px -105px;
    float: left;
}
</style>
<script>
    $(document).ready(function(){
        // Add minus icon for collapse element which is open by default
        $(".collapse.show").each(function(){
        	$(this).prev(".card-header").find(".fa").addClass("fa-minus").removeClass("fa-plus");
        });
        
        // Toggle plus minus icon on show hide of collapse element
        $(".collapse").on('show.bs.collapse', function(){
        	$(this).prev(".card-header").find(".fa").removeClass("fa-plus").addClass("fa-minus");
        }).on('hide.bs.collapse', function(){
        	$(this).prev(".card-header").find(".fa").removeClass("fa-minus").addClass("fa-plus");
        });
    });
</script>



</head>

<body>

	<div id="preloader">
		<div class="pulse"></div>
	</div>

	<!--Header File-->	
	 <%@ include file="itc/header.jsp" %>
		<!--Header File-->

	<div class="sub_header bg_g">
		<div class="merge_heading">
			<div class="img_heading">
				<img src="img/college/c_1.png">
			</div>
			
		</div>
		<div class="col_heading">
				<h1 style="font-family: Georgia;" class="heading">
					<b>MADHAV INSTITUTE OF TECHNOLOGY AND SCIENCE , GWALIOR (MITS)</b>
				</h1>
			</div>
	</div>
	<!--End sub_header -->




	<div id="topheader">
		<nav class="navbar navbar-default">
			<div class="container-flui">
							<div class="collapse navbar-collapse"	id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#home" onclick="overview()" > OVERVIEW</a></li>
								<li><a href="#page1" onclick="admission()" >ADMISSION</a></li>
								<li><a href="#page2" onclick="course()" >COURSES AND FEES</a></li>
								<li><a href="#page3" onclick="placement()" >PLACEMENT</a></li>
								<li><a href="#page3" onclick="cutoff()" >FACULTY</a></li>
								<li style="width: 2px;" onclick="gallery()" ><a href="#page3">GALLERY</a></li>
							</ul>
				</div>
			</div>
		</nav>
	</div>

	<div class="container_gray_bg" style="display: inline;">
		<div id="position"></div>
		<!-- Position -->
		<div class="container margin_60">
			<div class="row">
				<div class="row staff">
		<fieldset id="first" style="display: block;">
					<div class="first_head">
								<h3>Madhav Institute of Technology & Science, Gwalior Overview</h3>
								<h3><%=coursename %></h3> 
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
	</fieldset>
					
					<!--  second fieldset -->
					<fieldset id="second" style="display: none;">
							<div class="commonBlock">
											<p class="text_second">The Madhav Institute of Technology and Science (MITS) offers an undergraduate degree in Engineering (B.E) and Architecture (B.Arch) for four and five years, respectively. Under the B.E programmes, the institute offers various specializations. And for the Post Graduate Programmes, the university offers degrees in M.E, M.Tech &amp; MCA. So, to be admitted in any of these programmes the candidates need to have 10+2 certification with Physics, Chemistry &amp; Mathematics from any recognized university. And for those candidates who seek admission in the B.E program needs to have appeared in the JEE ( Joint Entrance Examination) Exam. Whereas for the candidate seeking admission in B.Arch should have appeared in the NATA (National Aptitude Test in Architecture) Examinations. For the admission in the Post Graduate programmes (M.E./M.Tech.) the admission is done on the basis of candidate score in the GATE exam and the written exam. While for the admission in MCA program the admission is based on the candidate performance in 10+2 &amp; BCA.
															</p>
							</div>
							
							
											<span>
											
											
											<div class="bs-example">
   		 <div class="accordion" id="accordionExample">
       

			        <div class="card">
					            <div class="card-header" id="headingOne">
					                <h2 class="mb-0"> <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#collapseOne"><i class="fa fa-plus"></i> For B.Tech</button>									
					                </h2>
					            </div>
			            <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
				                <div class="card-body">
				                     <p><h2>Admission Process of Madhav Institute of Technology and Science 2019</h2><p><strong>Online:-</strong></p><ul><li>Visit the official website of Madhav Institute of Technology &amp; Science.</li><li>Then go to the tab of admission and select the online application form option.</li><li>Fillup the application form with relevant information and required documents.</li><li>Documents needed at the time of application submission :​</li><li>Copy of 10th Mark Sheet.</li><li>Copy of 10+2 Mark Sheet.</li><li>Copy of Transfer Certificate.</li><li>Copy of Migration Certificate.</li><li>Valid proof of the permanent residence (Passport / Ration Card / Election ID Card, etc.)</li><li>Visa or Passport, for Foreign National Students</li><li>Migration Certificate</li><li>Submit the application form with the payable amount.</li><li>Fees can be submitted using the Debit / Credit card / Cash.</li></ul><p><strong>Offline:-</strong></p><ul><li>Visit Madhav Institute of Technology &amp; Science&#39;s official website</li><li>Download the form below.</li><li>Complete the application form with the required fields and the required documents.</li><li>Class X Certificate for Date of Birth.</li><li>Other certificates for academics or sports.</li><li>Mark Sheets of Class X, XII, Degree, Diploma (as may be applicable).</li><li>Domicile Certificate (if applicable).</li><li>After finally filling the application form, send it to the admission office of the Madhav Institute of Technology &amp; Science</li></ul><h2>Eligibility Criteria for B.E. at&nbsp;Madhav Institute of Technology and Science 2019</h2><p>The candidate should have passed pre-university examinations with minimum 45% marks with Physics, Chemistry, and Chemistry / Biology / Computer Science as an optional subject under the Karnataka State Pre-university Board or its equivalent.</p><p>Candidates seeking admission to the second year of the four-year B.E. degree must have completed the three-year Diploma course conducted by the Board of Technical Examination of the Karnataka Government in the respective branches/courses or any other examination recognized as equivalent by the Visvesvaraya Technological University.</p><h2>Selection Process of&nbsp;B.E. at&nbsp;Madhav Institute of Technology and Science 2019</h2><p><strong>STEP-1</strong></p><p>The Selection will be done on the basis of score obtained in JEE &amp; the academic performance of the applicants.</p><p><strong>STEP-2</strong></p><p>Shortlisted applicants will be called for Aptitude test &amp; Group Discussion (GD) where applicants will be assessed to his/her verbal, written and analytical skills.</p><p><strong>STEP-3</strong></p><p>After that, the selected applicants will be called for the Personal Interview (PI) to identify &amp; assess the interpersonal skills of the applicant.</p><p><strong>STEP-4</strong></p><p>The Final Selection will be done on the basis of the composite scores of Entrance exam &amp; PI round conducted by the institute.</p></div><div class="heading"  id="mtech" >For M.Tech</div><div class="box content"  style="display:none;"   ><h2>Eligibility Criteria for M.Tech at Madhav Institute of Technology and Science 2019</h2><p>Candidates should have passed B.E./ B.Tech. Examinations in the relevant fields with not less than 50 percent of the marks in their degree examinations. The course is open to candidates who have passed the prescribed qualifying examinations. However, in the case of SC / ST and Group I candidates, the aggregate percentage of marks in qualifying examinations shall not be less than 45 percent.</p><h2>Selection Process of&nbsp;M.Tech at Madhav Institute of Technology and Science 2019</h2><p><strong>STEP-1</strong></p><p>The Selection will be done on the basis of the common entrance tests for M.Tech program ( PGCET/ GATE ).</p><p><strong>STEP-2</strong></p><p>Shortlisted applicants will be called for Aptitude test &amp; Group Discussion (GD) where applicants will be assessed to his/her verbal, written and analytical skills.</p><p><strong>STEP-3</strong></p><p>After that, the selected applicants will be called for the Personal Interview (PI) to identify &amp; assess the interpersonal skills of the applicant.</p><p><strong>STEP-4</strong></p><p>The Final Selection will be done on the basis of the composite scores of Entrance exam &amp; PI round conducted by the institute.</p></p>
							   </div>
			            </div>
			    </div>
			<br>

        <br>
        
			        <div class="card">
			            <div class="card-header" id="headingThree">
			                <h2 class="mb-0">
			                    <button type="button" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree"><i class="fa fa-plus"></i> For MCA</button>                     
			                </h2>
			            </div>
			            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
			                <div class="card-body">
			                  <h2>Eligibility Criteria for M.C.A. at Madhav Institute of Technology and Science 2019</h2><p>The candidates should have passed the prescribed qualifying examinations in the aggregate of all the years of the degree examinations with not less than 50 percent of the marks. However, in the case of candidates belonging to SC/ST and any other groups classified by the Government of Karnataka for this purpose, the aggregate percentage of marks in qualifying examinations shall not be less than 45% from time to time.</p><h2>Selection Process of&nbsp;M.C.A. at Madhav Institute of Technology and Science 2019</h2><p><strong>STEP-1</strong></p><p>The Selection will be done on the basis of the common entrance tests like&nbsp;PGCET/ KMAT/ MAT for MCA Programs</p><p><strong>STEP-2</strong></p><p>Shortlisted applicants will be called for Aptitude test &amp; Group Discussion (GD) where applicants will be assessed to his/her verbal, written and analytical skills.</p><p><strong>STEP-3</strong></p><p>After that, the selected applicants will be called for the Personal Interview (PI) to identify &amp; assess the interpersonal skills of the applicant.</p><p><strong>STEP-4</strong></p><p>The Final Selection will be done on the basis of the composite scores of Entrance exam &amp; PI round conducted by the institute.</p>          </div>
			            </div>
			        </div>
    </div>
</div>
											</span>
							
						
					</fieldset>
					
					
					
	<!--  thirdfieldset -->
					
					<fieldset id="third" style="display: none;">
<!-- 					<h3 class="top_heading">36 Courses are offered by MITS GWALIOR</h3> -->
					<div class="part_1">
					<div class="city">
						<ul class="courseList" id="course-list">
							<p class="pro">
								<a style="color: black;text-align: center;margin: 120px 0px 0px 30px;">COURSE</a>
							</p>
							<hr style="width: 125%;">
							
							
							<a class="cour" href="#btech" >B.Tech</a>
							<hr>
							<a class="cour" href="#barch" >B.Arch</a>
							<hr>
							<a class="cour" href="#mtech" >M.Tech</a>
							<hr>
							<!-- <a class="cour" href="#mplan" >M.Plan</a>
							<hr> -->
							<a class="cour" href="#mca">MCA</a>
							<hr>
							<a class="cour"href="#phd" >PhD</a>
						</ul>
					</div>
					</div>
					<!-- courses div -->
					
					
		
						<div class="container_gray_b">
							
							
							<div class="container margin_60">
								<div class="row staff">

								<p><a name="btech"></a></p>
									<div class="col-md-3">
										<div class="box_style_1">
											<h4 class="top_heading">B.Tech. <br>(Bachelor of Technology)</h4><hr class="linedraw">
											 <br>
											<p class="p_c"> <strong>Duration : 4 Years</strong> </p><br>&nbsp;&nbsp;&nbsp;&nbsp;
											<p class="p_c1"><strong>Study Mode :Regular</strong></p><br>&nbsp;&nbsp;&nbsp;&nbsp;
											<p class="p_c2"><strong>Total Fees: Rs. 2.60 Lakh</strong>
											</p><br>
										<br>
											<hr class="linedraw"><br>
											<a href="register.jsp" class="button_outline">Apply</a>
											<a href="be.jsp" class="button_outline">Check Branch & Details</a>
											
										</div>
									</div>
									
									<!-- 2 -->
									<p><a name="mtech"></a></p>
									<div class="col-md-3">
										<div class="box_style_1">
											<h4 class="top_heading">M.Tech.<br>(Master of Technology)</h4><hr class="linedraw"><br>
											 
											<p class="p_c4"><strong>Duration : 2-3 Years</strong> </p><br>&nbsp;&nbsp;&nbsp;&nbsp;
											<p class="p_c1"><strong>Study Mode :Regular</strong></p><br>&nbsp;&nbsp;&nbsp;&nbsp;
											<p class="p_c2"><strong>Total Fees: Rs. 2.20 Lakh</strong>
											</p><br><br>
										
											<hr class="linedraw"><br>
											<a href="register.jsp" class="button_outline">Apply</a>
											<a href="be.jsp" class="button_outline">Check Branch & Details</a>
											
										</div>
									</div>
									<!-- 3 -->
									
									<p><a name="barch"></a></p>
									<div class="col-md-3">
										<div class="box_style_1">
											<h4 class="top_heading">B.Arch.<br>(Bachelor of Architecture)</h4><hr class="linedraw"><br>
											<p class="p_c"><strong>Duration : 5 Years</strong></p>	<br>&nbsp;&nbsp;&nbsp;&nbsp;
											<p class="p_c1">	<strong>Study Mode :Regular</strong>	</p>	<br>&nbsp;&nbsp;&nbsp;&nbsp;
											<p class="p_c2">	<strong>Total Fees: Rs. 2.80 Lakh</strong>	</p><br><br>
											<hr class="linedraw"><br>
											<a href="register.jsp" class="button_outline">Apply</a> <a
												href="be.jsp" class="button_outline">Check Branch &
												Details</a>

										</div>
									</div>
									
									
									</div>
									</div>
									<!-- 4 -->
									 <div class="container margin_60">
								<div class="row staff">
									<!--<div class="col-md-3">
										<div class="box_style_1">
											<h4 class="top_heading">B.Tech. <br>(Bachelor of Technology)</h4><hr class="linedraw">
											 <br>
													<p class="p_c"> <strong>Duration : 3 Years</strong> </p><br>&nbsp;&nbsp;&nbsp;&nbsp;
													<p class="p_c1"><strong>Study Mode :Regular</strong></p><br>&nbsp;&nbsp;&nbsp;&nbsp;
													<p class="p_c2"><strong>Total Fees: Rs. 2.0 Lakh</strong>
													</p><br>
										<br>
											<hr class="linedraw"><br>
											<a href="register.jsp" class="button_outline">Apply</a>
											<a href="be.jsp" class="button_outline">Check Branch & Details</a>
											
										</div>
									</div> -->
									
									<!-- 5 -->
									<p><a name="mca"></a></p>
									<div class="col-md-3">
										<div class="box_style_1">
												<h4 class="top_heading">M.C.A.<br> (Master of Computer Applications)</h4><hr class="linedraw">
													 <br>
												<p class="p_c"> <strong>Duration : 2 Years</strong> </p><br>&nbsp;&nbsp;&nbsp;&nbsp;
												<p class="p_c1"><strong>Study Mode :Regular</strong></p><br>&nbsp;&nbsp;&nbsp;&nbsp;
												<p class="p_c2"><strong>Total Fees: Rs. 1.40 Lakh</strong>
												</p><br>
														<br>
											<hr class="linedraw"><br>
											<a href="register.jsp" class="button_outline">Apply</a>
											<a href="be.jsp" class="button_outline">Check Branch & Details</a>
										</div>
									</div>
	<!-- 6 -->
	<p><a name="mca"></a></p>
									<div class="col-md-3">
										<div class="box_style_1">
													<h4 class="top_heading">M.C.A.<br>(Master of Computer Applications)</h4><hr class="linedraw">
													 <br>
													<p class="p_c"> <strong>Duration : 3 Years</strong> </p><br>&nbsp;&nbsp;&nbsp;&nbsp;
													<p class="p_c1"><strong>Study Mode :Regular</strong></p><br>&nbsp;&nbsp;&nbsp;&nbsp;
													<p class="p_c2"><strong>Total Fees: Rs. 2.0 Lakh</strong>
													</p><br>
													<br>
														<hr class="linedraw"><br>
														<a href="register.jsp" class="button_outline">Apply</a>
												<a href="be.jsp" class="button_outline">Check Branch & Details</a>
										</div>
									</div>
									</div>
									</div>
	<!-- 7 -->
	<p><a name="phd"></a></p>
	<div class="container margin_60">
								<div class="row staff">
									<div class="col-md-3">
										<div class="box_style_1">
													<h4 class="top_heading">Ph.D.<br> (Doctor of Philosophy)</h4><hr class="linedraw">
													 <br>
													<p class="p_c"> <strong>Duration : 3 Years</strong> </p><br>&nbsp;&nbsp;&nbsp;&nbsp;
													<p class="p_c1"><strong>Study Mode :Regular</strong></p><br>&nbsp;&nbsp;&nbsp;&nbsp;
													<p class="p_c2"><strong>Total Fees: N/A</strong>
													</p><br>
												<br>
													<hr class="linedraw"><br>
													<a href="register.jsp" class="button_outline">Apply</a>
												<a href="be.jsp" class="button_outline">Check Branch & Details</a>
										</div>
									</div>
<!-- 8 -->
									<!-- <div class="col-md-3">
										<div class="box_style_1">
														<h4 class="top_heading">M.C.A.<br>(Master of Computer Applications)</h4><hr class="linedraw">
														 <br>
														<p class="p_c"> <strong>Duration : 3 Years</strong> </p><br>&nbsp;&nbsp;&nbsp;&nbsp;
														<p class="p_c1"><strong>Study Mode :Regular</strong></p><br>&nbsp;&nbsp;&nbsp;&nbsp;
														<p class="p_c2"><strong>Total Fees: Rs. 2.0 Lakh</strong>
														</p><br>
															<br>
														<hr class="linedraw"><br>
														<a href="register.jsp" class="button_outline">Apply</a>
												<a href="be.jsp" class="button_outline">Check Branch & Details</a>
										</div>
									</div> -->
									
									
								</div>
							</div>
						</div>

					</fieldset>

<!--  placement fieldset -->
<fieldset id="four" style="display: none;">
					<div class="part_1">
							<div class="city_six">
									<ul class="courseList" id="course-list">
										<p class="pro"> <a style="color: black;text-align: center;margin: 120px 0px 0px 30px;">Programmes</a></p><hr class="line">
										<a class="cour" href="#btech" onclick="placements()">About Placement cell</a> <hr class="line">
										<a class="cour" href="#barch" onclick="recruiters()" >Leading Recruiters</a> <hr class="line">
										<a class="cour" href="#mtech" onclick="records()">placement records</a>
									</ul>
							</div>
					</div>
					<!-- courses div -->
<div class="container_gray_h">
	<div class="container margin_60">
							
			<fieldset id="placements" style="display: block;">
						<div class="row staff">
								<img src="img/college/tn.jpg"  class="tnpimage"> <br><br><br><br><br><br><br><br>
							<div class="placement_detail">
									<font face="Georgia" size="4" align="justify"><p class="placement_heading" align="justify"><dd>The Goal of Training & Placement Cell of MITS Gwalior is to be a liaison between Industry and students to provide employment opportunities available in the market and to provide intensive training to the students for their overall development.<br />
												It works under guidance of Training & Placement Officer in consultation with Faculty In-Charge.<br />
												Training & Placement Cell provides full placement support to its students in all areas of disciplines – Civil, Mechanical, Electrical, Electronics & Communication, Computer Science, Information Technology, Biotechnology & Chemical Engineering, Electronics & Telecommunication, Automobile Engineering and Computer Applications etc.<br />
												Right from connecting with companies related to above mentioned disciplines in the industry to managing all logistics of arranging whole campus recruitment process with the required hospitality; T&P Cell officials and students coordinators provide their best possible assistance to the recruiters.<br />
												Apart from that, T&P Cell focuses on conducting soft & professional skills training for Pre-Final & Final year students, Industrial Projects/Internships & Training, Guest Lectures, Motivation & Guiding Sessions, Alumni connect programmes and building brand value of the Institute in the industry & market. </dd> </p> </font> </br>  <b>
									<font face="Georgia" size="5" color="blue">
  												<ui><dt>Training & Placement Cell Activities</dt></ui></font></b>
  									<font face="Georgia" size="4" align="justify"><p align="justify"><dd>
												Training & Placement (T&P) Activities of Institute consist of following: 
									<ol type="A"> <h2><li>Campus Placements Process:</li></h2> <p align="justify">
												Campus Placement Process are organized by different companies for providing job placements of students for that company's contact T&P cell of MITS Gwalior. We, T&P Cell, also invites companies every year. It arranges all logistics & hospitality required at their best for the conduction of selection process at Institute with all required infrastructure. <br />
												T&P Cell fulfil purpose for both sides; for students securing their future career and industry securing the best fresh talents available in the region.<br />
												Companies are required to send their details and job description for the recruitment process by sending an official mail at <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="f98d9789b994908d8a9e8e989590968bd79097">[email&#160;protected]</a> in the same regard. </p>
									<h2><li>Career Orientation Programmes:</li></h2>
											<p align="justify">
														Demanding training programmes like Soft & Professional Skills training in the Institute through experienced experts and programmes to orient students about industry expectations are organized.<br />
														Additional Expert/Guest Lectures, Motivational & Guiding session, and training sessions to improve learning in the areas like Personality Development, Group Discussion, Aptitude Skills and Presentation Skills.
														</p>
									<h2><li>Industrial Training/Projects/Visits for the students:</li></h2>
									<p align="justify">
												Industrial Training and Internships are the integral part of the study to acknowledge them for real world problems. Students are placed at various industries for 6 to 8 weeks and under supervision and guidance of respective industry personnel.<br />
												Industry visits of the students with faculty members are organized to the relevant industries at various locations. It serves the objective of exposure to large-scale practical applications of theoretical aspects for the students.<br />
												Students prepare the projects reflecting the needs and problems of the industry. Institute faculty interacts with industry and students for successful implementation of such projects.<br />
												Apart from the above basic activities, Training & Placement Cell continuously connect with Alumni present in the all Industries for the benefits of students, Connects with Industries for Faculty Training and plays a vital role as front of Institute to build a brand in the market & Industry.
											</p>
											</ol>
										</dd>
									</p>
						</font>
									</br>
									<b><font face="Georgia" size="5" color="blue"> <ui><dt>Why @ MITS Gwalior</dt></ui></font>
									</b>
									  <font face="Georgia" size="4"><p align="justify"><dd>
												MITS, Gwalior is one of the well-established engineering institutions in the country along the lines of IITs and NITs; it is a government aided autonomous institution, established in 1957.<br />
												And, it is oldest premier institute in the North Central region of the country that aims at all round development of the students besides imparting technical knowledge.<br />
												<!--<font face="Georgia" size="4" color="blue"><i><b>“MITS ranks 15th in latest DATAQUEST-CMR T-School Survey-2015 of Top 25 Government T-schools of India.”</b></i></font> -->
									<ol type="A">
									<h2><li>An Institute of Excellence:</li></h2>
									<p align="justify">
												The constant Endeavour to achieve excellence in all fields, with the world class facility, well equipped laboratories, R&D, and well known highly qualified faculty. Since its very foundation, the institute has set many benchmarks in the field of research.<br />
												It has been 62 years since the establishment of MITS and it is the spirit of this institute that has remained intact. The hallmark of this spirit has been not to walk on the path already taken but to establish new routes, to take the less trodden path and be the first to respond to the needs of the people and the nation.
									</p>
						</div>								
				</div>
		</fieldset>
								
				
	<!-- Recruiters Field Start -->						
<fieldset id="recruiters" style="display: none;">
	<font face="Georgia" size="5" color="black">
			<div recruite_heading>
					<table  class="table_com">
					 <!-- <tr>
					    <th class="table_head"><p class="table_head">Leading Recruiters<p></th>
					  </tr> --> 
							  <tr>
							    <td align="right"  class="am"><img src="img/company_image/amazon-625x352.jpg"></td>
							    <td align="left"    class="am1"><font   face="Georgia" size="4" color="black">Amazone</font></td>
							    <td align="right" class="am"><img src="img/company_image/BYJUS_logo_600x400.2eab8a9e741c01c02b31b22d4cb028f9871d2893.jpg"></td>
							    <td align="left"    class="am1"><font   face="Georgia" size="4" color="black">BYJUS</font></td>
							    <td align="right" class="am"><img src="img/company_image/download (2).png"></td>
							    <td align="left"    class="am"><font    face="Georgia" size="4" color="black">Mahindra</font></td>
							  </tr>
							  
							  <tr>
							    <td align="right" class="am"><img src="img/company_image/download.jpg"></td>
							    <td align="left" class="am1"><font face="Georgia" size="4" color="black">Godrej</font></td>
							    <td align="right"class="am"><img src="img/company_image/capegemini.jpg"></td>
							    <td align="left" class="am1"><font face="Georgia" size="4" color="black">Capgemini</font></td>
							    <td align="right" class="am"><img src="img/company_image/tcs.png"></td>
							    <td align="left" class="am1"><font face="Georgia" size="4" color="black">TCS</font></td>
							  </tr>
							
							  <tr> 
							    <td align="right" class="am"><img src="img/company_image/hcl.png"></td>
							    <td align="left" class="am1"><font face="Georgia" size="4" color="black">HCL Technologies</font></td>
							    <td align="right" class="am"><img src="img/company_image/techmahindra.png"></td>
							    <td align="left" class="am1"><font face="Georgia" size="4" color="black">Tech Mahindra</font></td>
							    <td align="right" class="am"><img src="img/company_image/Wipro.png"></td>
							    <td align="left" class="am1"><font face="Georgia" size="4" color="black">Wipro Technologies</font></td>
							  </tr>

  							<tr>
							    <td align="right" class="am"><img src="img/company_image/infosis.jpg"></td>
							    <td align="left" class="am1"><font face="Georgia" size="4" color="black">Infosys</font></td>
							  </tr>
				</table>
		</div>
	</font>
</fieldset>

<!--  Record Table STart -->	
				<fieldset id="records" style="display: none;">
														<h1 class="record_heading" >Placement Record</h1>
														<img alt="" src="img/company_image/placemnt2021.jpg"><br>
														<img alt="" src="img/company_image/plac2021.jpg">
				</fieldset>
    </div>
    </div>
</fieldset>
			
<!-- fifth Fieldset -->		
					<!--  placement fieldset -->
<fieldset id="five" style="display: none;">
					<div class="part_1">
							<div class="city_six">
									<ul class="courseList" id="course-list">
										<p class="pro"> <a style="color: black;text-align: center;margin: 120px 0px 0px 30px;">Programmes</a></p><hr class="line">
										<a class="cour"  onclick="be()">B.Tech</a> <hr class="line">
										<a class="cour"  onclick="me()">M.Tech</a> <hr class="line">
										<a class="cour"  onclick="mca()">MCA</a>
									</ul>
							</div>
					</div>
					<!-- courses div -->
<div class="container_gray_h">
	<div class="container margin_60">
							
			<fieldset id="be" style="display: block;">
						<div class="row staff">
												<h2 class="mca_de">B.TECH Faculty</h2>
												<h2 class="civil">Department of Civil Engineering</h2>
												<div class="col-md-4">
													<div class="box_style">
														<p>
															<img src="img/faculty/civilimage003.jpg" alt=""
																class="img-circle styl" width="150" height="150">
														</p>
														<br>
														<h4 class="faculty_name">DR. MANOJ TRIVEDI</h4>
														<h5>Professor & Head</h5>
														<h5>Regular (D.O.J.-01.07.92)</h5>
														<h5>Ph.D.IIT Roorkee</h5>
														<hr class="staff_line">
														<h4>Area of Interest :</h4>
														<br>
														<h4 class="staff_detail">&nbsp; Water Resource Engg.,
															Soil Water Transportation</h4>
														<h4 class="staff_email">
															<br>E-Mail : <br>&nbsp;manojtrivedi@mitsgwalior.in
															<br>
														</h4>
														<h4 class="staff_number">
															<br>Contact : <br>&nbsp;0751-4048220751
														</h4>
														<hr class="staff_line">
														<ul class="social_team">
															<li><a
																href="https://www.linkedin.com/in/dr-manoj-trivedi-7049791a3/ "
																target="_blank" title="Linkedin"><i
																	class="icon-linkedin"></i></a></li>
															<li><a href="#" title="Twitter"><i
																	class="icon-twitter"></i></a></li>
															<li><a
																href="https://scholar.google.co.in/citations?user=QGCQGxMAAAAJ&hl=en&oi=sra "
																target="_blank" title="Google Scholar"><i
																	class="icon-google"></i></a></li>
															<li><a
																href="https://mail.google.com/mail/u/0/#inbox?compose=DmwnWrRqhSMCxMLnTJLNKfzwzlSCgxWTSNkqmNZbHSXtZRPmtTSvcWfWgXTcBNwpSTjZjdcChwfB"
																title="E-mail" target="_blank"><i class="icon-email"></i></a></li>
														</ul>
													</div>
												</div>
<!-- Second STAff LIST -->
					
		</div><!-- End ROW STaff -->
		</fieldset>
								
				
	<!-- Recruiters Field Start -->					
<fieldset id="me" style="display: none;">
														
													
				</fieldset>

<!--  Record Table STart -->	
				<fieldset id="mca" style="display: none;">
														<div class="row staff">
								
										<h2 class="mca_de">MCA Faculty</h2>
					 					<div class="col-md-4">
											<div class="box_style">
												<p> <img src="img/faculty/Rs-Jadon.jpg" alt="" class="img-circle styl" width="150" height="150"> </p> <br>
												<h4 class="faculty_name">DR. R.S. JADON</h4>
												<h5>Professor</h5>
												<h5>Ph.D.</h5> <hr class="staff_line">
												<h4>Area of Interest :</h4> <br>
												<h4 class="staff_detail">&nbsp; Computer Vision & Image &nbsp;&nbsp;Processing</h4>
												<h4 class="staff_email"> <br>E-Mail : <br>&nbsp;rsjadon@mitsgwalior.in<br> </h4>
												<h4 class="staff_number"> <br>Contact : <br>&nbsp;0751-4048220751 </h4> <hr class="staff_line">
												<ul class="social_team">
													<li><a href="https://www.linkedin.com/in/dr-r-s-jadon-79b89816/?originalSubdomain=in " target="_blank" title="Linkedin"><i
															class="icon-linkedin"></i></a></li>
													<li><a href="#" title="Twitter"><i class="icon-twitter"></i></a></li>
													<li><a href="https://scholar.google.com/citations?user=OTp6_fsAAAAJ&hl=en&oi=sra" target="_blank" title="Google Scholar"><i
															class="icon-google"></i></a></li>
													<li><a href="https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSMTtdNhFNbTkGgPSbHdPdGBLhkxbQVSVLrGrbNsGcBBGLfdPDZRgKBTlXltPzdtstwScRQV"
														title="E-mail" target="_blank"><i class="icon-email"></i></a></li>
												</ul>
											</div>
									</div>
									
<!-- Second STAff LIST -->
						<div class="col-md-4">
								<div class="box_style">
												<p> <img src="img/faculty/anshumca.jpeg" alt="" class="img-circle styl" width="150" height="150"> </p> <br>
												<h4 class="faculty_name">DR. ANSHU CHATURVEDI</h4>
												<h5>Professor</h5>
												<h5>Ph.D.</h5> <hr class="staff_line">
												<h4>Area of Interest :</h4> <br>
												<h4 class="staff_detail">&nbsp; Adhoc Networks</h4>
												<h4 class="staff_email"> <br>E-Mail : <br>&nbsp;anshu_chaturvedi@mitsgwalior.in<br> </h4>
												<h4 class="staff_number"> <br>Contact : <br>&nbsp;0751-2340557 </h4>
												<hr class="staff_line">
												<ul class="social_team">
													<li><a href="https://www.linkedin.com/in/dr-anshu-chaturvedi-6548463/?originalSubdomain=in  " target="_blank" title="Linkedin"><i
															class="icon-linkedin"></i></a></li>
													<li><a href="#" title="Twitter"><i class="icon-twitter"></i></a></li>
													<li><a href="https://scholar.google.com/citations?user=OYJ5QoQAAAAJ&hl=en&oi=ao" target="_blank" title="Google Scholar"><i
															class="icon-google"></i></a></li>
													<li><a href="https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbFbLNTRpSmvQRHTxqxpjpglBzTmNgJNnzwJrrBjKWXsGFqbXfLFSCMWjxBrGgFwcJKbbg"
														title="E-mail" target="_blank"><i class="icon-email"></i></a></li>
												</ul>
								</div>
						</div>
		</div>
<!-- 		End ROW STaff -->
<!-- Third STAff LIST -->

									<br>
<!-- Start Row Staff -->
<!-- 				Four Staff List -->
<div class="row staff">
										<div class="col-md-4">
											<div class="box_style">
												<p> <img src="img/faculty/parulmca.jpeg" alt="" class="img-circle styl" width="150" height="150"> </p> <br>
												<h4 class="faculty_name">DR. PARUL SAXENA</h4>
												<h5>Assistant Professor</h5>
												<h5>Ph.D.</h5> <hr class="staff_line">
												<h4>Area of Interest :</h4> <br>
												<h4 class="staff_detail">&nbsp; Computer Vision & Image Processing</h4>
												<h4 class="staff_email"> <br>E-Mail : <br>&nbsp;gaurparul2007@mitsgwalior.in<br> </h4>
												<h4 class="staff_number"> <br>Contact : <br>&nbsp;0751-2409395 </h4>
												<hr class="staff_line">
												<ul class="social_team">
													<li><a href="https://www.linkedin.com/in/parul-saxena-30641b171/  " target="_blank" title="Linkedin"><i class="icon-linkedin"></i></a></li>
													<li><a href="#" title="Twitter"><i class="icon-twitter"></i></a></li>
													<li><a href="https://scholar.google.com/citations?user=0w69RDYAAAAJ&hl=en&authuser=1  " target="_blank" title="Google Scholar"><i
															class="icon-google"></i></a></li>
													<li><a href="https://mail.google.com/mail/u/0/#inbox?compose=CllgCKCGmTpwDcMpvQrxDvQkHTFRbcqxVJZprtKjMflrjmvdqvRqmkcTGXDrbvxMSdtsSPhKQSB"
														title="E-mail" target="_blank"><i class="icon-email"></i></a></li>
												</ul>
											</div>
					</div>
<!-- End row -->
					
												
				</div>
				</fieldset>
    </div>
    </div>
</fieldset>
					



									
						
							
<!--  sixfieldset -->			
					
<fieldset id="six" style="display: none;">	
				<div class="container margin_60">
		<section class="grid">
			<div class="row">
				<ul class="magnific-gallery">
					<li>
						<figure>
							<img src="img/mits_gallery/g1.jpg" alt="">
							<figcaption>
								<div class="caption-content">
									<a href="img/mits_gallery/g1.jpg" title="Photo title"
										data-effect="mfp-move-horizontal"> <i class="pe-7s-albums"></i>
										<p>Your caption</p>
									</a>
								</div>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="img/mits_gallery/g2.jpg" alt="">
							<figcaption>
								<div class="caption-content">
									<a href="img/mits_gallery/g2.jpg" title="Photo title"
										data-effect="mfp-move-horizontal"> <i class="pe-7s-albums"></i>
										<p>Your caption</p>
									</a>
								</div>

							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="img/mits_gallery/g3.jpg" alt="">
							<figcaption>
								<div class="caption-content">
									<a href="img/mits_gallery/g3.jpg" title="Photo title"
										data-effect="mfp-move-horizontal"> <i class="pe-7s-albums"></i>
										<p>Your caption</p>
									</a>
								</div>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="img/mits_gallery/g4.jpg" alt="">
							<figcaption>
								<div class="caption-content">
									<a href="img/mits_gallery/g4.jpg" title="Photo title">
										<i class="pe-7s-albums"></i>
										<p>Your caption</p>
									</a>
								</div>
							</figcaption>
						</figure>
					</li>
				</ul>
			</div>
			<div class="row">
				<ul class="magnific-gallery">
					<li>
						<figure>
							<img src="img/mits_gallery/g5.jpg" alt="">
							<figcaption>
								<div class="caption-content">
									<a href="img/mits_gallery/g5.jpg" title="Photo title">
										<i class="pe-7s-albums"></i>
										<p>Your caption</p>
									</a>
								</div>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="img/mits_gallery/g6.jpg" alt="">
							<figcaption>
								<div class="caption-content">
									<a href="img/mits_gallery/g6.jpg" title="Photo title">
										<i class="pe-7s-albums"></i>
										<p>Your caption</p>
									</a>
								</div>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="img/mits_gallery/g10.jpg" alt="">
							<figcaption>
								<div class="caption-content">
									<a href="img/mits_gallery/g10.jpg" title="Photo title">
										<i class="pe-7s-albums"></i>
										<p>Your caption</p>
									</a>
								</div>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="img/mits_gallery/g8.jpg" alt="">
							<figcaption>
								<div class="caption-content">
									<a href="img/mits_gallery/g8.jpg" title="Photo title">
										<i class="pe-7s-albums"></i>
										<p>Your caption</p>
									</a>
								</div>
							</figcaption>
						</figure>
					</li>
				</ul>
			</div>
		</section>

		<section class="grid">
			<div class="container margin_60">
				<div class="row">
					<ul class="magnific-gallery">
						<li>
							<figure>
								<img src="img/mits_gallery/mits1.png" alt="">
								<figcaption>
									<div class="caption-content">
										<a href="https://www.youtube.com/watch?v=J1A7CnyqPKE"
											class="video_pop" title="Video Youtube"> <i
											class="pe-7s-film"></i>
											<p>Your caption</p>
										</a>
									</div>
								</figcaption>
						</li>

						<li>
							<figure>
								<img src="img/mits_gallery/mits2.png" alt="">
								<figcaption>
									<div class="caption-content">
										<a href="https://www.youtube.com/watch?v=HnxmRAaugQE"
											class="video_pop" title="Video Youtube"> <i
											class="pe-7s-film"></i>
											<p>Your caption</p>
										</a>
									</div>
								</figcaption>
							</figure>
						</li>
						<li>
							<figure>
								<img src="img/mits_gallery/mits3.png" alt="">
								<figcaption>
									<div class="caption-content">
										<a href="https://www.youtube.com/watch?v=z1-GAIqFhpI"
											class="video_pop" title="Video Youtube"> <i
											class="pe-7s-film"></i>
											<p>Your caption</p>
										</a>
									</div>
								</figcaption>
							</figure>
						</li>
					</ul>
				</div>
			</div>
		</section>
	</div>

					</fieldset>	
					 
				
				
				
				

					
				</div>
			</div>
			<!--End row -->
		</div>
		<!--End container -->
	</div>
	<!--End container_gray_bg -->


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
    

    
<!-- Search modal -->   
<div id="search">
    <button type="button" class="close">ï¿½</button>
    <form>
        <input type="search" value="" placeholder="type keyword(s) here" >
        <button type="submit" class="button">Search</button>
    </form>
</div>
<script>
$(document).ready(function(){
    // Add minus icon for collapse element which is open by default
    $(".collapse.show").each(function(){
    	$(this).prev(".card-header").find(".fa").addClass("fa-minus").removeClass("fa-plus");
    });
    
    // Toggle plus minus icon on show hide of collapse element
    $(".collapse").on('show.bs.collapse', function(){
    	$(this).prev(".card-header").find(".fa").removeClass("fa-plus").addClass("fa-minus");
    }).on('hide.bs.collapse', function(){
    	$(this).prev(".card-header").find(".fa").removeClass("fa-minus").addClass("fa-plus");
    });
});


</script>




<script type="text/javascript">
$(document).ready(function(){
   
    $("#user").blur(function(){
        
        var username =$("#user").val();
   
        if(username.length >= 3)
        {
            $.ajax({
                url:"username-check.jsp",
                type:"post",
                data:"uname="+username,
                dataType:"text",
                success:function(data)
                {
                    $("#available").html(data)
                } 
            });
        }
        else
        {
          $("#available").html(" ");
        }
        
   }); 
   
});    

</script>



<!-- Common scripts -->
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/common_scripts_min.js"></script>
<script src="js/functions.js"></script>
<script src="assets/validate.js"></script>
<script type="text/javascript">

$( '#topheader .navbar-nav a' ).on('click',
			function () {
	$( '#topheader .navbar-nav' ).find( 'li.active' )
	.removeClass( 'active' );
	$( this ).parent( 'li' ).addClass( 'active' );
});
</script>
</script>
<!-- Specific scripts -->
<script src="js/icheck.js"></script>
<script>  
$('input').iCheck({
   checkboxClass: 'icheckbox_square-blue',
   radioClass: 'iradio_square-blue'
 });
 </script>
 <script src="js/jquery.validate.js"></script>
 <script>
  $("#apply_online").validate();
</script>
</body>
</html>