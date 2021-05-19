package in.College;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.common.GetConnection;

/**
 * Servlet implementation class update
 */
@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;

	private PreparedStatement stmt;

	public void init(ServletConfig config) throws ServletException 
	{
    GetConnection getConObj=new GetConnection();
    con=getConObj.getCon();
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try {
			
			 int id = Integer.parseInt(request.getParameter("uid"));
			 
			 
			 String query = "update student_information set status ='1' where pk_id=?";		
				
				stmt = con.prepareStatement(query);
				
				stmt.setInt(1,id);
				int res = stmt.executeUpdate();
				if (res > 0) {

					request.setAttribute("status", "succesfull update");
					response.sendRedirect("university/College-student-update.jsp");
					out.println("<body><html><script>alert('Data updatet');</script></html></body>");
				} else {

					request.setAttribute("status", "Failed to sign up...! please try again");
					response.sendRedirect("university/College-student-update.jsp");
					out.println("<body><html><script>alert('Something went wrong');</script></html></body>");
				}
			
		}catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
				}
		
		
		
	}

}
