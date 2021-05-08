<%@page import="in.common.GetName"%>
<%@page import="in.common.GetConnection"%>
<%@page import="in.common.hashed"%>
<%
	String status = request.getParameter("status");
	if(status != null)
	{
		hashed gethash = new hashed();
		if(status.equals(gethash.getHash("trueCBC")))
		{
			String sid = request.getParameter("sid");
			
			if(sid != null)
			{
				GetName name= new GetName();
				name.getNameData("user", sid);
				session.setAttribute("nameUser", name.getName());
			}
		}
				
	}
			
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
    <!-- SPECIFIC CSS -->
	<link href="layerslider/css/layerslider.css" rel="stylesheet">
    <link href="css/tabs.css" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
    .open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #223038;
  z-index: 9;
  margin: auto;
    margin: 20px -13px 0px 16px;
       height: 88.5%;
    width: 99.8%;
  background-color: #223038;
 opacity: 0.9;
  
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
a.button, .button {
    padding: 10px 30px;
    display: inline-block;
    float: right;
    margin: 277px 343px 36px 24px;
    background-color: #1cafec;
    color: #fff;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    font-family: "proxima_novasemibold", Arial, Helvetica, sans-serif;
    cursor: pointer;
    border: 0;
    font-size: 14px;
    outline: none;
    margin-bottom: 20px;
    -webkit-transition: all 0.2s ease;
    transition: all 0.2s ease;
}
#search {
    position: fixed;
    top: 0px;
    left: 0px;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.8);
}
#search input[type="search"] {
    position: absolute;
    top: 50%;
        width: 40%;
    color: rgb(255, 255, 255);
    background: rgba(0, 0, 0, 0);
    font-size: 35px;
    line-height: 61px;
    border: 0px;
    margin: 0px;
    margin-top: -51px;
    padding-left: 30px;
    padding-right: 30px;
    outline: none;
    background-color: white;
    margin: -51px -14px 16px 245px;
    text-align: center;
}

#search {
    position: fixed;
    top: 0px;
    left: 0px;
    width: 100%;
    height: 100%;
    background-color: silver;
}

    #search .button {
    position: absolute;
    top: 50%;
    left: 50%;
    margin:auto;
    margin-top: -13px;
    margin-left: -85px

}
#search .close {
       position: fixed;
    margin: 98px 34px 6px 888px;
    color: #fff;
	outline:none;
	opacity: 1;
	padding: 10px;
	font-size: 30px;
	display:block;
	    background-color: #223038;
}
    </style>

</head>

<body>

<!--[if lte IE 8]>
    <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
<![endif]-->

<div id="preloader">
	<div class="pulse"></div>
