<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 
	<title>College, University and campus</title>
      <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
      
      <script src="itc/document.js"></script>
       <link href="css/base.css" rel="stylesheet">
       <script src="./document.js"></script>
        <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style type="text/css">
  
    label {
	font-size: 20px;
	 margin-top: 25px;
	 margin-left: 140px;
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  border: 3px solid #223038;

  
}

td {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
  height: 90px;
 
}
input[type="file"]
{
		float: right;
		margin-top: 25px;
		margin-right: 100px;
}
  .mid_a{margin-left: 190px;}
 .mid_b{margin-left: 165px;}
 .mid_c{margin-left: 152px;}
 .mid_d{margin-left: 215px;}
 .mid_e{margin-left: 125px;}  
 .mid_f{margin-left: 80px;}
 

.butto {
 /*  background-color: #1cafec; 
  border: none;
  color: white;
 width:50%;
 height:30px;
  text-align: center;
  font-size: 20px;
  cursor: pointer;
  margin-right: 250px;
  font-family: "proxima_novasemibold", Arial, Helvetica, sans-serif;
   */
   width:50%;
   font-size: 20px;
   height:40px;
   /* padding: 10px 30px; */
    display: inline-block;
    float: right;
    
    background-color: #1cafec;
    color: #fff;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    font-family: "proxima_novasemibold", Arial, Helvetica, sans-serif;
    cursor: pointer;
    border: 0;
    font-size: 20px;
    outline: none;
    margin-bottom: 5px;
    -webkit-transition: all 0.2s ease;
    transition: all 0.2s ease;
        margin-right: 290px;
        margin-top: 10px;
}

.butto:hover {
	background-color: #283842;
}

.container{ 
    margin-top: -60px;}
    </style>
    
   

<!-- <script type="text/javascript">
 function validateImage() {
    var formData = new FormData();
    var file = document.getElementById("img").files[0];
    formData.append("Filedata", file);
    var t = file.type.split('/').pop().toLowerCase();
    if (t != "jpeg" && t != "jpg" && t != "png" && t != "bmp" && t != "gif") {
        alert('Please select a valid image file');
        document.getElementById("img").value = '';
        return false;
    }
  
    if(file.size > 204800) {
        alert('Max Upload size is 200kb only');
        document.getElementById("img").value = '';
        return false;
    }
   /*  else {
        //Image preview
        if (file.files && file.file[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('img').innerHTML = '<img src="'+e.target.result+'" width="150px" height="200px"/>';
            };
            reader.readAsDataURL(file.files[0]);
        } */
 
    return true;
} 
</script>
 -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/
jquery.min.js"></script>
<script type="text/javascript">
 
    $("#img_1").keyup(function(event) {
        validateInputs();
    });
 
    $("#img_2").keyup(function(event) {
        validateInputs();
    });
 
    $("#img_3").keyup(function(event) {
        validateInputs();
    });
 
    $("#img_4").keyup(function(event) {
        validateInputs();
    });
 
    function validateInputs(){
        var disableButton = false;
 
        var val1 = $("#img_1").val();
        var val2 = $("#img_2").val();
        var val3 = $("#img_3").val();
        var val4 = $("#img_4").val();
 
        if(img_1.length == 0 || img_2.length == 0 || img_3.length == 0 || img_4.length == 0)
            disableButton = true;
 
        $('#butto').attr('disabled', disableButton);
    }
</script>
</head>
<body>
			<div>
						<%@ include file="itc/header.jsp" %>
<div>
						<div class="myDiv">
				 </div>
				

		<div class="container_gray_bg">
		
		<!-- Position -->
		<div class="container margin_60">
		
			<div class="row">

				<div class="col-md-9">
				
					<div class="box_style_1" style="margin-top: 70px;">
					  <marquee direction = "left"><h2 class="tex"><strong>Please Upload Your Documents!!!</strong></h2></marquee>
				
							<form action="../Documents" method="post" enctype="Multipart/form-data">
									<table>
										<tr>
											<td>
												<div >
													<label>Upload Cast Certificate</label>
													<label class="mid_a">:</label>
													 <input type="file" name="cast" id="img"  class="input" onchange="validateImage()" required="required">
												</div>
												<br>
											</td>
										</tr>

										<tr>
											<td>
												<div>
													<label>Upload Income Certificate</label> 
													<label class="mid_b">:</label>
													<input type="file" name="income"  id="img_1" onchange="validateImage_1()" required="required">
												</div> <br>


											</td>
										</tr>

										<tr>
											<td>
												<div>
													<label>Upload Domicile Certificate</label>
													<label class="mid_c">:</label> <input
														type="file" name="domicile" id="img_2" onchange="validateImage_2()" required="required">
												</div>
												<br>

											</td>
										</tr>
									<tr>
										<td>
									<div>
									<label>Upload Aadhar Card</label>
									<label class="mid_d">:</label>
									<input type="file" name="aadhar" id="img_3" onchange="validateImage_3()" required="required">
									</div><br>
									</td>
									</tr>
										<tr>
											<td>
												<div>
													<label>Upload High School Certificate</label>
													<label class="mid_e">:</label>
													<input type="file" name="high" id="img_4" onchange="validateImage_4()" required="required" >
													</div>
																<br>
									</td>
									</tr>
									<tr>
										<td>
									<div>
									<label>Upload Higher Seconday Certificate</label>
									<label class="mid_f">:</label>
									<input type="file" name="higher"id="img_5"  onchange="validateImage_5()" required="required">
									</div><br>
									</td>
									</tr>
									<tr ><!-- style="background-color: gray;" -->
									<td>
									<p >
										
										<button type="reset"  class="butto" >Clear</button>
											<button type="submit" class="butto" id="butto">Register</button>
										</p>
											</td>
											</tr>
					</table>
											<p >
										
										</p>
							</form>
						
						
						
					</div>
				</div>
				<br>
			
			</div>
		</div>
	</div>




			<div >
					<%@ include file="itc/footer.jsp" %>
</div>
</body>
</html> 
