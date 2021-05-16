 function validate() { 
        var cname = document.getElementById("cname").value; 
        var uniname = document.getElementById("uniname").value; 
        var uname = document.getElementById("uname").value;
        var dname = document.getElementById("dname").value;
        var email = document.getElementById("email").value; 
        var num = document.getElementById("num").value; 
        var fax = document.getElementById("fax").value;
        var year = document.getElementById("year").value; 
        var address = document.getElementById("address").value;
        var sts = document.getElementById("sts").value;
        var city = document.getElementById("state").value;
        var pincode = document.getElementById("pincode").value;
        var Anumber = document.getElementById("Anumber").value;
        var pdf = document.getElementById("pdf").value;
        var pic = document.getElementById("pic").value;
        var pass = document.getElementById("pass").value;
        var cpass = document.getElementById("cpass").value;
        
  var phone = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/; 
 
        
         
  
        if (cname== "") { 
        	document.getElementById("cnameerr").innerHTML="Please enter college name"; 
        	return false; 
        } 
        else
        	{
        	document.getElementById("cnameerr").innerHTML="";
        	}
  
        if (dname== "") { 
        	document.getElementById("dnameerr").innerHTML="Please enter college name"; 
        	return false; 
        } 
        else
        	{
        	document.getElementById("dnameerr").innerHTML="";
        	}
        
        if (fax== "") { 
        	document.getElementById("cfaxerr").innerHTML="Please enter college name"; 
        	return false; 
        } 
        else
        	{
        	document.getElementById("cfaxerr").innerHTML="";
        	}
        
        
        if (uniname== "") { 
        	document.getElementById("uninameerr").innerHTML="Please Enter University  Name";
            return false; 
        } 
        else
    	{
    	document.getElementById("uninameerr").innerHTML="";
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
        
        if (year== "") { 
        	document.getElementById("yearerr").innerHTML="Please Enter establish year"; 
            return false; 
        } 
        else
    	{
    	document.getElementById("yearerr").innerHTML="";
    	}
        
        if (address== "") { 
        	document.getElementById("addresserr").innerHTML="Please Select address"; 
            return false; 
        } 
        else
    	{
    	document.getElementById("addresserr").innerHTML="";
    	}
        
        if (sts== "") { 
        	document.getElementById("stserr").innerHTML="Please Select state"; 
            return false; 
        } 
        else
    	{
    	document.getElementById("stserr").innerHTML="";
    	}
  		
        if (city== "") { 
        	document.getElementById("cityerr").innerHTML="Please Select city"; 
            return false; 
        } 
        else
    	{
    	document.getElementById("cityerr").innerHTML="";
    	}
        
        if (pincode== "") { 
        	document.getElementById("pinerr").innerHTML="Please enter pincode"; 
            return false; 
        } 
        else
    	{
    	document.getElementById("pinerr").innerHTML="";
    	}
        
        if (Anumber== "") { 
        	document.getElementById("Anumbererr").innerHTML="Please Enter affiliation number"; 
            return false; 
        } 
        else
    	{
    	document.getElementById("Anumbererr").innerHTML="";
    	}
        
        if (pdf== "") { 
        	document.getElementById("pdferr").innerHTML="Please Choose certificate"; 
            return false; 
        } 
        else
    	{
    	document.getElementById("pdferr").innerHTML="";
    	}
        
        if (pic== "") { 
        	document.getElementById("picerr").innerHTML="Please Choose certificate"; 
            return false; 
        } 
        else
    	{
    	document.getElementById("picerr").innerHTML="";
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
		document.getElementById("cpaser").innerHTML="Password Match";
		}
        return true; 
    } 
    
    
    
    
    
    
    
    $(document).ready(function() {
        $("#sts").on("change", function() {
            var sts = $("#sts").val();
            if (sts === "")
            {
                $("#error").html("required");
                return false;
            }
            else
            {
                $("#error").html("");
                $.ajax({
                    url: "state.jsp",
                    data: {sts: sts},
                    method: "POST",
                    success: function(data)
                    {
                        $("#state").html(data);
                        }
                });
            }
        });
    });
	
	
	
	/* spassword show   */
	
	function myFunction() {
	  var x = document.getElementById("pass");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}