</div><!-- Pulse Preloader -->

    			<%@ include file="itc/header.jsp" %>
	<div class="img">
	<div id="full-slider-wrapper" >
    <div id="layerslider" style="width:100%;height:550px;">
				        <!-- first slide -->
				        <div class="ls-slide" data-ls="slidedelay: 5000; transition2d:5;">
				            <img src="img/changes/d.jpg" class="ls-bg" alt="Slide background">
				        	<h3 class="ls-l slide_typo" style="top: 45%; left: 50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;" ><strong >Discover  Your  Carrer</strong></h3>
				            <p class="ls-l slide_typo_2" style="top:52%; left:50%; font" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;" ><strong >COLLEGE / UNIVERSITY</strong>  </p>
				            <p class="ls-l" style="top:62%; left:50%;" data-ls="durationin:2000;delayin:1300;easingin:easeOutElastic;" ><a href="tour.html" class="button_intro">Take a tour</a> <a href="about.html" class="button_intro outline">About us</a></p>
				       </div>
        <div class="ls-slide" data-ls="slidedelay:5000; transition2d:5;" >
             <img src="img/changes/f.jpg" class="ls-bg" alt="Slide background">
        	<h3 class="ls-l slide_typo" style="top: 45%; left: 50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;" ><strong>Great</strong> Students  Community</h3>
            <p class="ls-l slide_typo_2" style="top:52%; left:50%;" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;" >COLLEGE / UNIVERSITY</p>
            <p class="ls-l" style="top:65%; left:50%;" data-ls="durationin:2000;delayin:1300;easingin:easeOutElastic;" ><a href="tour.html" class="button_intro">Take a tour</a> <a href="about.html" class="button_intro outline">About us</a></p>
    </div>
        <!-- second slide -->
				    <div class="ls-slide" data-ls="slidedelay: 5000; transition2d:5;">
				            <img  src="img/changes/e.jpg" class="ls-bg" alt="Slide background">
				        	<h3 class="ls-l slide_typo" style="top: 45%; left: 50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;" > <strong >Qualified</strong> Teachers</h3>
				            <p class="ls-l slide_typo_2" style="top:52%; left:50%;" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;" >COLLEGE / UNIVERSITY </p>
				            <p class="ls-l" style="top:65%; left:50%;" data-ls="durationin:2000;delayin:1300;easingin:easeOutElastic;" ><a href="tour.html" class="button_intro">Take a tour</a> <a href="about.html" class="button_intro outline">About us</a></p>
				    </div>
				     <!-- third slide -->
    </div>
    </div><!-- End layerslider -->
    <div>
    <div class="container_gray_bg" id="home_feat_1">
    <div class="container">
    	<div class="row">
        	<div class="col-md-4 col-sm-4">
            	 <div class="home_feat_1_box">
                        <a href="visit-us.jsp">
                        <img src="img/changes/c.jpg" class="img-responsive" alt="">
                        <div class="short_info"><h3>Plan a visit</h3><i class="arrow_carrot-right_alt2"></i></div>
                        </a>
                    </div>
            </div>
            <div class="col-md-4 col-sm-4">
           <div class="home_feat_1_box">
                        <a href="">
                        <img src="img/changes/a.jpg" class="img-responsive" alt="" >
                        <div class="short_info"><h3>Study Programs</h3><i class="arrow_carrot-right_alt2"></i></div>
                        </a>
                    </div>
            </div>
            <div class="col-md-4 col-sm-4">
           <div class="home_feat_1_box">
                        <a href="register.jsp">
                        <img src="img/changes/b.jpg" class="img-responsive" alt="" height="200px">
                        <div class="short_info"><h3>Admissions</h3><i class="arrow_carrot-right_alt2"></i></div>
                        </a>
                    </div>
            </div>
        </div><!-- End row -->
    </div><!-- End container -->
    </div><!-- End container_gray_bg -->
    
    <div class="container margin_60">
    <div class="main_title">
    <h2>Latest from Education Assembly</h2>
    <p>Reset your research strategy by browsing through our lists of top colleges, courses and careers based on your area of interest.</p>
    </div>
    <div id="tabs" class="tabs">
				<nav>
					<ul>
						<li><a href="#section-1" class="icon-courses"><span>Courses</span></a></li>
						<li><a href="#section-2" class="icon-news"><span>News</span></a></li>
						<li><a href="#section-3" class="icon-events"><span>Events</span></a></li>
					</ul>
				</nav>
				<div class="content">
					<section id="section-1">
						<div class="row list_courses_tabs">
                        	<div class="col-md-4 col-sm-4">
                            <h2>Diploma Courses</h2>
							<ul>
                            	<li><div><a href="#"><figure><img src="img/d1.jpg" alt="" class="img-rounded"></figure>
                           	    <h3><strong>Mathemacis  diploma</strong></h3><small></small></a></div>
                                </li>
                                <li>
                                <div><a href="#"><figure><img src="img/d2.jpg" alt="" class="img-rounded"></figure>
                           	    <h3><strong>Sciences     diploma </strong> </h3><small></small></a></div>
                                </li>
                                <li>
                                <div><a href="#"><figure><img src="img/d3.jpg" alt="" class="img-rounded"></figure>
                           	    <h3><strong>Litterature   diploma</strong> </h3><small></small></a></div>
                                </li>
                                <li>
                                <div><a href="#"><figure><img src="img/d4.jpg" alt="" class="img-rounded"></figure>
                           	    <h3><strong>Arts           diploma   </strong></h3><small></small></a></div>
                                </li>
                                <li>
                                <div><a href="#"><figure><img src="img/d5.png" alt="" class="img-rounded"></figure>
                           	    <h3><strong>Music  diploma</strong></h3><small></small></a></div>
                                </li>
                                  <li>
                                <div><a href="diploma.jsp" class="link_normal">View all Diploma courses</a></div>
                                </li>
                            </ul>
                            </div>
                            <div class="col-md-4 col-sm-4">
                             <h2>Graduate Courses</h2>
							<ul>
                            	<li>
                                <div><a href="#"><figure><img src="img/g1.jpg" alt="" class="img-rounded"></figure>
                           	    <h3><strong>Engineering graduate</strong> </h3><small></small></a></div>
                                </li>
                                <li>
                                <div><a href="#"><figure><img src="img/g2.png" alt="" class="img-rounded"></figure>
                           	    <h3><strong>Biology  graduate</strong></h3><small></small></a></div>
                                </li>
                                <li>
                                <div><a href="#"><figure><img src="img/g3.jpg" alt="" class="img-rounded"></figure>
                           	    <h3><strong>Psychology  graduate</strong></h3><small></small></a></div>
                                </li>
                                <li>
                                <div><a href="#"><figure><img src="img/g4.jpg" alt="" class="img-rounded"></figure>
                           	    <h3><strong>Economy  graduate</strong></h3><small></small></a></div>
                                </li>
                                <li>
                                <div><a href="#"><figure><img src="img/g5.png" alt="" class="img-rounded"></figure>
                           	    <h3><strong>Architecture  graduate</strong></h3><small></small></a></div>
                                </li>
                                 <li>
                                <div><a href="graduate.jsp" class="link_normal">View all Graduate courses</a></div>
                                </li>
                            </ul>
                            </div>
                            <div class="col-md-4 col-sm-4">
                             <h2>Master Courses</h2>
							<ul>
                            	<li><div><a href="#"><figure><img src="img/m.jpg" alt="" class="img-rounded"></figure>
                           	    <h3><strong>Master of Computer Applications (MCA)</strong></h3><small></small></a></div>
                                </li>
                                <li><div><a href="#"><figure><img src="img/q.jpg" alt="" class="img-rounded"></figure>
                           	    <h3><strong>Master of Business Administration (MBA)</strong></h3><small></small></a></div>
                                </li>
                                <li>
                                <div><a href="#"><figure><img src="img/s.jpg" alt="" class="img-rounded"></figure>
                           	    <h3><strong>Master of Science (MS, MSc)</strong> </h3><small></small></a></div>
                                </li>
                                <li>
                                <div><a href="master.jsp" class="link_normal">View all Master courses</a></div>
                                </li>
                            </ul>
                            </div>
                        </div>
					</section>
					<section id="section-2">
						<div class="row list_news_tabs">
                        	<div class="col-md-4 col-sm-4">
                            <p><a href="#0"><img src="img/news_1_thumb.jpg" alt="" class="img-responsive"></a></p>
                                  <span class="date_published">20 Agusut 2015</span>
