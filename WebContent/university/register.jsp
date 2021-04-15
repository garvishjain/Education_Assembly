<!doctype html>
<%-- <%@page import="in.University.RegisterAdmin"%> --%>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="icon" href="favicon.ico" type="image/x-icon"/>

<title>:: Epic :: Register</title>

<!-- Bootstrap Core and vandor -->
<link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css" />

<!-- Core css -->
<link rel="stylesheet" href="../assets/css/style.min.css"/>
<link rel="stylesheet" href="assets/css/default.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style type="text/css">
/* The message box is shown when the user clicks on the password field */
#message {
  display:none;
  background: #f1f1f1;
  color: #000;
  position: relative;
  padding: 0px;
  margin-top: 0px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}
/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
}
.invalid:before {
  position: relative;
  
}
</style>

<script type="text/javascript"> 
    function validate() { 
        var fname = document.getElementById("fname").value; 
        var lname = document.getElementById("lname").value; 
        var uname = document.getElementById("uname").value;
        var email = document.getElementById("email").value; 
        var num = document.getElementById("num").value; 
        var pass = document.getElementById("pass").value;
        var cpass = document.getElementById("cpass").value;
        
  var phone = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/; 
       
         
  
        if (fname== "") { 
        	document.getElementById("fnameerr").innerHTML="Please Enter First Name"; 
        	return false; 
        } 
        else
        	{
        	document.getElementById("fnameerr").innerHTML="";
        	}
  
        if (lname== "") { 
        	document.getElementById("lnameerr").innerHTML="Please Enter Last Name";
            return false; 
        } 
        else
    	{
    	document.getElementById("lnameerr").innerHTML="";
    	}
        if (uname== "") { 
        	document.getElementById("unameerr").innerHTML="Please Enter UserName"; 
            return false; 
        } 
        else
    	{
    	document.getElementById("unameerr").innerHTML="";
    	}
  
        if (email=="") { 
        	document.getElementById("emailerr").innerHTML="Please Enter Email Address"; 
            return false; 
        } 
        else
    	{
    	document.getElementById("emailerr").innerHTML="";
    	}
  
        if (num== "") { 
        	document.getElementById("numerr").innerHTML="Please Enter Number"; 
            return false; 
        } 
        else
    	{
    	document.getElementById("numerr").innerHTML="";
    	}
  		
        
        if (pass== "") { 
        	document.getElementById("passerr").innerHTML="Please Enter Password"; 
            return false; 
        } 
        else
    	{
    	document.getElementById("passerr").innerHTML="";
    	}
        if (cpass== "") 
	        { 
	        	document.getElementById("cpasserr").innerHTML="Please Re-Enter Password";          
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
    
    
    
    
    
    
    
    /*  */
   
   


/*  */
 function myFunction() {
	  var x = document.getElementById("pass");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
</script> 

</head>
<body class="font-muli theme-cyan gradient">

<div class="auth option2">
    <div class="auth_left">
        <div class="card">
            <div class="card-body">
                <div class="text-center">
                 <h4 style="color:red;"><%
                	String status=(String)request.getAttribute("status");
                	if(status !=null)
                	{
                		out.println(status);
                	}
                %></h4>
                    <a class="header-brand" href="register.jsp"><i class="fa fa-graduation-cap brand-logo"></i></a>
                    <div class="card-title">Create new account</div>
                    <button type="button" class="btn btn-facebook"><i class="fa fa-facebook mr-2"></i>Facebook</button>
                    <button type="button" class="btn btn-google"><i class="fa fa-google mr-2"></i>Google</button>
                    <h6 class="mt-3 mb-3">Or</h6>
                </div>
                <form action="../Register" onsubmit="return validate()" method="Post">
                <div class="form-group">
                    <label class="form-label">First Name</label>
                    <input type="text" name="fname" class="form-control" placeholder="Enter First Name"
                    id="fname" minlength="3" maxlength="15" >
               		<span style="color:red" id="fnameerr"></span>
               		 <label class="form-label">Last Name</label>
                    <input type="text" name="lname" class="form-control" placeholder="Enter Last Name"
                   	id="lname" minlength="3" maxlength="15" >
                   	<span style="color:red" id="lnameerr"></span>
                </div>
                 <div class="form-group">
                    <label class="form-label">UserName</label>
                    <input type="text" name="uname" class="form-control" placeholder="Enter UserName"
                    id="uname" minlength="3" maxlength="15" >
                    <span style="color:red" id="unameerr"></span>
                </div>
                <div class="form-group">
                    <label class="form-label">Email address</label>
                    <input type="email" name="email" class="form-control" placeholder="Enter email"
                    id="email" >
                    <span style="color:red" id="emailerr"></span>
                </div>
                <!-- <div class="form-group">
                    <label class="form-label">Mobile Number</label>
                    <input type="text" name="num" class="form-control" placeholder="Enter Number"
                    id="num" minlength="10" maxlength="10" required
            oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                    <span style="color:red" id="numerr"></span>
                </div> -->
                <div class="form-group">
                    <label class="form-label">Password</label>
                    <input type="password" name="pass" class="form-control" placeholder="Enter Password"
                    id="pass" minlength="8" maxlength="20" >&nbsp;
                    <input type="checkbox" onclick="myFunction()">&nbsp;Show Password
   <div id="message">
  <p id="letter" class="invalid">A <strong>lowercase</strong> letter</p>
  <p id="capital" class="invalid">A <strong>capital (uppercase)</strong> letter</p>
  <p id="number" class="invalid">A <strong>number</strong></p>
</div>

                    <span style="color:red" id="passerr"></span>
                </div>
                <div class="form-group">
                    <label class="form-label">Confirm Password</label>
                    <input type="password" name="cpass" class="form-control" placeholder="Enter Confirm Password"
                    id="cpass" minlength="8" maxlength="20" >
                    <span style="color:green" id="cpaserr"></span>
                    <span style="color:red" id="cpasserr"></span>
                </div>
                <div class="form-group">
                    <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" required/>
                    <span class="custom-control-label" >Agree the <a href="#" >terms and policy</a></span>
                    </label>
                    <span style="color:red" id="chck"></span>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-block" >Create new account</button>
                    <div class="text-muted mt-4">Already have account? <a href="login.jsp">Sign in</a></div>
                </div>
                <span id="showMsg"></span>
                </form>
                <%-- 	<%! 
				RegisterAdmin reg=new RegisterAdmin();
			%>
			<%
				boolean result=false;	
				String fname=request.getParameter("fname");
				String lname=request.getParameter("lname");
				String uname=request.getParameter("uname");
				String email=request.getParameter("email");
				String pass=request.getParameter("pass");
				out.println(fname);
				result=reg.getData(fname,lname,uname,email,pass);
			%>
			<%=result==true?"inserted" :"not inserted" %> --%>
            </div>
        </div>
    </div>
</div>



<!-- Start Main project js, jQuery, Bootstrap -->
<script src="../assets/bundles/lib.vendor.bundle.js"></script>

<!-- Start project main js  and page js -->
<script src="../assets/js/core.js"></script>


 <!-- LOAD JQUERY -->
     <script type="text/javascript" src="js/lib/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="js/lib/jquery-ui.min.js"></script>
    <script type="text/javascript" src="js/lib/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/lib/bootstrap-select.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;signed_in=true"></script>
    <script type="text/javascript" src="js/lib/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="js/lib/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="js/lib/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="js/lib/owl.carousel.js"></script>
    <script type="text/javascript" src="js/lib/jquery.appear.min.js"></script>
    <script type="text/javascript" src="js/lib/jquery.countTo.js"></script>
    <script type="text/javascript" src="js/lib/jquery.countdown.min.js"></script>
    <script type="text/javascript" src="js/lib/jquery.parallax-1.1.3.js"></script>
    <script type="text/javascript" src="js/lib/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="js/lib/SmoothScroll.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>




<!-- <script type="text/javascript">
    
    function jquery()
    {
    	var FirstName =$('#fname').val();
    	var LastName =$('#lname').val();
    	var Username =$('#uname').val();
    	var E_Mail =$('#email').val();
    	var Password =$('#pass').val();
    	
    	$.ajax({
    		type:'POST',
    		url:'Register',
    		data:{Fname:FirstName,Lname:LastName,Uname:Username,Email:E_Mail,Pass:Password},
    		success:function(result)
    		{
    			$('#showMsg').html(result);
    			$('#fname').val("");
    			$('#lname').val("");
    			$('#uname').val("");
    			$('#email').val("");
    			$('#pass').val("");
    		}
    	});
    	
    }
    
    
    </script>		 -->

<script type="text/javascript">

var myInput = document.getElementById("pass");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");


// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  /* // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  } */
}

</script>



</body>
</html>