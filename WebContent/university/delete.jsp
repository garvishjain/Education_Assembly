<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@page import="in.common.GetConnection"%>
<%@ include file="inc/stdimport.jsp"%>
<%@ include file="inc/header.jsp"%>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("del"));

		try {
			GetConnection getConObj = new GetConnection();
			Connection con = getConObj.getCon();
			Statement stmt = con.createStatement();
			String query = "update  department set isActive=0 where pk_id='"+id+"'";
			//get Table data
			int res=stmt.executeUpdate(query);
			
				
	%>
	
	<%
		
		} catch (Exception e) {

		}
	%>
</body>
</html>