<h3><a href="#0">Success Stories for Atena College in 2015's </a></h3>
                            <p>Lorem ipsum dolor sit amet, ei tincidunt persequeris efficiantur vel, usu animal patrioque omittantur et. Timeam nostrud platonem nec ea, simul nihil delectus has ex. </p>
                            <a href="#0" class="button small">Read more</a>
                            </div>
                            <div class="col-md-4 col-sm-4">
                            <p><a href="#0"><img src="img/news_2_thumb.jpg" alt="" class="img-responsive"></a></p>
                                  <span class="date_published">20 Agusut 2015</span>
<h3><a href="#0">Boost in A-Level Grades in 2015 for Students</a></h3>
                            <p>Lorem ipsum dolor sit amet, ei tincidunt persequeris efficiantur vel, usu animal patrioque omittantur et. Timeam nostrud platonem nec ea, simul nihil delectus has ex. </p>
                            <a href="#0" class="button small">Read more</a>
                            </div>
                            <div class="col-md-4 col-sm-4">
                            <p><a href="#0"><img src="img/news_3_thumb.jpg" alt="" class="img-responsive"></a></p>
                                  <span class="date_published">20 Agusut 2015</span>
<h3><a href="#0">Caps Off To Sport at Atena</a></h3>
                            <p>Lorem ipsum dolor sit amet, ei tincidunt persequeris efficiantur vel, usu animal patrioque omittantur et. Timeam nostrud platonem nec ea, simul nihil delectus has ex. </p>
                            <a href="#0" class="button small">Read more</a>
                            </div>
                        </div><!--End row -->
					</section>
					<section id="section-3">
					<div class="row list_news_tabs">
                        	<div class="col-md-4 col-sm-4">
                            <p><a href="#0"><img src="img/event_1_thumb.jpg" alt="" class="img-responsive"></a></p>
                                  <span class="date_published">20 Agusut 2015</span>
