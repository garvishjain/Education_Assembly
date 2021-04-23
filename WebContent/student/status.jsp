<!DOCTYPE html>
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<%@page import="in.Student.St_Login"%>
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp" %>  
<%@page import="java.util.ArrayList"%>
<%@page import="in.Student.St_Login"%>
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
     <link href="css/date_time_picker.css" rel="stylesheet">
 
 <%
		St_Login st=new St_Login();
String s= st.getUsername();
System.out.print(s);



GetConnection getConObj=new GetConnection();
  Connection con=getConObj.getCon();
 Statement stmt=con.createStatement();
%>
</head>

<body>

<div id="preloader">
	<div class="pulse"></div>
</div><!-- Pulse Preloader -->

    <!--Header File-->	
	 <%@ include file="itc/header.jsp" %>
		<!--Header File-->

	 
	
        
       <div class="status">
       				<div class="imf">
       				<%
       						try{
                                     	String sql="Select * from student_information where username=' " +s+ " '";
       									ResultSet  result	=stmt.executeQuery(sql);
       									while(result.next())
       									{
       						%>
       								<tr>
       										<td><img src="/vdg/hbhd" + <%=result.getString("img_name") %> ></td>
       								</tr>
       								<%
       									}
       						}
       									catch(Exception e){
       										e.printStackTrace();
       									}
       								%>
       				 
       				</div>
       								
       						<table>
       						<%
       						try{
                                     	String sql="Select * from student_information where username=' " +s+ " '";
       									ResultSet  result	=stmt.executeQuery(sql);
       									while(result.next())
       									{
       						%>
       								<tr>
       										<td><%=result.getString("first_name") %></td>
       								</tr>
       								<%
       									}
       						}
       									catch(Exception e){
       										e.printStackTrace();
       									}
       								%>
       						</table>		
       								
	
       							
       
       </div>
        
 	

	 
		<!--Footer File-->	 
	<%@ include file="itc/footer.jsp" %>
		<!--Footer File-->
    

    

    
<!--  
<div id="search">
    <button type="button" class="close">×</button>
    <form>
        <input type="search" value="" placeholder="type keyword(s) here" >
        <button type="submit" class="button">Search</button>
    </form>
</div>
  -->
<!-- Common scripts -->
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/common_scripts_min.js"></script>
<script src="js/functions.js"></script>
<script src="assets/validate.js"></script>


</body>
</html>