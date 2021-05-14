<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	if(request.getParameter("status")!=null )
	{
		session.setAttribute("sessionValue", true);
		response.sendRedirect("university-manager.jsp");
	}
%>