<h3><a href="#0">Next students meeting</a></h3>
                            <p>Lorem ipsum dolor sit amet, ei tincidunt persequeris efficiantur vel, usu animal patrioque omittantur et. Timeam nostrud platonem nec ea, simul nihil delectus has ex. </p>
                            <a href="#0" class="button small">Read more</a>
                            </div>
                            <div class="col-md-4 col-sm-4">
                            <p><a href="#0"><img src="img/event_2_thumb.jpg" alt="" class="img-responsive"></a></p>
                                  <span class="date_published">20 Agusut 2015</span>
<h3><a href="#0">10 October Open day</a></h3>
                            <p>Lorem ipsum dolor sit amet, ei tincidunt persequeris efficiantur vel, usu animal patrioque omittantur et. Timeam nostrud platonem nec ea, simul nihil delectus has ex. </p>
                            <a href="#0" class="button small">Read more</a>
                            </div>
                            <div class="col-md-4 col-sm-4">
                            <p><a href="#0"><img src="img/event_3_thumb.jpg" alt="" class="img-responsive"></a></p>
                                  <span class="date_published">20 Agusut 2015</span>
<h3><a href="#0">Photography workshop</a></h3>
                            <p>Lorem ipsum dolor sit amet, ei tincidunt persequeris efficiantur vel, usu animal patrioque omittantur et. Timeam nostrud platonem nec ea, simul nihil delectus has ex. </p>
                            <a href="#0" class="button small">Read more</a>
                            </div>
                        </div><!--End row -->
					</section>
					
				</div><!-- /content -->
			</div><!-- End tabs -->
            </div><!-- End container -->
    
    <div class="container_gray_bg">
    <div class="container margin_60">
    <div class="main_title">
    <h2>Atena core feautures</h2>
    <p>Cum doctus civibus efficiantur in imperdiet deterruisset.</p>
    </div>
    	<div class="row">
        	<div class="col-md-6 col-sm-6">
            	<div class="box_feat_home">
                	<i class=" iconcustom-certificate"></i>
                	<h3>Quality Certifications</h3>
                    <p>Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.</p>
                </div>
            </div>
            <div class="col-md-6 col-sm-6">
            	<div class="box_feat_home">
                	<i class=" iconcustom-innovation"></i>
                	<h3>Learning Best Practice</h3>
                    <p>Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.</p>
                </div>
            </div>
        </div><!-- End row -->
        <div class="row">
        	<div class="col-md-6 col-sm-6">
            	<div class="box_feat_home">
                	<i class=" iconcustom-education_online"></i>
                	<h3>Online Resources</h3>
                    <p>Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.</p>
                </div>
            </div>
            <div class="col-md-6 col-sm-6">
            	<div class="box_feat_home">
                	<i class=" iconcustom-know_how"></i>
                	<h3>Study Plan Tutors</h3>
                    <p>Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.</p>
                </div>
            </div>
        </div><!-- End row -->
        <div class="row">
        	<div class="col-md-6 col-sm-6">
            	<div class="box_feat_home">
                	<i class=" iconcustom-science"></i>
                	<h3>Advanced Practice</h3>
                    <p>Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.</p>
                </div>
            </div>
            <div class="col-md-6 col-sm-6">
            	<div class="box_feat_home">
                	<i class=" iconcustom-test"></i>
                	<h3>Research</h3>
                    <p>Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu.</p>
                </div>
            </div>
        </div><!-- End row -->
        </div>
        </div>
        
        <div class="container margin_60">
        <div class="row">
            <div class="main_title">
            <h2>Student  focus on these ....</h2>
            <p>All you can do is try your best.</p>
            </div>
        	<div class="col-md-6 col-md-offset-3">
            <div id="graph">
            <img src="img/graphic.jpg" class="wow zoomIn" data-wow-delay="0.1s" alt="">
            	<div class="features step_1 wow flipInX" data-wow-delay="1s">
            	<h4><strong>01.</strong> Students growth</h4><p>Student growth has become an important way to measure academic achievement. While proficiency proves that students have met a specific educational standard by a certain point in time, growth indicates improvement and learning over time.</p>
                </div>
                <div class="features step_2 wow flipInX" data-wow-delay="1s">
                <h4><strong>02.</strong> Best learning practice</h4><p>Ditch Your Learning Style. Are you a visual learner? <br>
																														Make It More Meaningful for Yourself. <br>
																														Learn by Doing.<br>
																														Study the Greats, and Then Practice.<br>
																														Teach What You Learn.<br>
																														Spend More Time Practicing Things You Find Difficult.<br>
																														Take Frequent Breaks.<br>
																														Test Yourself.</p>
                </div>
                <div class="features step_3 wow flipInX" data-wow-delay="1s">
                <h4><strong>03.</strong> Focus on targets</h4><p>Stay focused, go after your dreams and keep moving toward your goals .</p>
                </div>
                <div class="features step_4 wow flipInX" data-wow-delay="1s">
                <h4><strong>04.</strong> Interdisciplanary model</h4><p>Interdisciplinary teaching involves exploring content or solving a problem by integrating more than one academic subject. It is a holistic approach to education and requires the close collaboration of multiple teachers to create an more integrated, enhanced learning experience for students across multiple classes.</p>
                </div>
                </div>
                </div>
            </div><!-- End row -->
    </div><!-- End container -->
    
     <div class="bg_content testimonials">
              <div class="row">
                <div class="col-md-offset-1 col-md-10">
                    <div class="carousel slide" data-ride="carousel" id="quote-carousel">
                        <!-- Bottom Carousel Indicators -->
                        <!-- <ol class="carousel-indicators">
                            <li data-target="#quote-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#quote-carousel" data-slide-to="1"></li>
                            <li data-target="#quote-carousel" data-slide-to="2"></li>
                        </ol>Carousel Slides / Quotes -->
                        <div class="carousel-inner">
                            <!-- Quote 1 -->
                            <div class="item active">
                                <blockquote>
                                    <p>
