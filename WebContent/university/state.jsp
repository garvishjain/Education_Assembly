<%@page import="in.common.GetConnection"%>
	<%@ include file="inc/stdimport.jsp" %>    
      
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        

        <select id="state" name="city">
            <option value="">Select city</option>
            <%                     
            int id = Integer.parseInt(request.getParameter("sts"));
            
			try {
				
				GetConnection getConObj=new GetConnection();
				Connection con=getConObj.getCon();
				Statement stmt=con.createStatement();

		
				String query = "select * from city where fk_state_id=" + id +"";
				//get Table data
				ResultSet rs = stmt.executeQuery(query);
				while (rs.next()) {
		%>
		<option ><%=rs.getString("city_name")%></option>
		<%
			}
			} catch (Exception e) {

			}
		%>
        </select>

    </body>
</html>
