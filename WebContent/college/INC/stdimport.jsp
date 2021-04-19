<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="javax.naming.Context"%>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>
 <%@ page import="java.sql.SQLException" %> 
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%
	String collegeCategory[]={"All Courses","Only Business Courses","Only Computer Science Courses","Only IT Courses"};
	int i=0;
	
%>