<!--                                          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut rutrum elit in arcu blandit, eget pretium nisl accumsan. Sed ultricies commodo tortor, eu pretium mauris. -->
                                    </p>
                                </blockquote>
<!--                                <small><img class="img-circle" src="img/testimonial_1.jpg" alt="">Stefany</small> -->
                            </div>
                            <!-- Quote 2 -->
                            <div class="item">
                                <blockquote>
                                    <p>
<!--                                          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut rutrum elit in arcu blandit, eget pretium nisl accumsan. Sed ultricies commodo tortor, eu pretium mauris. -->
                                    </p>
                                </blockquote>
<!--                                  <small><img class="img-circle" src="img/testimonial_2.jpg" alt="">Karla</small> -->
                            </div>
                            <!-- Quote 3 -->
                            <div class="item">
                                <blockquote>
                                    <p>
<!--                                          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut rutrum elit in arcu blandit, eget pretium nisl accumsan. Sed ultricies commodo tortor, eu pretium mauris. -->
                                    </p>
                                </blockquote>
<!--                                 <small><img class="img-circle" src="img/testimonial_1.jpg" alt="">Maira</small> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- End row -->
        </div><!-- End bg_content -->
 
        
	<div>
	<%@ include file="itc/footer.jsp" %>   
    </div>
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
    
<!-- <!-- Register modal 
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
     -->
<!-- Search modal -->   
<div id="search">
    <button type="button" class="close">×</button>
    <form>
        <input type="search" value="" placeholder="type keyword(s) here" >
        <button type="submit" class="button">Search</button>
    </form>
</div>
    
    <div id="search">
    <button type="button" class="close">×</button>
    <form>
        <input type="search" value="" placeholder="type keyword(s) here" >
        <button type="submit" class="button">Search</button>
    </form>
</div>
    <script type="text/javascript">
    function openForm() {
      document.getElementById("myForm").style.display = "block";
    }

    function closeForm() {
      document.getElementById("myForm").style.display = "none";
    }
    </script>
    
    
    
<!-- Common scripts -->
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/common_scripts_min.js"></script>
<script src="js/functions.js"></script>

<!-- LayerSlider script files -->
<script src="layerslider/js/greensock.js"></script>
 <script src="layerslider/js/layerslider.transitions.js"></script>
<script src="layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
<script type="text/javascript">
    // Running the code when the document is ready
    $(document).ready(function(){
		'use strict';
        // Calling LayerSlider on the target element with adding custom slider options
        $('#layerslider').layerSlider({
            autoStart: true,
			responsive: true,
			responsiveUnder: 1280,
			layersContainer: 1170,
            skinsPath: 'layerslider/skins/'
            // Please make sure that you didn't forget to add a comma to the line endings
            // except the last line!
        });
    });
</script>
<!-- Newsletter validate -->
<script src="js/test.js"></script> <!-- Resource jQuery -->
<script src="assets/validate.js"></script>
<script src="js/tabs.js"></script>
		<script>
			new CBPFWTabs( document.getElementById( 'tabs' ) );
		</script>
</body>
</html>