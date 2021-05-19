<%@page import="in.common.GetConnection"%>
	<%@ include file="inc/stdimport.jsp" %>    
  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <select id="college" name="college">
            <option value="">Select college/university</option>
            <%                     
            int id = Integer.parseInt(request.getParameter("course"));
            
															try {
																
																GetConnection getConObj=new GetConnection();
																Connection con=getConObj.getCon();
																Statement stmt=con.createStatement();

														
																String query = "Select  * from university_courses"+
																		"INNER JOIN course_name ON course_name.pk_id=university_courses.course_id"+
												                        "INNER JOIN university on university_courses.fk_university_id=university.pk_id " ;
																//get Table data
																ResultSet rs = stmt.executeQuery(query);
																while (rs.next()) {
														%>
														<option><%=rs.getString("college_name")%></option>
														<%
															}
															} catch (Exception e) {

															}
														%>
        </select>


</body>
</html>