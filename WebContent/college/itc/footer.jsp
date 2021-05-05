<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- BASE CSS -->
    <link href="css/base.css" rel="stylesheet">

</head>
<body>
		<footer>
        <div class="container">
            <div class="row ">
                <div class="col-md-3 col-sm-3">
                    <p id="logo_footer">
                        <img src="img/logo2.png" width="625" height="190" alt="Education Assemnly" data-retina="true">
                    </p>
                </div>
                <div class="col-md-3 col-sm-3">
                    <h4>About</h4>
                    <ul>
                        <li><a href="#">About us</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Login</a></li>
                        <li><a href="#">Register</a></li>
                        <li><a href="#">Terms and condition</a></li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-3">
                    <h4>Academic</h4>
                    <ul>
                        <li><a href="#">Plans of study</a></li>
                        <li><a href="#">Courses</a></li>
                        <li><a href="#">Admissions</a></li>
                        <li><a href="#">Staff</a></li>
                        <li><a href="#">Students</a></li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-3">
                    <h4>Contact us</h4>
                    <ul>
                        <li><a href="#">Contacts</a></li>
                        <li><a href="#">Plan a visit</a></li>
                    </ul>
                    <ul id="contacts_footer">
                        <li>Info line - <a href="tel://033284322">+000-1234567</a></li>
                        <li>Email - <a href="#">info@educationassembly.com</a> / <a href="#">office@educationassembly.com</a></li>
                    </ul>
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
        </footer><!-- End footer -->
        <div id="copy">
            
        </div><!-- End copy -->    
    
<!-- Login modal -->   
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myLogin" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
 				
 				
 				
 				
				
				
				
				
				<form action="../collegelogin" class="popup-form" id="myLogin" method="post">
					<input type="text" name="user" id="user"  class="form-control form-white" placeholder="Username">
					<input type="text" name="pass" id="pass" class="form-control form-white" placeholder="Password">
					<span style="color:red" id="cfaxerr"></span>
                    <span style="color:red" id="error"></span>
                     
					
					<div class="checkbox-holder text-left">
						<div class="checkbox">
							<input type="checkbox" value="accept_1" id="check_1" name="check_1" />
							<label for="check_1"><span>I Agree to the <strong>Terms &amp; Conditions</strong></span></label>
						</div>
					</div>
					<label name="forget" id="forget"><a href="#" data-toggle="modal" data-target="#register">forget password</a> </label>
					<button type="submit" class="btn btn-submit" id="button">Submit</button>
				</form>
			</div>
		</div>
	</div>  
    
<!-- Register modal -->   
<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myRegister" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<form action="#" class="popup-form" id="forgetpassword">
					<input type="text" class="form-control form-white" placeholder="Name">
					<input type="text" class="form-control form-white" placeholder="username">
                    <input type="email" class="form-control form-white" placeholder="Email">
<!--                     <input type="text" class="form-control form-white" placeholder=""> -->
					<div class="checkbox-holder text-left">
						<div class="checkbox">
							<input type="checkbox" value="accept_2" id="check_2" name="check_2" />
							<label for="check_2"><span>I Agree to the <strong>Terms &amp; Conditions</strong></span></label>
						</div>
					</div>
					<button type="submit" class="btn btn-submit">`forget password</button>
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
<script src="js/validate.js"></script>

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