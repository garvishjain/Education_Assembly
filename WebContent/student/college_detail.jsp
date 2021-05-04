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
    <title>College, University and campus template</title>

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
    <!-- File Import -->
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp" %> 

<%
GetConnection getConObj=new GetConnection();
Connection con=getConObj.getCon();
Statement stmt=con.createStatement();
%>
<style type="text/css">
p {
	display: inline;
	size: 120px;
	text-align: center;
	font-size: 16px;
	padding: 1px 2px;
}

label {
	font-size: 18px;
}
</style>
<!-- nav bar css start -->
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  margin-left:18px;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 18px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #ffa31a;
  color: white;
}
</style>
<!-- nav bar css end -->


<script type="text/javascript">
	function myFunction() {
		var x = document.getElementById("pass");
		if (x.type === "password") {
			x.type = "text";
		} else {
			x.type = "password";
		}
	}
</script>
<script type="text/javascript">
function validate() { 
  
    var pass = document.getElementById("pass").value;
    var cpass = document.getElementById("cpass").value;
    if (pass== "") { 
    	document.getElementById("passerr").innerHTML=""; 
        return false; 
    } 
    else
	{
	document.getElementById("passerr").innerHTML="";
	}
    if (cpass== "") 
        { 
        	document.getElementById("cpasserr").innerHTML="";          
        } 
	    else
		{
		document.getElementById("cpasserr").innerHTML="";
		}
    if (cpass!=pass) 
    { 
    	document.getElementById("cpasserr").innerHTML="Password does not match"; 
        return false;   
    } 
    else
	{
	document.getElementById("cpaserr").innerHTML="Password Match";
	}
    return true; 
} 

</script>
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
			<h1><b>MADHAV INSTITUTE OF TECHNOLOGY AND SCIENCE - [MITS], GWALIOR</b></h1>
            </div>
		</div> <!--End sub_header -->
		
			<!-- nav bar start -->
			<div class="topnav">
			  <a class="active" href="#home">Home</a>
			  <a href="#news">News</a>
			  <a href="#contact">Contact</a>
			  <a href="#about">About</a>
			</div>
			<!-- nav bar end -->

	<div class="container_gray_bg">
		<div id="position"></div>
		<!-- Position -->
		<div class="container margin_60">
			<div class="row">
				<div class="row staff">
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
    <button type="button" class="close">×</button>
    <form>
        <input type="search" value="" placeholder="type keyword(s) here" >
        <button type="submit" class="button">Search</button>
    </form>
</div>





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