<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 
	<title>College, University and campus</title>
      <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
      
       <link href="css/base.css" rel="stylesheet">
      <style type="text/css">
      .tab {
  float: left;
  border: 1px solid #ccc;
  background-color: white;
  width: 30%;
  height: 400px;
  margin-top: 10px;
  margin-left:200px;
  border-color: #283842;
  margin-bottom: 80px;
}

/* Style the buttons inside the tab */
.tab button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 22px 16px;
  width: 100%;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 17px;
  border-color: #283842;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #283842;
}

/* Create an active/current "tab button" class */
.tab button.active {
  background-color: #283842;
  color:white;
}

/* Style the tab content */
.tabcontent {
  float: left;
  padding: 0px 12px;
  border: 1px solid #ccc;
  width: 40%;
  border-left: none;
  height: 400px;
  margin-top: 10px;
  color: white;
  background-color:white;
  border-color: #283842;
}

.foot{
	margin-top: 500px;
}

.myDiv {
  border: 5px ;
  
  text-align: center;
  width: 100%;
  margin: auto;
  margin-top: 70px;}
  
  .tex{color: #283842;
  }
  .doc{text-align: center;
  text-decoration: underline;}
  .a{border: 2px solid gray;height: 80px; border-color: #283842;}
  .b{margin-top: 60px;}
  .c{margin-top: 17px;
  	margin-left: 20px;}
  .fil{margin-left: 20px;}
  
  .d{
  			border: 2px solid gray;height: 80px; 
  			margin-top: 110px;
  }
    /*   .foot{background-color: #223038;
    color: #fff;
    padding: 30px 10px 10px 0;
    margin-top: 400px;} */
      </style>
</head>
<body>
			<div>
						<%@ include file="itc/header.jsp" %>
<div>
						<div class="myDiv">
				   <marquee direction = "left"><h2 class="tex"><strong>Please Upload Your Documents!!!</strong></h2></marquee>
				</div>
				
				
				<div style="margin: auto;" >
				<div class="tab">
				  <button class="tablinks" onclick="openCity(event, 'Domicile')" id="defaultOpen" ><p style="text-align: center;"><strong>Upload Digital <br>Caste/Income/Domicile <br>Certificate</strong></p></button>
				  <button class="tablinks" onclick="openCity(event, 'Aadhar')"><p style="text-align: center;"><strong>Upload  Aadhar Card</strong></p></button>
				  <button class="tablinks" onclick="openCity(event, 'High')"><p style="text-align: center;"><strong>Upload High School Marksheet</strong></p></button>
				   <button class="tablinks" onclick="openCity(event, 'Higher')"><p style="text-align: center;"><strong>Upload Higher Secondary Marksheet</strong></p></button>
				</div>
				
				
				<div id="Domicile" class="tabcontent">
				  <h3 class="doc">Uplaod Cast/Income/Domicile</h3>
				  			
				  			<div class="b">
				  					<div class="a">
				  								<h4 class="c">Upload Cast Certificate &nbsp;:&nbsp;</h4>
				  								<input type="file" name="cast" class="fil">
				  					</div>
				  					<div class="a">
				  								<h4 class="c">Upload Income Certificate &nbsp;:&nbsp;</h4>
				  								<input type="file" name="income" class="fil">
				  					</div>
				  					<div class="a">
				  								<h4 class="c">Upload Domicile Certificate &nbsp;:&nbsp;</h4>
				  								<input type="file" name="domicile" class="fil">
				  					</div>
				  			</div>
				</div>

				<div id="Aadhar" class="tabcontent">
				  <h3 class="doc">Upload Aadhar Card</h3>
				
				  					<div class="d">
				  								<h4 class="c">Upload Aadhar Card &nbsp;:&nbsp;</h4>
				  								<input type="file" name="aadhar" class="fil">
				  					</div>
				  
				</div>

				<div id="High" class="tabcontent">
				 <h3 class="doc">Upload High School Marksheet</h3>
				 <div class="d">
				  								<h4 class="c">Upload  High Class Marksheet&nbsp;:&nbsp;</h4>
				  								<input type="file" name="high" class="fil">
				  					</div>
				</div>
				
				<div id="Higher" class="tabcontent">
				   <h3 class="doc">Upload Higher Secondary Marksheet</h3>
				  				 <div class="d">
				  								<h4 class="c">Upload  Higher Secondary Marksheet&nbsp;:&nbsp;</h4>
				  								<input type="file" name="Higher" class="fil">
				  					</div>
				</div>
				</div>
				
				
				
			<br><br><br><br>
					<script type="text/javascript" src="itc/document.js"></script>
					<div class="foot">
					<%@ include file="itc/footer.jsp" %>
</div>
</body>
</html> 
