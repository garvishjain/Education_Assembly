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
    
    <!-- SPECIFIC CSS -->
    <link href="css/skins/square/blue.css" rel="stylesheet">
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->

    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
     
<style type="text/css">
		.staff .box_style_1 {
    text-align: center;
    cursor: auto;
    width: 100%;
}
/*  .college_detail_fill{width: 300px;
    height: 180px;} */
/*.field_fill{margin:8px 0px 0px 22px;float: left;} */
.u_name{font-size: 16px;
    font-weight: bold;}
</style>

</head>

<body>

	<div id="preloader">
		<div class="pulse"></div>
	</div>
	<!-- Pulse Preloader -->

	<!--Header File-->	
	 <%@ include file="itc/header.jsp" %>
		<!--Header File-->

	 

       
        <div class="sub_header bg_1">
        	<div id="intro_txt">
			<h1>College Detail</h1>
            </div>
		</div> <!--End sub_header -->
		<!-- 
				Select university.pk_id,u_registration,u_name,address,email,establish_year,state.state_name,
				city.city_name,category.category,type.type,university_contact.contact_number from university 
				INNER JOIN country ON country.pk_id=university.fk_country
				INNER JOIN state ON state.pk_id=university.fk_state
				INNER JOIN city ON city.pk_id=university.fk_city
				INNER JOIN category ON category.pk_id=university.fk_category
				INNER JOIN type ON type.pk_id=university.fk_type
				INNER JOIN university_contact ON university_contact.pk_id=university.fk_contact_number 
		-->

	<div class="container_gray_bg">
		<div id="position"></div>
		   <div class="container margin_60">
			  <div class="row">
			   
				  <div class="row staff">
				  <%
			try{
				String sql="Select  * from university\n" + 
						"INNER JOIN country ON country.pk_id=university.fk_country\n" + 
						"INNER JOIN state ON state.pk_id=university.fk_state\n" + 
						"INNER JOIN city ON city.pk_id=university.fk_city\n" + 
						"INNER JOIN category ON category.pk_id=university.fk_category\n" + 
						"INNER JOIN type ON type.pk_id=university.fk_type\n" + 
						"INNER JOIN university_contact ON university_contact.pk_id=university.fk_contact_number ";
				ResultSet rs=stmt.executeQuery(sql);
				while (rs.next()) {
					%>
								<div class="col-md-4">
								
					            	<div class="box_style_1">
					                			<p><img src="img/college/c_1.png" alt="" ></p>
					                                <p class="u_name"><%=rs.getString("u_name").toUpperCase()%></p>
					                                
					                                <div class="college_detail_fill">
					                                <h5>Establish Year - <%=rs.getString("establish_year").toUpperCase()%></h5>
					                                <h5>Reg. No. - <%=rs.getString("u_registration").toUpperCase()%></h5>
					                                 <h5 class="field_fill">Category - <%=rs.getString("category").toUpperCase()%></h5>
					                                 <h5 class="field_fill">Type - <%=rs.getString("type").toUpperCase() %></h5>
					                                 <h5 class="field_fill">Email - <%=rs.getString("email").toUpperCase() %></h5>
					                                 <h5 class="field_fill">Address - <%=rs.getString("address")%> , <%=rs.getString("city_name")%> , <%=rs.getString("state_name")%></h5>
					                                 <h5 class="field_fill">Contact No - <%=rs.getString("contact_number").toUpperCase() %></h5>
					                                 <h5 class="field_fill">Admission Date - <%=rs.getString("addm_start_date")%> TO <%=rs.getString("addm_end_date")%></h5>
					                                <%--   <h5 class="field_fill">Courses - <%=rs.getString("course")%></h5> --%>
					                                 </div>
					                                <ul class="social_team">
					                                    <li><a href="https://www.facebook.com/Madhav-Institute-of-Technology-Science-Gwalior-MP-India-102055234637800/?modal=admin_todo_tour"><i class="icon-facebook"></i></a></li>
					                                    <li><a href="https://twitter.com/MITS_Gwalior"><i class="icon-twitter"></i></a></li>
					                                    <li><a href="https://mitsgwalior.in/index.php"><i class="icon-google"></i></a></li>
					                                    <li><a href="#"><i class="icon-email"></i></a></li>
													</ul> <hr>
					                             <a href="college_detail.jsp" class="button_outline">Profile</a>           
									</div>
									
				     			</div>
				     			<%
				}
				}
		catch (Exception e) {
			e.printStackTrace();
					}
					%>
					  </div>
					   
							<!-- <div class="col-md-4">
            	<div class="box_style_1">
                	<p><img src="img/college/c_2.jpg" width="130px" height="130px;" alt="" ></p>
                                <h4 style="font-size: 20px;">Prestige Institute Of Management Gwalior </h4>
             					<p>Prestige Institute of Management, [PIMG] Gwalior was established in 1997 by Prestige Education Society, Indore. This institute has now become a premier institute of higher learning. This institute has a strong mentorship system which helps all the students go through the transformational process from a fresh graduate to be a confident and competent business professional.</p>
                               
                                <ul class="social_team">
                                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                                    <li><a href="#"><i class="icon-google"></i></a></li>
                                    <li><a href="#"><i class="icon-email"></i></a></li>
							</ul>    
                            <hr>
                             <a href="teacher_profile.html" class="button_outline">Profile</a>           
                </div>
            </div> -->
            
           <!--  <div class="col-md-4">
            	<div class="box_style_1">
                	<p><img src="img/college/c_3.png" width="130px" height="130px;" alt="" ></p>
                                 <h4 style="font-size: 20px;">ITM University, Gwalior</h4>
             					<p>ITM University, Gwalior is ranked 79th overall by Outlook 2020. ITM University has 13 institutions providing education in various disciplines. The university offers various degree, diploma and research courses in the stream of Engineering, Science, Agriculture, Law, Design and many more..</p>
                                <ul class="social_team">
                                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                                    <li><a href="#"><i class="icon-google"></i></a></li>
                                    <li><a href="#"><i class="icon-email"></i></a></li>
							</ul>    
                            <hr>
                             <a href="teacher_profile.html" class="button_outline">Profile</a>           
                </div>
            </div> -->
      <!--End row -->
       <%--  <div class="row staff">
			<div class="col-md-4">
            	<div class="box_style_1">
                	<p><img src="img/teacher_1_small.jpg" alt="" class="img-circle styled"></p>
                                <h4>Patricia Doe <small>Biologist</small></h4>
             					<p> When an unknown printer took a galley of type and <strong>scrambled it to make</strong> a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                                <ul class="social_team">
                                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                                    <li><a href="#"><i class="icon-google"></i></a></li>
                                    <li><a href="#"><i class="icon-email"></i></a></li>
							</ul>    
                            <hr>
                             <a href="teacher_profile.html" class="button_outline">Profile</a>           
                </div>
            </div>
            
            <div class="col-md-4">
            	<div class="box_style_1">
                	<p><img src="img/teacher_2_small.jpg" alt="" class="img-circle styled"></p>
                                <h4>Megan Fox <small>Engineer</small></h4>
             					<p> When an unknown printer took a galley of type and <strong>scrambled it to make</strong> a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                                <ul class="social_team">
                                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                                    <li><a href="#"><i class="icon-google"></i></a></li>
                                    <li><a href="#"><i class="icon-email"></i></a></li>
							</ul>    
                            <hr>
                             <a href="teacher_profile.html" class="button_outline">Profile</a>           
                </div>
            </div>
              
            <div class="col-md-4">
            	<div class="box_style_1">
                	<p><img src="img/teacher_3_small.jpg" alt="" class="img-circle styled"></p>
                                 <h4>Silvia Doe <small>Biologist</small></h4>
										<p><% String s=(String)rs.getString("course");
										
										%> </p>
                                <ul class="social_team">
                                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                                    <li><a href="#"><i class="icon-google"></i></a></li>
                                    <li><a href="#"><i class="icon-email"></i></a></li>
							</ul>    
                            <hr>
                             <a href="teacher_profile.html" class="button_outline">Profile</a>           
                </div>
            </div>
             
        </div><!--End row --> --%>
				
				
		<!--End container -->
	</div>
	 
	<!--End container_gray_bg -->
</div>

</div>

<div>
	<!--Footer File-->	 
	<%@ include file="itc/footer.jsp" %>
		<!--Footer File-->
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