<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	if(request.getParameter("status")!=null && request.getParameter("status").equals("true") && request.getParameter("uid")!=null )
	{	
		session.setAttribute("uniSession","true");
		session.setAttribute("uid",request.getParameter("uid").toString());
		response.sendRedirect("university-manager.jsp");
	}
%>